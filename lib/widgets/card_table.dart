import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.border_all,
            color: Colors.blue,
            text: "General",
          ),
          _SingleCard(
            icon: Icons.car_rental,
            color: Colors.pinkAccent,
            text: "Transport",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.shop,
            color: Colors.purple,
            text: "Shopping",
          ),
          _SingleCard(
            icon: Icons.document_scanner,
            color: Colors.purpleAccent,
            text: "Bill",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.dark_mode,
            color: Colors.tealAccent,
            text: "Cloud",
          ),
          _SingleCard(
            icon: Icons.g_mobiledata,
            color: Colors.redAccent,
            text: "Grocery",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.u_turn_left,
            color: Colors.yellow,
            text: "General",
          ),
          _SingleCard(
            icon: Icons.movie,
            color: Colors.greenAccent,
            text: "Movie",
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
            radius: 30),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 18),
        )
      ],
    );
    return _CardBackground(
      child: column,
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, .7),
        borderRadius: BorderRadius.circular(15));
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: this.child,
          ),
        ),
      ),
    );
  }
}
