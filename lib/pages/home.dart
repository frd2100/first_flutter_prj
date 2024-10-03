import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Container(
        height: kToolbarHeight,
        child: SvgPicture.asset(
          'assets/logos/WhenICried.svg',
          width: MediaQuery.of(context).size.width * 0.8,
          height: kToolbarHeight,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.deepPurple.shade200,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.deepPurple.shade200,
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            'assets/icons/chevron_left.svg',
            height: 20,
            width: 20,
            color: Colors.black,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration(
                color: Colors.deepPurple.shade200,
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              'assets/icons/more_vert.svg',
              height: 20,
              width: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
