import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Запуск основного приложения
}

// Основной виджет приложения
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrap Widget', // Название приложения
      home: Scaffold(
        appBar: AppBar(
          title: Text('Лабораторная работа №2'), // Заголовок в AppBar
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0), // Внешние отступы вокруг всего содержимого
          child: Wrap(
            spacing: 10.0, // Горизонтальный отступ между элементами
            runSpacing: 10.0, // Вертикальный отступ между строками
            children: [
              // Добавление 6 контейнеров с картинками
              ImageContainer(url: 'https://steamuserimages-a.akamaihd.net/ugc/2267061416746036822/4B4E1BD53415BC3BA1C3E1095D730054B4FB824B/?imw=512&amp;imh=288&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true'),
              ImageContainer(url: 'https://avatars.mds.yandex.net/i?id=9d92de87b0a5256e5b645d30afdbc6e177b159d5-3712383-images-thumbs&n=13'),
              ImageContainer(url: 'https://avatars.mds.yandex.net/i?id=7439c0ce708529b2dc63cf21cde3bb623484b26a-5099371-images-thumbs&n=13'),
              ImageContainer(url: 'https://avatars.mds.yandex.net/i?id=c5472a2951cc6d0683cf073c5c6b6992b8626da5-13312075-images-thumbs&n=13'),
              ImageContainer(url: 'https://avatars.mds.yandex.net/i?id=55c525ef069649f9830702fbcc8dda2aa3faa636-4545333-images-thumbs&n=13'),
              ImageContainer(url: 'https://steamuserimages-a.akamaihd.net/ugc/1700659825268174889/F2F16F3F7CF78BBFDC65FC6B50841FEB1F28DAA7/?imw=512&amp;imh=267&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true'),
            ],
          ),
        ),
      ),
    );
  }
}

// Отдельный виджет-контейнер с изображением
class ImageContainer extends StatelessWidget {
  final String url; // URL изображения

  ImageContainer({required this.url}); // Конструктор

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0), // Отступы вокруг каждого контейнера
      width: 100, // Ширина контейнера
      height: 100, // Высота контейнера
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent), // Обводка синего цвета
        borderRadius: BorderRadius.circular(10), // Скругление углов
        image: DecorationImage(
          image: NetworkImage(url), // Загрузка изображения из интернета
          fit: BoxFit.cover, // Заполнение контейнера изображением
        ),
      ),
    );
  }
}
