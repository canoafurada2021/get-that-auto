import 'package:flutter/material.dart';
import 'package:teste/screens/header.dart';

import '../constants.dart';
import '../model/car.dart';

class SpecifyModel extends StatelessWidget {
  const SpecifyModel({Key? key, required this.car}) : super(key: key);
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const ConstantHeader(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),

                      ),
                      elevation: 5.0,
                      margin: const EdgeInsets.all(10.0),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              car.foto,
                              fit: BoxFit.cover,
                              height: 200,
                            ),
                            Text(',kkkkkk')
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ],),
        ),
      ),);
  }
}
