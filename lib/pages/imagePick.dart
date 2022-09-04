import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatefulWidget {
  ImagePickerPage({Key? key}) : super(key: key);

  _ImagePickerPageState createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  //记录选择的照片
  final ImagePicker _picker = ImagePicker();
  late File _image = File('');
  late String image_path = _image.path;
  //拍照
  Future _getImageFromCamera() async {
    var image =
        await _picker.pickImage(source: ImageSource.camera, maxWidth: 400);
    setState(() {
      _image = image as File;
      image_path = _image.path;
    });
  }

  //相册选择
  Future _getImageFromGallery() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image as File;
      image_path = _image.path;
    });
  }

//测试ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("选择图片并上传")),
      body: Container(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                _getImageFromCamera();
              },
              child: Text("照相机"),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () {
                _getImageFromGallery();
              },
              child: Text("相册"),
            ),
            SizedBox(height: 10),
            /**
             * 展示选择的图片,通过image.file展示
             */
            _image == null
                ? Text("no image selected")
                : Image.file(
                    _image,
                    fit: BoxFit.cover,
                  ),
          ],
        ),
      ),
    );
  }
}
