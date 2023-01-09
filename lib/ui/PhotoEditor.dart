import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imgly_sdk/imgly_sdk.dart';
import 'package:photo_editor_sdk/photo_editor_sdk.dart';
import 'package:image_picker/image_picker.dart';

import 'package:gallery_saver/gallery_saver.dart';


class Photo_Edit extends StatelessWidget {
  const Photo_Edit({Key ? key, required this.path}) : super(key: key);
  final String path;
  @override
  void invoke() async {
    try {
      // Open the photo editor and handle the export as well as any occurring errors.
      final imagePicker = ImagePicker();
      final image = await Image.file(
          File(path));
      final imagePath = path;
      if (imagePath == null) return;

      // Open the photo editor and handle the export as well as any occurring errors.
      final result = await PESDK.openEditor(image: imagePath);
      if (result != null) {
        await GallerySaver.saveImage(Uri.parse(result.image).path);
        // The user exported a new photo successfully and the newly generated photo is located at `result.image`.
        print(result.image);

      } else {
        // The user exported a new photo successfully and the newly generated photo is located at `result.image`.
        return;
      }
    } catch (error) {
      // The user exported a new photo successfully and the newly generated photo is located at `result.image`.
      print(error);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();}
}