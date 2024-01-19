import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../Models/NewsModel.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trandingNews = <NewsModel>[].obs;
  RxList<NewsModel> businessNews = <NewsModel>[].obs;
  RxList<NewsModel> teslaNews = <NewsModel>[].obs;
  RxList<NewsModel> allNewsList = <NewsModel>[].obs;
  RxList<NewsModel> business5News = <NewsModel>[].obs;
  RxList<NewsModel> tesla5News = <NewsModel>[].obs;
  RxList<NewsModel> all5NewsList = <NewsModel>[].obs;
  RxList<NewsModel> allUsNewsList = <NewsModel>[].obs;
  RxList<NewsModel> us10NewsList = <NewsModel>[].obs;
  RxBool isNewLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    getTrandingNews();
    getBusinessNews();
    getTeslaNews();
    getAllNews();
    getUsNews();
  }

  Future<void> getAllNews() async {
    isNewLoading.value = true;
    try {
      var response = await http.get(Uri.parse(
          "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=ea97c6bb67b040759084c3c20ea5e5cf"));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        List _listNews = body["articles"];
        for (var news in _listNews) {
          allNewsList.add(NewsModel.fromJson(news));
        }
        shortNews(allNewsList, all5NewsList, 6);
        isNewLoading.value = false;
      } else {
        print("Something went wrong");
        isNewLoading.value = false;
      }
    } catch (ex) {
      print(ex);
      isNewLoading.value = false;
    }
  }

  Future<void> shortNews(
      List<NewsModel> newsList, List<NewsModel> newList, int number) async {
    try {
      for (var i = 0; i < number; i++) {
        newList.add(newsList[i]);
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getTrandingNews() async {
    try {
      var response = await http.get(Uri.parse(
          "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=ea97c6bb67b040759084c3c20ea5e5cf"));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        List _listNews = body["articles"];
        for (var news in _listNews) {
          trandingNews.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something went wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getBusinessNews() async {
    try {
      var response = await http.get(Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=ea97c6bb67b040759084c3c20ea5e5cf"));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        List _listNews = body["articles"];
        for (var news in _listNews) {
          businessNews.add(NewsModel.fromJson(news));
        }
        shortNews(businessNews, business5News, 5);
      } else {
        print("Something went wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getTeslaNews() async {
    try {
      var response = await http.get(Uri.parse(
          "https://newsapi.org/v2/everything?q=tesla&from=2023-12-19&sortBy=publishedAt&apiKey=ea97c6bb67b040759084c3c20ea5e5cf"));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        List _listNews = body["articles"];
        for (var news in _listNews) {
          teslaNews.add(NewsModel.fromJson(news));
        }
        shortNews(teslaNews, tesla5News, 5);
      } else {
        print("Something went wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getUsNews() async {
    try {
      var response = await http.get(Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=ea97c6bb67b040759084c3c20ea5e5cf"));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        List _listNews = body["articles"];
        for (var news in _listNews) {
          allUsNewsList.add(NewsModel.fromJson(news));
        }
        shortNews(allUsNewsList, us10NewsList, 5);
      } else {
        print("Something went wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }
}
