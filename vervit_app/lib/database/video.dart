class VideoObject
{
  bool isVideo;
  int number;
  String name;
  String videoID;
  String description;
  List<String> keywords;


  VideoObject (bool isVideo, int number,String name,String videoID, String description, List<String> keywords)
  {
    this.isVideo = isVideo;
    this.number = number;
    this.name = name;
    this.videoID = videoID;
    this.description = description;
    this.keywords = keywords;
  }

}