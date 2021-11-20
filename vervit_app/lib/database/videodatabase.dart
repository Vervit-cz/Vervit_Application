import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:vervit_app/database/video.dart';


class Database
{

  static List <VideoObject> videoObjectList;

  static void createDatabase () async
  {

    String originalText = await rootBundle.loadString('assets/videodatabase.txt');


    LineSplitter ls = new LineSplitter();
    List <String> lines = ls.convert(originalText);


    int videoCounter = 0;
    int videoObjectCounter = 0;
    String videoName;
    String videoID;
    String description;
    String tags;
    List<String> keywords = <String> [];
    List<String> extraKeywords = <String> [];

    List <VideoObject> videos = <VideoObject> [];


    while (videoCounter < 500)
    {

      if (lines[videoCounter].substring(0,5) == "Video")
      {
        if (lines[videoCounter+1].substring(0,5) != "Video")
        {
          videoName = lines[videoCounter+1];
          description = lines[videoCounter+2];
          videoID = lines[videoCounter+3].substring(17);
          tags = lines[videoCounter+4];
          keywords = determineKeywords(videoName, description);
          extraKeywords = determineExtraKeywords(tags);
          videos.add(new VideoObject(true,videoObjectCounter+1,videoName,videoID,description,keywords, extraKeywords));
          videoObjectCounter += 1;
          videoCounter += 4;

        }

        else
        {
          videoName = null;
          description = null;
          videoID = null;
          keywords = null;
          videos.add(new VideoObject(false,videoObjectCounter+1,videoName,videoID,description,keywords, extraKeywords));
          videoObjectCounter += 1;
          //print("trh");
        }
      }
      videoCounter ++;
    }


    videoObjectList = videos;

    /*
    videoObjectList.forEach((element)
      {
        print(element.number);
        print(element.name);
        print(element.videoID);
      });
    */
    

  }

  static List<String> determineKeywords (String name, String description)
  {
    List<String> keywords;
    keywords = (description.toLowerCase().replaceAll(',','').replaceAll('.','').split(' '));
    keywords.addAll(name.toLowerCase().replaceAll(',','').replaceAll('.','').split(' '));
    return keywords;
  }

  static List<String> determineExtraKeywords(String extraKeywords)
  {
    List<String> keywords;
    keywords = (extraKeywords.toLowerCase().replaceAll(',','').replaceAll('.','').split(' '));
    return keywords;
  }


  static List<List<int>> searchDatabase(String searchTerm, bool useAllKeywords)
  {
    List<String> searchTerms;
    searchTerms = (searchTerm.toLowerCase().replaceAll(',','').replaceAll('.','').split(' '));
    List<List<int>> nOfMatches = <List<int>> [];
    int counter;
    int videoIndex = 0;
    videoObjectList.forEach((element)
    {
      counter = 0;
      if (element.isVideo)
      {
        element.extraKeywords.forEach((x) {
          searchTerms.forEach((y) {
            if (x == y) {
              counter ++;
            }
          });
        });
        if (useAllKeywords) {
          element.keywords.forEach((x) {
            searchTerms.forEach((y) {
              if (x == y) {
                counter ++;
              }
            });
          });
        }
      }
      nOfMatches.add([videoIndex,counter]);
      videoIndex ++;
    });
    return nOfMatches;
  }


  static void selectionSort(List<List> list) {
    if (list == null || list.length == 0) return;
    int n = list.length;
    int i, steps;
    for (steps = 0; steps < n; steps++) {
      for (i = steps + 1; i < n; i++) {
        if(list[steps][1] < list[i][1] ) {
          swap(list, steps, i);
        }
      }
    }
  }

  static void swap(List<List> list, int steps, int i) {
    List<int> temp = list[steps];
    list[steps] = list[i];
    list[i] = temp;
  }

  static List <VideoObject> orderedSearchList(String searchTerm, int matchedTerms, bool useAllKeywords)
  {
    //print(searchTerm);
    List <VideoObject> orderedVideos = <VideoObject> [];
    List<List<int>> nOfMatches = <List<int>> [];
    nOfMatches = searchDatabase(searchTerm, useAllKeywords);
    selectionSort(nOfMatches);
    nOfMatches.forEach((element) {
      if ((videoObjectList[element[0]].isVideo)&&(element[1]>matchedTerms))
      {
        orderedVideos.add(videoObjectList[element[0]]);
      }
    });

    return orderedVideos;
  }

}