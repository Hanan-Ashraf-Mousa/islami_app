import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/radio_logo.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous_rounded)),
              IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_rounded)),
              IconButton(onPressed: (){}, icon: Icon(Icons.skip_next_rounded)),

            ],
          )
        ],
      ),
    );
  }
}
