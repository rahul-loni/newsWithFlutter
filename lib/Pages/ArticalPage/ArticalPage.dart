import 'package:flutter/material.dart';
import 'package:news_app/Pages/ArticalPage/Widgets/SearchWidget.dart';

import '../HomePage/Widgets/NewsTile.dart';

class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SearchWidget(),
              SizedBox(height: 20),
              Column(
                children: [
                  NewsTile(
                    ontap: () {},
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/16/317_1705413514.jpg",
                    title:
                        "3400 साल पहले लिखी गई आदि रामायण, इंडोनेशिया में 5 और नेपाल में 4 रामकथाएं",
                    author: "Nitish Kumar",
                    time: "2 Day ago",
                  ),
                  NewsTile(
                    ontap: () {},
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/17/unknown-2024-01-17t214415187_1705508360.jpg",
                    title:
                        "वर्ल्ड कप से पहले टी-20 सीरीज में अफगानिस्तान को 3-0 से हराया",
                    author: "Nitish Kumar",
                    time: "2 Day ago",
                  ),
                  NewsTile(
                    ontap: () {},
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/16/gr-10-padav-17-01-2024-1_1705417775.jpg",
                    title:
                        "नेपाल में मणिमंडप, नासिक में सीता गुफा, श्रीलंका में रावण का शव",
                    author: "Nitish Kumar",
                    time: "18 घंटे पहले",
                  ),
                  NewsTile(
                    ontap: () {},
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/17/unknown-2024-01-17t214415187_1705508360.jpg",
                    title:
                        "वर्ल्ड कप से पहले टी-20 सीरीज में अफगानिस्तान को 3-0 से हराया",
                    author: "Nitish Kumar",
                    time: "2 Day ago",
                  ),
                  NewsTile(
                    ontap: () {},
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
