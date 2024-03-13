import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouseSlider extends StatefulWidget {
  const CarouseSlider({super.key});

  @override
  State<CarouseSlider> createState() => _CarouseSliderState();
}

class _CarouseSliderState extends State<CarouseSlider> {
  final ValueNotifier<int> _currentindex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('CarouseSlider Demo'),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  _currentindex.value = index;
                },
                height: 180.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 3.0),
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          ValueListenableBuilder(
            valueListenable: _currentindex,
            builder: (context, index, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 5; i++)
                    Container(
                      height: 15,
                      width: 14,
                      decoration: BoxDecoration(
                          color: i == index ? Colors.blue : Colors.amber,
                          border: Border.all(
                              color: i == index ? Colors.black : Colors.pink),
                          borderRadius: BorderRadius.circular(6)),
                    )
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
