import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class CameraGallery extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {
  _CameraGallery createState() => _CameraGallery();
}

class _CameraGallery extends State<CameraGallery> {
  File image;

  Future getImage(bool isCamera) async {
    File image;
    if (isCamera) {
      image = await ImagePicker.pickVideo(source: ImageSource.camera);
    } else {
      image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 80)),
          IconButton(
            icon: Icon(
              Icons.insert_drive_file,
              color: Colors.black,
            ),
            onPressed: () {
              getImage(false);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
            onPressed: () {
              getImage(true);
            },
          ),
          image == null
              ? Container()
              : Image.file(
                  image,
                  height: 300.0,
                  width: 300.0,
                )
        ],
      )),
    );
  }
}
