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
              ImageContainer(url: 'assets/images/image1.jpg'),
              ImageContainer(url: 'assets/images/image2.jpg'),
              ImageContainer(url: 'assets/images/image3.jpg'),
              ImageContainer(url: 'assets/images/image4.jpg'),
              ImageContainer(url: 'assets/images/image5.jpg'),
              ImageContainer(url: 'assets/images/image6.jpg'),
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
