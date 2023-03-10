import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_project/model/filemodel.dart';
import 'package:photofilters/filters/filters.dart';
import 'package:photofilters/filters/preset_filters.dart';
 import 'package:image/image.dart' as imageLib;
import 'package:photofilters/widgets/photo_filter.dart';


class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
     File f1 = File("");
     //String? fileName;
    List<Filter> filters = presetFiltersList;
     File? f2;

    Future getImage(context) async {
       ImagePicker ipick = ImagePicker();
       XFile? f2 = await ipick.pickImage(source: ImageSource.gallery);
         f1 = File(f2!.path);
        var image = imageLib.decodeImage(await f1.readAsBytes(),);
       image = imageLib.copyResize(image!, width: 600);
       Map imagefile = await Navigator.push(
        context,
      new MaterialPageRoute(
        builder: (context) => new PhotoFilterSelector(
          title: Text("Photo Filter Example"),
          image: image!,
          filters: presetFiltersList,
          filename: "",
          loader: Center(child: CircularProgressIndicator()),
          fit: BoxFit.contain,
        ),
      ),
    );

    if (imagefile != null && imagefile.containsKey('image_filtered')) {
      setState(() {
        f2 = imagefile['image_filtered'];
      });
      print(f2!.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white12,
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              ImagePicker ipick = ImagePicker();
              XFile? f2 = await ipick.pickImage(source: ImageSource.gallery);
              setState(() {
                f1 = File(f2!.path);
              });
                 Navigator.pushNamed(context,'sec',arguments:file(imaag: f1));
            },
            child:Text("image"),
          ),
        ),
      ),
    );
  }
}
