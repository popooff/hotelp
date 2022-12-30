import 'package:hotelp/widgets/monthly_price.dart';
import 'package:hotelp/views/details.dart';
import 'package:hotelp/models/hotel.dart';
import 'package:hotelp/utils/utils.dart';

import 'package:flutter/material.dart';

import 'package:heroicons/heroicons.dart';


class HotelCard extends StatelessWidget {

  final Hotel hotel;

  const HotelCard({
    Key? key,
    required this.hotel
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => HotelDetails(hotel: hotel)));
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 2,
                    blurRadius: 10
                )
              ]
          ),
          child: Stack(
              children: [

                SizedBox(
                  height: 350,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(hotel.more['url'], fit: BoxFit.cover),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Row(
                              children: [

                                Expanded(
                                  child: Text(
                                    hotel.name,
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),

                                const Spacer(),

                                HeroIcon(
                                    HeroIcons.heart,
                                    size: 30,
                                    color: $utils.primary,
                                    style: HeroIconStyle.solid
                                )
                              ]),

                          const SizedBox(height: 5),

                          Text(
                            hotel.address,
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w400
                            ),
                          ),

                          const SizedBox(height: 10),

                          Row(
                              children: [
                                MonthlyPrice(price: hotel.price),

                                const Spacer(),

                                Row(
                                    children: [
                                      Text(
                                        hotel.star.toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),

                                      const SizedBox(width: 5),

                                      HeroIcon(
                                          HeroIcons.star,
                                          size: 26,
                                          style: HeroIconStyle.solid,
                                          color: Colors.yellow.shade500
                                      )
                                    ])
                              ])
                        ]),
                  ),
                )
              ])
      ),
    );
  }
}
