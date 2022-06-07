import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/opp_learn.dart';

class OOPLearnView extends StatefulWidget {
  OOPLearnView({Key? key}) : super(key: key);

  @override
  State<OOPLearnView> createState() => _OOPLearnViewState();
}

class _OOPLearnViewState extends State<OOPLearnView> {

  FileDownload? download;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    download = FileDownload();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),floatingActionButton: FloatingActionButton(onPressed: () {
     download?.downloadItem(null); 
    },),);  
  }
}