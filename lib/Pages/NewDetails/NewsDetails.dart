import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Models/NewsModel.dart';

class NewsDetailsPage extends StatelessWidget {
  final NewsModel newsData;
  const NewsDetailsPage({super.key, required this.newsData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        child: const Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new),
                            Text("Back"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  // height: 330,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            newsData.urlToImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  newsData.title!,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "${newsData.publishedAt} * ${newsData.source!.name} ",
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Text(
                        "${newsData.author![0]}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(width: 10),
                    Text(
                      newsData.author!,
                      style: TextStyle(
                          fontSize: 18,
                          color:
                              Theme.of(context).colorScheme.secondaryContainer),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        newsData.description!,
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
