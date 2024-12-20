import 'package:departure/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late JsonProvider jsonProviderW;
  late JsonProvider jsonProviderR;

  @override
  void initState() {
    context.read<JsonProvider>().getJsonCartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    jsonProviderW = context.watch<JsonProvider>();
    jsonProviderR = context.read<JsonProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart page"),
      ),
      body: ListView.builder(
        itemCount: jsonProviderW.jsonCartData.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            "${jsonProviderW.jsonCartData[index].id}",
          ),
        ),
      ),
    );
  }
}
