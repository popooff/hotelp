import 'package:hotelp/widgets/details/photo_details.dart';
import 'package:hotelp/widgets/monthly_price.dart';
import 'package:hotelp/models/hotel.dart';
import 'package:hotelp/utils/utils.dart';

import 'package:flutter/material.dart';

import 'package:heroicons/heroicons.dart';


class HotelDetails extends StatelessWidget {

  final Hotel hotel;

  const HotelDetails({
    Key? key,
    required this.hotel
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const HeroIcon(HeroIcons.chevronLeft),
                  onPressed: () => Navigator.pop(context),
                ),

                IconButton(
                  icon: const HeroIcon(HeroIcons.bookmark),
                  onPressed: () {

                  }
                )
              ]),

            const SizedBox(height: 10),

            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                hotel.more['url'],
                height: 300,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 5),

            PhotoDetails(photos: hotel.more['details']),

            const SizedBox(height: 20),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(
                    child: Text(
                      hotel.name,
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),

                  Row(
                      children: [
                        Text(
                          hotel.star.toString(),
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500
                          ),
                        ),

                        const SizedBox(width: 5),

                        HeroIcon(
                            HeroIcons.star,
                            size: 28,
                            style: HeroIconStyle.solid,
                            color: Colors.yellow.shade500
                        )
                      ])
                ]),

            const SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Text(
                  hotel.address,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w400
                  ),
                ),

                MonthlyPrice(price: hotel.price),
              ]),

            const SizedBox(height: 20),

            Container(
              height: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade100)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Text(
                      '${hotel.more['rooms']} rooms',
                      style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      )
                  ),

                  Container(
                    width: 2,
                    height: 40,
                    color: Colors.black26,
                  ),

                  Text(
                      '${hotel.more['mq']} mq',
                      style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      )
                  ),
                ]),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                HeroIcon(
                    HeroIcons.mapPin,
                    size: 30,
                    color: $utils.primary,
                    style: HeroIconStyle.solid
                ),

                const SizedBox(width: 5),

                Text(
                  hotel.more['location'],
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),
                )
              ]),

            const SizedBox(height: 15),

            Text(
              hotel.description,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w400
              ),
            ),

            const SizedBox(height: 90),
          ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 65,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: $utils.primary,
            borderRadius: BorderRadius.circular(20)
        ),
        child: const Center(
          child: Text(
            'BOOK NOW',
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}
