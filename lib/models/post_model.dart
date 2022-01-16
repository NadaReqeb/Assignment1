import 'package:assignment1/models/user_model.dart';

class postModel {
  String imageUrl;
  String title;
  String description;
  userModel postCreator;

  postModel({this.imageUrl, this.title, this.description, this.postCreator});
}
