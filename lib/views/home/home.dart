import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'user');
            },
            icon: const Text("User"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'todos');
            },
            icon: const Text("Todos"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'photo');
            },
            icon: const Text("Photo"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'albums');
            },
            icon: const Text("albums"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'comments');
            },
            icon: const Text("Comments"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'posts');
            },
            icon: const Text("Post"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'cart');
            },
            icon: const Text("cart"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'product');
            },
            icon: const Text("product"),
          ),
        ],
      ),
    );
  }
}
