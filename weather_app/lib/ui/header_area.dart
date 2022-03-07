import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:simple_shadow/simple_shadow.dart';

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 1,
          child: PopupMenuButton(
            icon: SimpleShadow(
              child: Image.asset('assets/icons/menu_icon_largest.png'),
              offset: const Offset(0, 3.0),
              color: Colors.black,
              opacity: 0.16,
              sigma: 6,
            ),
            iconSize: 50,
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: '7day',
                child: Text('7 Day Forecast'),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Center(
            child: Text('<location>', style: kWhiteFontOswaldSubHeader),
          ),
        ),
        const Expanded(child: SizedBox())
      ],
    );
  }
}
