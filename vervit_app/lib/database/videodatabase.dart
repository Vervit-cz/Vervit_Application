import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:vervit_app/database/video.dart';
import 'package:flutter/material.dart';


class Database
{


  Future<List> createDatabase () async
  {
    String originalText = await rootBundle.loadString('assets/videodatabase.txt');

    LineSplitter ls = new LineSplitter();
    List <String> lines = ls.convert(originalText);


    int videoCounter = 0;
    int videoObjectCounter = 0;
    String videoName;
    String videoID;
    String description;
    List<String> keywords = <String> [];

    List <VideoObject> videos = <VideoObject> [];

    while (videoCounter < 200)
      {
        if (lines[videoCounter].substring(0,5) == "Video")
          {
            if (lines[videoCounter+1].substring(0,5) != "Video")
              {
                videoName = lines[videoCounter+1];
                description = lines[videoCounter+2];
                videoID = lines[videoCounter+3].substring(17);
                keywords = determineKeywords(videoName, description);
                videos.add(new VideoObject(true,videoObjectCounter+1,videoName,videoID,description,keywords));
                videoObjectCounter += 1;
                videoCounter += 5;
              }
          }
          else
            {
              videoName = null;
              description = null;
              videoID = null;
              keywords = null;
              videos.add(new VideoObject(false,videoObjectCounter+1,videoName,videoID,description,keywords));
              videoObjectCounter += 1;
              videoCounter ++;
            }
      }
    videos.forEach((element)
      {
        print(element.number);
        print(element.name);
        print(element.videoID);
      });
    return videos;
  }

  List<String> determineKeywords (String name, String description)
  {
    List<String> keywords;
    keywords = (description.toLowerCase().replaceAll(',','').replaceAll('.','').split(' '));
    keywords.addAll(name.toLowerCase().split(' '));
    return keywords;
  }

  List<List<int>> searchDatabase (String searchTerm, List<VideoObject> videos)
  {
    List<String> searchTerms;
    searchTerms = (searchTerm.toLowerCase().replaceAll(',','').replaceAll('.','').split(' '));
    List<List<int>> nOfMatches = <List<int>> [];
    int counter;
    int videoIndex = 0;
    videos.forEach((element)
    {
      counter = 0;
      videoIndex ++;
      if (element.isVideo)
      {
        element.keywords.forEach((x) {
          searchTerms.forEach((y) {
            if (x == y) {
              counter ++;
            }
          });
        });
      }
      nOfMatches.add([videoIndex,counter]);
    });
    return nOfMatches;
  }

}