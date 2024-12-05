import 'package:departure/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  late JsonProvider josnProviderW;
  late JsonProvider josnProviderR;

  void initState() {
    context.read<JsonProvider>().getJsonPhotoData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    josnProviderW = context.watch<JsonProvider>();
    josnProviderR = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo'),
      ),
      body: ListView.builder(
        itemCount: josnProviderW.jsonPhotoData.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            foregroundImage: NetworkImage(
              "${josnProviderW.jsonPhotoData[index].thumbnailUrl}",
            ),
          ),
          title: Text(
            "${josnProviderW.jsonPhotoData[index].title}",
          ),
        ),
      ),
    );
  }
}
