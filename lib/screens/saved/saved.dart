import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';

class Saved extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Future<List<String>> getThumbnails() async {
      final directory = await getExternalStorageDirectory();
      debugPrint(directory.path);
      return <String>[];
    }
    getThumbnails();


    return GridView.count(
        crossAxisCount: 2,
        children: <Widget>[],
    );
  }

}
