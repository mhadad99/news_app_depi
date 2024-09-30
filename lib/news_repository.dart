import 'package:dio/dio.dart';
import 'package:news_app/news_model.dart';

class NewsRepository {
  // api calling

  NewsModel? newsModel;

  Future<List<Article>> getNews() async {
    // endpoint
    // API
    // TODO (1) Convert from Json to NewsModel
    final response = await Dio().get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=c1d968eb00904832b8d76821404e21bc',
    );
    print("response = ${response.data}");
    newsModel = NewsModel.fromJson(response.data);

    return newsModel!.articles;
  }
}
