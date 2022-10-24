import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/constant/image_enum.dart';

class CardDaily extends StatefulWidget {
  const CardDaily({Key? key}) : super(key: key);

  @override
  State<CardDaily> createState() => _CardDailyState();
}

class _CardDailyState extends State<CardDaily> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 400,
                child: Card(
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: const Color.fromARGB(255, 165, 186, 226),
                    child: SizedBox(
                      width: 100,
                      height: 200,
                      child: Column(
                        children: [
                          Image.asset(ImageEnums.card1.toPath),
                          Expanded(
                            child: Text(
                              'Wrroom Show',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Expanded(
                              child:
                                  Text('Sing along rewind with a touch to ')),
                          Expanded(
                            child: const Text(
                                'the desired line and just listen to '),
                          ),
                          Expanded(child: const Text('songs in the Text mode'))
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 400,
                child: Card(
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromARGB(255, 234, 206, 154),
                    child: SizedBox(
                      width: 100,
                      height: 200,
                      child: Column(
                        children: [
                          Image.asset(ImageEnums.card2.toPath),
                          SizedBox(height: 5),
                          Expanded(
                            child: Text(
                              'Wrroom Show',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Expanded(
                              child:
                                  Text('Sing along rewind with a touch to ')),
                          Expanded(
                            child: const Text(
                                'the desired line and just listen to '),
                          ),
                          Expanded(child: const Text('songs in the Text mode'))
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
