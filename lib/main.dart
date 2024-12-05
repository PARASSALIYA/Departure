import 'package:departure/provider/provider.dart';
import 'package:departure/views/albums/albums.dart';
import 'package:departure/views/comments/comments.dart';
import 'package:departure/views/home/home.dart';
import 'package:departure/views/photo/photo.dart';
import 'package:departure/views/post/post.dart';
import 'package:departure/views/product/views/product.dart';
import 'package:departure/views/todos/todos.dart';
import 'package:departure/views/user/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/cart/views/cart.dart';

void main() {
  runApp(
    const Departure(),
  );
}

class Departure extends StatelessWidget {
  const Departure({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: JsonProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const HomePage(),
          'user': (context) => const UserPage(),
          'todos': (context) => const TodosPage(),
          'photo': (context) => const PhotoPage(),
          'albums': (context) => const AlbumsPage(),
          'comments': (context) => const CommentsPage(),
          'posts': (context) => const PostPage(),
          'cart': (context) => const CartPage(),
          'product': (context) => const ProductPage(),
        },
      ),
    );
  }
}
