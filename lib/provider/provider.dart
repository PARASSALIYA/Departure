import 'package:departure/helper/helper.dart';
import 'package:departure/model/albumsmodel.dart';
import 'package:departure/model/cartmodel.dart';
import 'package:departure/model/commentmodel.dart';
import 'package:departure/model/photomodel.dart';
import 'package:departure/model/postmodel.dart';
import 'package:departure/model/product.dart';
import 'package:departure/model/todomodel.dart';
import 'package:departure/model/usermodel.dart';
import 'package:flutter/material.dart';

class JsonProvider with ChangeNotifier {
  List<UserModel> jsonUserData = [];
  List<TodoModel> jsonTodosData = [];
  List<PhotoModel> jsonPhotoData = [];
  List<AlbumsModel> jsonAlbumsData = [];
  List<CommentModel> jsonCommentsData = [];
  List<PostModel> jsonPostData = [];
  List<Product2Model> jsonProductData = [];
  List<CartModel> jsonCartData = [];

  Future<void> getJsonUserData() async {
    ShrHelper shrHelper = ShrHelper();
    jsonUserData = await shrHelper.jsonUserData();
    notifyListeners();
  }

  void getJsonTodosData() async {
    ShrHelper shrHelper = ShrHelper();
    jsonTodosData = await shrHelper.jsonTodosData();
    notifyListeners();
  }

  void getJsonPhotoData() async {
    ShrHelper shrHelper = ShrHelper();
    jsonPhotoData = await shrHelper.jsonPhotoData();
    notifyListeners();
  }

  void getJsonAlbumData() async {
    ShrHelper shrHelper = ShrHelper();
    jsonAlbumsData = await shrHelper.jsonAlbumsData();
    notifyListeners();
  }

  void getJsonCommentsData() async {
    ShrHelper shrHelper = ShrHelper();
    jsonCommentsData = await shrHelper.jsonCommentsData();
    notifyListeners();
  }

  Future<void> getJsonPostData() async {
    ShrHelper shrHelper = ShrHelper();
    jsonPostData = await shrHelper.jsonPostData();
    notifyListeners();
  }

  void getJsonCartData() async {
    ShrHelper shrHelper = ShrHelper();
    jsonCartData = await shrHelper.jsonCartData();
    notifyListeners();
  }

  void getJsonProductData() async {
    ShrHelper shrHelper = ShrHelper();
    jsonProductData = await shrHelper.apiProduct() ?? [];
    notifyListeners();
  }
}
