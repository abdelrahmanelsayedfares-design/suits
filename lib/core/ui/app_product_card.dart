import 'package:flutter/material.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/core/ui/details_screen.dart';
import 'app_images.dart';

class AppProductCard extends StatefulWidget {
  const AppProductCard({super.key});

  @override
  State<AppProductCard> createState() => _AppProductCardState();
}

class _AppProductCardState extends State<AppProductCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        goTo(DetailsScreen(),canPop: true);
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusDirectional.all(Radius.circular(8)),
            child: AppImage(
              image:
                  'https://i.pinimg.com/736x/45/27/47/452747615431757300a956eb3f0c34a1.jpg',
            ),
          ),
          Positioned(
            top: 0,
            right: 27,
            child: InkWell(
              onTap: () {
                setState(() {
                  isFavorite=!isFavorite;
                });
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Color(0xffDD8560),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                  size: 22,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
