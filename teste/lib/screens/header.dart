import 'package:flutter/material.dart';

import '../constants.dart';

class ConstantHeader extends StatelessWidget {
  const ConstantHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              "Dashboard",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const _Search(),
          const Spacer(),
          const _ProfileResume(),
        ],
      ),
    );
  }
}

class _Search extends StatelessWidget {
  const _Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Pesquisar',
          fillColor: secondaryColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 2,
              ),
              padding: const EdgeInsets.all(
                defaultPadding * 0.75,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: const Icon(
                Icons.search,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileResume extends StatelessWidget {
  const _ProfileResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        margin: const EdgeInsets.only(
          left: defaultPadding,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: defaultPadding / 2,
        ),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.white),
        ),
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: CircleAvatar(
                maxRadius: 16,
                backgroundImage: AssetImage(
                  'assets/images/fotinha.png',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding / 2,
              ),
              child: Text("Patricia Cordeiro"),
            ),
            Icon(
              Icons.keyboard_arrow_down,
            ),
          ],
        ),
      ),
    );
  }
}
