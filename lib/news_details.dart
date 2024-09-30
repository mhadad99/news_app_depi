import 'package:flutter/material.dart';
import 'package:news_app/news_model.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      Image.network(
                        article.urlToImage ??
                            "https://www.drupal.org/files/project-images/broken-image.jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.only(
                            topEnd: Radius.circular(32),
                            topStart: Radius.circular(32))),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          Text(
                            article.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${article.author ?? ''}   ${article.publishedAt.toString()}",
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(article.description ?? ""),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(article.content ?? ''),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
