class VideoObject
{
  bool isVideo;
  int number;
  String name;
  String videoID;
  String description;
  List<String> keywords;
  List<String> extraKeywords;


  VideoObject (bool isVideo, int number,String name,String videoID, String description, List<String> keywords, List<String> extraKeywords)
  {
    this.isVideo = isVideo;
    this.number = number;
    this.name = name;
    this.videoID = videoID;
    this.description = description;
    this.keywords = keywords;
    this.extraKeywords = extraKeywords;
  }

}