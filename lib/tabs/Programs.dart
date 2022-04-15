import 'package:fitness_flutter/components/daily_tip.dart';
import 'package:fitness_flutter/components/header.dart';
import 'package:fitness_flutter/components/image_card_with_basic_footer.dart';
import 'package:fitness_flutter/components/section.dart';
import 'package:fitness_flutter/components/image_card_with_internal.dart';
import 'package:fitness_flutter/components/main_card_programs.dart';
import 'package:fitness_flutter/components/user_photo.dart';
import 'package:fitness_flutter/components/user_tip.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/pages/activity_detail.dart';

import 'package:flutter/material.dart';

class Programs extends StatelessWidget {
  static String tag = 'programs-page';

  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/image001.jpg',
      title: 'Быстрый старт',
      time: '5 минут',
      difficult: 'Легкий',
    ),
    Exercise(
      image: 'assets/images/image002.jpg',
      title: 'Средний старт',
      time: '10 минут',
      difficult: 'Средний',
    ),
    Exercise(
      image: 'assets/images/image003.jpg',
      title: 'Про старт',
      time: '25 минут',
      difficult: 'Сложный',
    )
  ];

  List<Widget> generateList(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    exercises.forEach((exercise) {
      Widget element = Container(
        margin: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          child: ImageCardWithBasicFooter(
            exercise: exercise,
            tag: 'imageHeader$count',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return ActivityDetail(
                    exercise: exercise,
                    tag: 'imageHeader$count',
                  );
                },
              ),
            );
          },
        ),
      );
      list.add(element);
      count++;
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Header(
                  'Программы',
                  rightSide: UserPhoto(),
                ),
                MainCardPrograms(), // MainCard
                Section(
                  title: 'Сжигание жира',
                  horizontalList: this.generateList(context),
                ),
                Section(
                  title: 'Красивый пресс',
                  horizontalList: <Widget>[
                    ImageCardWithInternal(
                      image: 'assets/images/image004.jpg',
                      title: 'Основная \nТренировка',
                      duration: '7 минут',
                    ),
                    ImageCardWithInternal(
                      image: 'assets/images/image004.jpg',
                      title: 'Основная \nТренировка',
                      duration: '7 минут',
                    ),
                    ImageCardWithInternal(
                      image: 'assets/images/image004.jpg',
                      title: 'Основная \nТренировка',
                      duration: '7 минут',
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  padding: EdgeInsets.only(top: 10.0, bottom: 40.0),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                  ),
                  child: Column(
                    children: <Widget>[
                      Section(
                        title: 'Советы экспертов',
                        horizontalList: <Widget>[
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'Антон',
                          ),
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'Илья',
                          ),
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'Андрей',
                          ),
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'Максим',
                          ),
                        ],
                      ),
                      Section(
                        horizontalList: <Widget>[
                          DailyTip(),
                          DailyTip(),
                          DailyTip(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
