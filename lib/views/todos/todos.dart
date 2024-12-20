import 'package:departure/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({super.key});

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  late JsonProvider josnProviderW;
  late JsonProvider josnProviderR;

  @override
  void initState() {
    context.read<JsonProvider>().getJsonTodosData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    josnProviderW = context.watch<JsonProvider>();
    josnProviderR = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos"),
      ),
      body: ListView.builder(
        itemCount: josnProviderW.jsonTodosData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "${josnProviderW.jsonTodosData[index].title}",
            ),
            leading: Text("${josnProviderW.jsonTodosData[index].id}"),
            subtitle: Text("${josnProviderW.jsonTodosData[index].completed}"),
          );
        },
      ),
    );
  }
}
