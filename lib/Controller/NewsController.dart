import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Model/NewsModel.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trandingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;

  void onInit() async {
    super.onInit();
    getNewsForYou();
    getTrandingNews();
  }

  Future<void> getTrandingNews() async {
    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=ea97c6bb67b040759084c3c20ea5e5cf";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];
        for (var news in articals) {
          trandingNewsList.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something went Wrong in Tranding News");
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getNewsForYou() async {
    var baseURL =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=ea97c6bb67b040759084c3c20ea5e5cf";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articals = body["articles"];
        for (var news in articals) {
          newsForYouList.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something went Wrong in Tranding News");
      }
    } catch (ex) {
      print(ex);
    }
  }
}














// Future<void> getAllNews() async {
  //   isNewLoading.value = true;
  //   try {
  //     var response = await http.get(Uri.parse(
  //         "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=ea97c6bb67b040759084c3c20ea5e5cf"));
  //     if (response.statusCode == 200) {
  //       var body = jsonDecode(response.body);
  //       List listNews = body["articles"];
  //       for (var news in listNews) {
  //         allNewsList.add(NewsModel.fromJson(news));
  //       }
  //       isNewLoading.value = false;
  //     } else {
  //       print("Something went wrong");
  //       isNewLoading.value = false;
  //     }
  //   } catch (ex) {
  //     print(ex);
  //     isNewLoading.value = false;
  //   }
  // }