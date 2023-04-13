import 'package:flutter/material.dart';

import '../constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: SizedBox(
            width: double.infinity,
            child: Card(
              margin: const EdgeInsets.all(8.0),
              color: Colors.white10,
              child: Row(
                children: [
                  const _ProfilePicture(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      _TextStyle(
                        titulo1: 'Nome: ',
                        titulo2: 'Patricia Oliveira Cordeiro',
                      ),
                      _TextStyle(
                        titulo1: 'Código: ',
                        titulo2: '1245',
                      ),
                      _TextStyle(
                        titulo1: 'CPF: ',
                        titulo2: '43245547685856',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TextStyle extends StatelessWidget {
  const _TextStyle({Key? key, required this.titulo1, required this.titulo2})
      : super(key: key);
  final String titulo1;
  final String titulo2;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(
            text: titulo1,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          TextSpan(
            text: titulo2,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _ProfilePicture extends StatelessWidget {
  const _ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Padding(
          padding:
              EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0, right: 8.0),
          child: CircleAvatar(
            maxRadius: 90,
            backgroundImage: AssetImage(
              'assets/images/fotinha.png',
            ),
          ),
        ),
        Positioned(
          bottom: 24,
          right: 20,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
              size: 24.0,
            ),
          ),
        ),
      ],
    );
  }
}
