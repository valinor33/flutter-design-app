import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // Imagen
        Image(
          image: AssetImage("assets/landscape.jpg"),
        ),

        // Titulo
        Title(),

        // Button Section
        ButtonSection(),

        // Description
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
                'Qui sit sit id dolor excepteur ad. Incididunt minim non adipisicing sint excepteur. Amet cillum sint duis duis. Ut do ullamco duis ipsum irure eu reprehenderit. Est do Lorem officia ad voluptate proident tempor qui qui. Sunt in fugiat irure tempor veniam cupidatat cillum cillum proident. Irure aliqua ad esse Lorem nostrud duis labore aute irure est magna.'))
      ]),
    );
  }
}

class Title extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oestchinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg,   Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            icon: Icons.call,
            text: "Call",
          ),
          CustomButton(
            icon: Icons.near_me,
            text: "Route",
          ),
          CustomButton(
            icon: Icons.share,
            text: "Share",
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(icon, color: Colors.blue),
      SizedBox(height: 5),
      Text(text,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ))
    ]);
  }
}
