import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarouSel extends StatefulWidget {
  const ImageCarouSel({
    super.key,
  });

  @override
  State<ImageCarouSel> createState() => _ImageCarouSelState();
}

class _ImageCarouSelState extends State<ImageCarouSel> {
  final ValueNotifier<int> _curentIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              _curentIndex.value = index;
            },
            height: 180.0,
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 1.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ),
        ValueListenableBuilder(
          valueListenable: _curentIndex,
          builder: (context, index, _) {
            return Row(
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                        color: i == index ? Colors.pink : Colors.blue,
                        border: Border.all(
                            color: i == index ? Colors.pink : Colors.blue),
                        borderRadius: BorderRadius.circular(30)),
                  )
              ],
            );
          },
        )
      ],
    );
  }
}
