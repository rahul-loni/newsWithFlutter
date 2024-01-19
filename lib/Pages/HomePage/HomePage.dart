import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Components/NavigationBar.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Pages/HomePage/Widgets/NewsTile.dart';
import 'package:news_app/Pages/HomePage/Widgets/TrandingCard.dart';
import 'package:news_app/Pages/NewDetails/NewsDetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.dashboard),
                  ),
                  Text(
                    "NEWS APP",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      newsController.getTrandingNews();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.person),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                  () => Row(
                    children: newsController.trandingNews
                        .map(
                          (e) => TrandingCard(
                            ontap: () {
                              Get.to(NewsDetailsPage(
                                newsData: e,
                              ));
                            },
                            imageUrl: e.urlToImage!,
                            title: e.title!,
                            author: e.author ?? "Unknown",
                            tag: "Tranding no 1",
                            time: e.publishedAt!,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News For you",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => newsController.isNewLoading.value
                    ? LinearProgressIndicator()
                    : Column(
                        children: newsController.all5NewsList
                            .map(
                              (e) => NewsTile(
                                imageUrl: e.urlToImage ??
                                    "https://static.toiimg.com/thumb/msid-46918916,width=1200,height=900/46918916.jpg",
                                title: e.title!,
                                author: e.author ?? "Unknown",
                                time: e.publishedAt!,
                              ),
                            )
                            .toList(),
                      ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tesla News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => newsController.isNewLoading.value
                    ? LinearProgressIndicator()
                    : Column(
                        children: newsController.tesla5News
                            .map(
                              (e) => NewsTile(
                                imageUrl: e.urlToImage ??
                                    "https://static.toiimg.com/thumb/msid-46918916,width=1200,height=900/46918916.jpg",
                                title: e.title!,
                                author: e.author ?? "Unknown",
                                time: e.publishedAt!,
                              ),
                            )
                            .toList(),
                      ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News From US",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                  () => Row(
                    children: newsController.us10NewsList
                        .map(
                          (e) => TrandingCard(
                            ontap: () {
                              Get.to(NewsDetailsPage(
                                newsData: e,
                              ));
                            },
                            imageUrl: e.urlToImage ??
                                "https://static.toiimg.com/thumb/msid-46918916,width=1200,height=900/46918916.jpg",
                            title: e.title!,
                            author: e.author ?? "Unknown",
                            tag: "Tranding no 1",
                            time: e.publishedAt!,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Business News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => newsController.isNewLoading.value
                    ? LinearProgressIndicator()
                    : Column(
                        children: newsController.business5News
                            .map(
                              (e) => NewsTile(
                                imageUrl: e.urlToImage ??
                                    "https://static.toiimg.com/thumb/msid-46918916,width=1200,height=900/46918916.jpg",
                                title: e.title!,
                                author: e.author ?? "Unknown",
                                time: e.publishedAt!,
                              ),
                            )
                            .toList(),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
