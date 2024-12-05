import 'package:departure/main.dart';
import 'package:departure/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    context.read<JsonProvider>().getJsonProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 7,
        ),
        itemCount: context.watch<JsonProvider>().jsonProductData.length,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 100,
                alignment: Alignment.center,
                child: Image(
                  image: NetworkImage(context
                      .watch<JsonProvider>()
                      .jsonProductData[index]
                      .image!),
                ),
              ),
              Text(
                "${context.watch<JsonProvider>().jsonProductData[index].title}",
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
              Text(
                "Price :\$ ${context.watch<JsonProvider>().jsonProductData[index].price}",
                style: const TextStyle(
                  color: Colors.red,
                ),
                maxLines: 2,
              ),
              Text(
                "category : ${context.watch<JsonProvider>().jsonProductData[index].category}",
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
