import 'package:departure/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  late JsonProvider jsonProviderW;
  late JsonProvider jsonProviderR;

  void initState() {
    context.read<JsonProvider>().getJsonCommentsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    jsonProviderW = context.watch<JsonProvider>();
    jsonProviderR = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
      ),
      body: ListView.builder(
        itemCount: jsonProviderW.jsonCommentsData.length,
        itemBuilder: (context, index) => ListTile(
          leading: Text("${jsonProviderW.jsonCommentsData[index].postId}"),
          title: Text(
            "${jsonProviderW.jsonCommentsData[index].name}",
          ),
          subtitle: Text("${jsonProviderW.jsonCommentsData[index].email}"),
        ),
      ),
    );
  }
}
