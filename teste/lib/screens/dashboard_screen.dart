import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:teste/screens/header.dart';
import 'package:teste/screens/specify_car.dart';

import '../constants.dart';
import '../model/car.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const ConstantHeader(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Promoções",
                  style: Theme
                      .of(context)
                      .textTheme
                      .displaySmall,
                ),
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: _Carousel(),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Categorias",
                        style: Theme
                            .of(context)
                            .textTheme
                            .displaySmall,
                      ),
                    ),
                    _GridViewCars()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class _GridViewCars extends StatelessWidget {
  _GridViewCars({Key? key}) : super(key: key);
  List<Car> carros = [
    Car(
      nome: 'Blista Compact',
      foto:
      'https://static.wikia.nocookie.net/gtawiki/images/0/06/BlistaCompact-GTAV-front.png/revision/latest?cb=20160929162026',
      ano: '1980',
      marca: 'Esportivos',
      valor: 1500,
    ),
    Car(
      nome: 'Dominator GTT',
      foto:
      'https://static.wikia.nocookie.net/gtawiki/images/e/e0/DominatorGTT-GTAO-front.png/revision/latest?cb=20210720164440',
      ano: '2000',
      marca: 'Potentes',
      valor: 1220000,
    ),
    Car(
      nome: 'Eudora',
      foto:
      'https://static.wikia.nocookie.net/gtawiki/images/5/59/Eudora-GTAOe-front.png/revision/latest?cb=20221220232033',
      ano: '1980',
      marca: 'Vintage',
      valor: 1250000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: carros.length,
      itemBuilder: (BuildContext context, int index) {
        final car = carros[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(car.foto),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SpecifyModel(car: car),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Theme
                              .of(context)
                              .primaryColor
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Text(car.nome),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _Carousel extends StatefulWidget {
  const _Carousel({Key? key}) : super(key: key);

  @override
  State<_Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<_Carousel> {
  int _current = 0;
  List imgList = [
    'https://static.wikia.nocookie.net/gtawiki/images/2/2d/9F-GTAV-front.png/revision/latest?cb=20150529201705',
    'https://static.wikia.nocookie.net/gtawiki/images/9/94/Alpha-GTAV-front.png/revision/latest?cb=20160917231444'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 280.0,
        initialPage: 0,
        enlargeCenterPage: true,
        autoPlay: true,
        reverse: false,
        enableInfiniteScroll: true,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(milliseconds: 2000),
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, _) {
          setState(() {
            _current = index;
          });
        },
      ),
      items: imgList.map((imgUrl) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}




