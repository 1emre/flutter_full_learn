

import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

import 'custom_exception.dart';


abstract class IFileDownload{
  bool? downloadItem(FileItem? fileItem); 

  void toShare(String path) async {
    await launchUrl(Uri.parse(path));
  }

}

class FileDownload implements IFileDownload //imlement ettıgın classa farklı ozellık kazandıramassın with ShareMixin
{
  @override
  bool? downloadItem(FileItem? fileItem ){
      if(fileItem == null) throw FileDownloadException();
   print('a');


   return true;
  }
  
  @override
  void toShare(String path) {
    // TODO: implement toShare
  }
}

class SmsDownload extends IFileDownload with ShareMixin{
  @override
  bool? downloadItem(FileItem? fileItem ){
      if(fileItem == null) throw FileDownloadException();
   print('a');


   return true;
  }
  
  @override
  void toShare(String path) {
    // TODO: implement toShare
  }
}



class FileItem {
  final String name;
  final File file; 
  FileItem({
    required this.name,
    required this.file,
  });
}

class EmreDownload extends IFileDownload with ShareMixin{
  @override
  bool? downloadItem(FileItem? fileItem) {
    // TODO: implement downloadItem
    throw UnimplementedError();
  }

}

mixin ShareMixin on IFileDownload{
  void toShowFile(){

  }
}