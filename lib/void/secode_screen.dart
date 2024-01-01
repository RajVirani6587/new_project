import 'package:flutter/material.dart';
import 'package:new_project/model/filemodel.dart';
import 'package:new_project/void/photofilters_screen.dart';

class Secode_screen extends StatefulWidget {
  const Secode_screen({Key? key}) : super(key: key);
  @override
  State<Secode_screen> createState() => _Secode_screenState();
}

class _Secode_screenState extends State<Secode_screen> {
  @override
  Widget build(BuildContext context) {
    file data = ModalRoute.of(context)!.settings.arguments as file;
    return  WillPopScope(
      onWillPop: dialog,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pushReplacementNamed(context,'/');},
                icon:Icon(Icons.arrow_back),),
            backgroundColor: Colors.white12,
            title: Text("Home Screen"),
            centerTitle: true,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.delete), label: Text("Delete"),style: ElevatedButton.styleFrom(primary: Colors.white12)),
                  CircleAvatar(radius: 30,backgroundColor: Colors.white12,child: IconButton(onPressed: (){}, icon: Icon(Icons.image_outlined,color: Colors.white,))),
                  ElevatedButton.icon(onPressed: (){
                    Navigator.pushReplacementNamed(context, 'image',arguments:data);
                  }, icon: Icon(Icons.arrow_forward), label: Text("Next"),style: ElevatedButton.styleFrom(primary: Colors.white12)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<bool> dialog() async {
    back();
    return await false;
  }

  void back(){
    Navigator.pushReplacementNamed(context,'/');
  }
}
