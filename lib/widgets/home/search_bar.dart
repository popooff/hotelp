import 'package:flutter/material.dart';

import 'package:heroicons/heroicons.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade100
      ),
      child: Row(
        children: [
          const SizedBox(width: 5),

          const HeroIcon(HeroIcons.magnifyingGlass),

          const SizedBox(width: 5),

          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search...',
                ),
              ),
            ),
          ),

          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(15)
            ),
            child: const Center(
              child: HeroIcon(HeroIcons.adjustmentsHorizontal, color: Colors.white)
            ),
          )
        ]),
    );
  }
}
