import 'package:departure/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late JsonProvider jsonProviderW;
  late JsonProvider jsonProviderR;

  @override
  void initState() {
    context.read<JsonProvider>().getJsonUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    jsonProviderW = context.watch<JsonProvider>();
    jsonProviderR = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("User"),
      ),
      body: ListView.builder(
        itemCount: jsonProviderW.jsonUserData.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "${jsonProviderW.jsonUserData[index].address!.city}",
                  ),
                  leading: Text(
                    "${jsonProviderW.jsonUserData[index].id}",
                  ),
                  subtitle:
                      Text("${jsonProviderW.jsonUserData[index].username}"),
                  trailing: Text("${jsonProviderW.jsonUserData[index].phone}"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
