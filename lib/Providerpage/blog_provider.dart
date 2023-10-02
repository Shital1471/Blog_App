import 'package:flutter/material.dart';
import 'package:flutter_blog/APIS/BlogPage.dart';
import 'package:flutter_blog/APIS/blogapis.dart';
import 'package:http/http.dart';

class BlogProvider extends ChangeNotifier {
  final _service = ApiService();
  bool isLoading = false;
  List<Blog> _blog = [];
  List<Blog> get blog => _blog;

  Future<void> getAllBlogs() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.fetchBlogs();
    _blog = response;
    isLoading = false;
    notifyListeners();
  }
}
