
import 'package:flutter/material.dart';
import 'package:new_project/void/home_screen.dart';
import 'package:new_project/void/photofilters_screen.dart';
import 'package:new_project/void/secode_screen.dart';

void main(){
  runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     routes: {
       '/':(context)=>Home_Screen(),
       // 'sec':(context)=>Secode_screen(),
       //'image':(context)=>Photofilters_Screen(),
     },
   ),
  );
}
// import 'dart:async';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path/path.dart';
// import 'package:photofilters/photofilters.dart';
// import 'package:image/image.dart' as imageLib;
//
// void main() => runApp(
//     MaterialApp(debugShowCheckedModeBanner: false,
//         home: MyApp()));
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   String? fileName;
//   List<Filter> filters = presetFiltersList;
//   File? imageFile;
//
//   Future getImage(context) async {
//     ImagePicker img = ImagePicker();
//     XFile? imageFile = await img.pickImage(source: ImageSource.gallery);
//     fileName = basename(imageFile!.path);
//     var image = imageLib.decodeImage(await imageFile.readAsBytes(),);
//     image = imageLib.copyResize(image!, width: 600);
//     Map imagefile = await Navigator.push(
//       context,
//       new MaterialPageRoute(
//         builder: (context) => new PhotoFilterSelector(
//           title: Text("Photo Filter Example"),
//           image: image!,
//           filters: presetFiltersList,
//           filename: fileName!,
//           loader: Center(child: CircularProgressIndicator()),
//           fit: BoxFit.contain,
//         ),
//       ),
//     );
//     if (imagefile != null && imagefile.containsKey('image_filtered')) {
//       setState(() {
//         imageFile = imagefile['image_filtered'];
//       });
//       print(imageFile!.path);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Photo Filter Example'),
//       ),
//       body: Center(
//         child: new Container(
//           child: imageFile == null ? Center(child: new Text('No image selected.'),): Image.file(imageFile!),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => getImage(context),
//         tooltip: 'Pick Image',
//         child: Icon(Icons.add_a_photo),
//       ),
//     );
//   }
// }