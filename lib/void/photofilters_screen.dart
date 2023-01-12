import 'dart:io';

import 'package:flutter/material.dart';
import 'package:new_project/void/secode_screen.dart';

class Photofilters_Screen extends StatefulWidget {
  File f1;

  Photofilters_Screen(File this.f1);

  @override
  State<Photofilters_Screen> createState() => _Photofilters_ScreenState();
}

class _Photofilters_ScreenState extends State<Photofilters_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white12,
          leading: IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return Secode_screen(widget.f1);}));
          },
              icon:Icon(Icons.arrow_back)),
          title: Text("Photo Filter Example"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.done))
          ],
        ),
        body: Column(
          children: [
            Container(height: MediaQuery.of(context).size.height*0.04,),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height*0.73,
              width: MediaQuery.of(context).size.width*0.7,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.file(widget.f1,fit: BoxFit.cover,),
              ),
            ),
            Container(height:MediaQuery.of(context).size.width*0.05,),
          ],
        ),
      ),
    );
  }
  Future<bool> dialog() async {
    back();
    return await false;
  }

  void back(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return Secode_screen(widget.f1);}));
  }
}
