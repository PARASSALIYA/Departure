import 'dart:convert';
import 'dart:developer';
import 'package:departure/model/product.dart';
import 'package:http/http.dart' as http;
import 'package:departure/model/albumsmodel.dart';
import 'package:departure/model/cartmodel.dart';
import 'package:departure/model/commentmodel.dart';
import 'package:departure/model/photomodel.dart';
import 'package:departure/model/postmodel.dart';
import 'package:departure/model/todomodel.dart';
import 'package:departure/model/usermodel.dart';
import 'package:flutter/services.dart';

class ShrHelper {
  Future<List<UserModel>> jsonUserData() async {
    List<UserModel> userList = [];
    String jsonData = await rootBundle.loadString('assets/json/user.json');
    List jsonList = jsonDecode(jsonData);

    userList = jsonList.map((e) => UserModel.mapToModel(e)).toList();
    return userList;
  }

  Future<List<TodoModel>> jsonTodosData() async {
    String jsontodosData =
        await rootBundle.loadString('assets/json/todos.json');
    List todos = jsonDecode(jsontodosData);

    List<TodoModel> todoList =
        todos.map((e) => TodoModel.mapToModel(e)).toList();
    return todoList;
  }

  Future<List<PhotoModel>> jsonPhotoData() async {
    String jsonPhotoData =
        await rootBundle.loadString('assets/json/photo.json');
    List todos = jsonDecode(jsonPhotoData);
    List<PhotoModel> photoList = todos
        .map(
          (e) => PhotoModel.mapToModel(e),
        )
        .toList();
    return photoList;
  }

  Future<List<AlbumsModel>> jsonAlbumsData() async {
    String jsonAlbumsData =
        await rootBundle.loadString('assets/json/albums.json');
    List todos = jsonDecode(jsonAlbumsData);
    List<AlbumsModel> alumList =
        todos.map((e) => AlbumsModel.mapToModel(e)).toList();
    return alumList;
  }

  Future<List<CommentModel>> jsonCommentsData() async {
    String jsonCommentsData =
        await rootBundle.loadString('assets/json/comments.json');
    List todos = jsonDecode(jsonCommentsData);
    List<CommentModel> commentList = todos
        .map(
          (e) => CommentModel.commentModel(e),
        )
        .toList();
    return commentList;
  }

  Future<List<PostModel>> jsonPostData() async {
    String jsonPostData = await rootBundle.loadString('assets/json/post.json');
    List todos = jsonDecode(jsonPostData);

    List<PostModel> postList = todos
        .map(
          (e) => PostModel.mapToModel(e),
        )
        .toList();
    return postList;
  }

  Future<List<CartModel>> jsonCartData() async {
    String jsonCartData = await rootBundle.loadString('assets/json/cart.json');
    List todos = jsonDecode(jsonCartData);

    List<CartModel> cartModel = todos
        .map(
          (e) => CartModel.mapToModel(e),
        )
        .toList();
    return cartModel;
  }

  Future<List<Product2Model>?> apiProduct() async {
    http.Response response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );
    if (response.statusCode == 200) {
      String jsonString = response.body;
      List jsonList = jsonDecode(jsonString);

      List<Product2Model> productList = jsonList
          .map(
            (e) => Product2Model.mapToModel(e),
          )
          .toList();

      return productList;
    }
    log("======================= ${response.body} ==================");
  }
}
