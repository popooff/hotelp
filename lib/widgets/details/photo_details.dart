import 'package:flutter/material.dart';


class PhotoDetails extends StatelessWidget {

  final List<dynamic> photos;

  const PhotoDetails({
    Key? key,
    required this.photos
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.separated(
        itemCount: photos.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 110,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(photos[index], fit: BoxFit.cover),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 5),
      ),
    );
  }
}
