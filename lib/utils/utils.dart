import 'package:hotelp/models/hotel.dart';

import 'package:flutter/material.dart';


final $utils = Utils();


class Utils {

  late final primary = Colors.blueGrey;


  final hotels = <Hotel>[
    Hotel(
      name: 'Plaza Hotel',
      address: '34 Street Boulevard',
      price: 1150.0,
      star: 4.4,
      description: 'Etiam convallis nibh et est bibendum bibendum. Proin odio massa, viverra a maximus ut, ultricies vel nisl. Proin eu feugiat risus, mollis tempus enim. Mauris aliquam velit eget dui venenatis hendrerit.',
      more: {
        'rooms': '2',
        'mq': '65',
        'location': 'Rome, Italy',
        'url': 'assets/home/hotel_1.jpg',
        'details': ['assets/details/details_1.jpg', 'assets/details/details_2.jpg'],
      }
    ),
    Hotel(
        name: 'Hotel House',
        address: '15 Jump Street',
        price: 950.0,
        star: 3.9,
        description: 'Etiam convallis nibh et est bibendum bibendum. Proin odio massa, viverra a maximus ut, ultricies vel nisl. Proin eu feugiat risus, mollis tempus enim. Mauris aliquam velit eget dui venenatis hendrerit.',
        more: {
          'rooms': '4',
          'mq': '90',
          'location': 'Tuscany, Italy',
          'url': 'assets/home/hotel_2.jpg',
          'details': ['assets/details/details_1.jpg', 'assets/details/details_2.jpg'],
        }
    ),
    Hotel(
        name: 'Au de Mare',
        address: 'Street du Mare',
        price: 2000.0,
        star: 4.8,
        description: 'Etiam convallis nibh et est bibendum bibendum. Proin odio massa, viverra a maximus ut, ultricies vel nisl. Proin eu feugiat risus, mollis tempus enim. Mauris aliquam velit eget dui venenatis hendrerit.',
        more: {
          'rooms': '5',
          'mq': '150',
          'location': 'Milan, Italy',
          'url': 'assets/home/hotel_3.jpg',
          'details': ['assets/details/details_1.jpg', 'assets/details/details_2.jpg'],
        }
    )
  ];
}
