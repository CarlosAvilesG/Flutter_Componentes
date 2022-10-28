import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imageUrl:
                  'https://rare-gallery.com/mocahbig/1357322-MountainArtistic-Landscape-4k-Ultra-HD-Wallpaper.jpg',
              name: "1"),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imageUrl:
                  'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imageUrl:
                  'https://cdn3.dpmag.com/2021/07/Landscape-Tips-1-Mike-Mezeul-II.jpg'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imageUrl:
                  'https://cdn3.dpmag.com/2021/07/Landscape-Tips-2-Mike-Mezeul-II.jpg'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imageUrl:
                  'https://cdn3.dpmag.com/2021/07/Landscape-Tips-3-Mike-Mezeul-II.jpg'),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
