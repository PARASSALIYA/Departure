import 'package:departure/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlbumsPage extends StatefulWidget {
  const AlbumsPage({super.key});

  @override
  State<AlbumsPage> createState() => _AlbumsPageState();
}

class _AlbumsPageState extends State<AlbumsPage> {
  late JsonProvider josnProviderW;
  late JsonProvider josnProviderR;

  void initState() {
    context.read<JsonProvider>().getJsonAlbumData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    josnProviderW = context.watch<JsonProvider>();
    josnProviderR = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums'),
      ),
      body: ListView.builder(
        itemCount: josnProviderW.jsonAlbumsData.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            foregroundImage: NetworkImage(
              "${josnProviderW.jsonAlbumsData[index].id}",
            ),
          ),
          title: Text(
            "${josnProviderW.jsonAlbumsData[index].title}",
          ),
          subtitle:
              Text("User Id: ${josnProviderW.jsonAlbumsData[index].userId}"),
        ),
      ),
    );
  }
}
