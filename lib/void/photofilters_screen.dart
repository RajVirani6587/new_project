
import 'package:flutter/material.dart';

import '../model/filemodel.dart';

class Photofilters_Screen extends StatefulWidget {
  const Photofilters_Screen({Key? key}) : super(key: key);

  @override
  State<Photofilters_Screen> createState() => _Photofilters_ScreenState();
}

class _Photofilters_ScreenState extends State<Photofilters_Screen> {
  @override
  Widget build(BuildContext context) {
    file data = ModalRoute.of(context)!.settings.arguments as file;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white12,
          leading: IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, 'sec');
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
                 child: Image.file(data.imaag!,fit: BoxFit.cover,),
              ),
            ),
            Container(height:MediaQuery.of(context).size.width*0.05,),
            Container(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*1,
              color: Colors.white,
            ),
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
    Navigator.pushReplacementNamed(context, 'sec');
  }
}
