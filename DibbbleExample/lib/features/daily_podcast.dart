import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/constant/image_enum.dart';
import 'package:flutter_full_learn/product/widget/Keys/Project_keys.dart';

import '../product/Colors/Project_color.dart';
import 'card_daily.dart';

class DailyPodcast extends StatefulWidget {
  const DailyPodcast({Key? key}) : super(key: key);

  @override
  State<DailyPodcast> createState() => _DailyPodcastState();
}

class _DailyPodcastState extends State<DailyPodcast> {
  final double height = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: Center(
          child: Column(
            children: [
              _title1Text(context),
              title2Text(context),
              SizedBox(
                height: height,
              ),
              _sub1Text(context),
              _sub2Text(context),
             // Image.asset(ImageEnums.daily.toPath),
               ImageEnums.daily.toImage,
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return CardDaily();
                  }));
                },
                child: Text(ProjectKeys().but1),
                style: ProjectColor().elevated,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  ProjectKeys().b2,
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: const Color.fromARGB(255, 77, 105, 190)),
                ),
              )
            ],
          ),
        ));
  }

  Text _sub2Text(BuildContext context) {
    return Text(ProjectKeys().sub2,
        style: Theme.of(context)
            .textTheme
            .subtitle2
            ?.copyWith(color: Colors.grey));
  }

  Text _sub1Text(BuildContext context) {
    return Text(ProjectKeys().sub1,
        style: Theme.of(context)
            .textTheme
            .subtitle2
            ?.copyWith(color: Colors.grey));
  }

  Text title2Text(BuildContext context) {
    return Text(
      ProjectKeys().title2,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline2?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Text _title1Text(BuildContext context) {
    return Text(ProjectKeys().title1,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ));
  }
}
