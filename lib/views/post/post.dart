import 'package:departure/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  late JsonProvider josnProviderW;
  late JsonProvider josnProviderR;

  void initState() {
    context.read<JsonProvider>().getJsonPostData();
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
        itemCount: josnProviderW.jsonPostData.length,
        itemBuilder: (context, index) => ListTile(
          leading: Text("${josnProviderW.jsonPostData[index].userId}"),
          title: Text(
            "${josnProviderW.jsonPostData[index].title}",
          ),
          subtitle: Text(
            " ID : ${josnProviderW.jsonPostData[index].id}",
          ),
        ),
      ),
    );
  }
}
