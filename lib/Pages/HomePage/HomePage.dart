import 'package:flutter/material.dart';
import 'package:news_app/Pages/HomePage/Widgets/NewsTile.dart';
import 'package:news_app/Pages/HomePage/Widgets/TrandingCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NEWSEEKERS",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.home,
                        size: 25,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      // color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.book,
                        size: 25,
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      // color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.settings,
                        size: 25,
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TrandingCard(
                      imageUrl:
                          "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/16/317_1705413514.jpg",
                      title:
                          "3400 साल पहले लिखी गई आदि रामायण, इंडोनेशिया में 5 और नेपाल में 4 रामकथाएं",
                      author: "Nitish Kumar",
                      tag: "Tranding no 1",
                      time: "2 Day ago",
                    ),
                    TrandingCard(
                      imageUrl:
                          "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/17/unknown-2024-01-17t214415187_1705508360.jpg",
                      title:
                          "वर्ल्ड कप से पहले टी-20 सीरीज में अफगानिस्तान को 3-0 से हराया",
                      author: "Nitish Kumar",
                      tag: "Tranding no 2",
                      time: "2 Day ago",
                    ),
                    TrandingCard(
                      imageUrl:
                          "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/16/gr-10-padav-17-01-2024-1_1705417775.jpg",
                      title:
                          "नेपाल में मणिमंडप, नासिक में सीता गुफा, श्रीलंका में रावण का शव",
                      author: "Nitish Kumar",
                      tag: "Tranding no 2",
                      time: "18 घंटे पहले",
                    ),
                  ],
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
              Column(
                children: [
                  NewsTile(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/16/317_1705413514.jpg",
                    title:
                        "3400 साल पहले लिखी गई आदि रामायण, इंडोनेशिया में 5 और नेपाल में 4 रामकथाएं",
                    author: "Nitish Kumar",
                    time: "2 Day ago",
                  ),
                  NewsTile(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/17/unknown-2024-01-17t214415187_1705508360.jpg",
                    title:
                        "वर्ल्ड कप से पहले टी-20 सीरीज में अफगानिस्तान को 3-0 से हराया",
                    author: "Nitish Kumar",
                    time: "2 Day ago",
                  ),
                  NewsTile(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/16/gr-10-padav-17-01-2024-1_1705417775.jpg",
                    title:
                        "नेपाल में मणिमंडप, नासिक में सीता गुफा, श्रीलंका में रावण का शव",
                    author: "Nitish Kumar",
                    time: "18 घंटे पहले",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
