// ignore: file_names
import 'package:flutter/material.dart';

// メニューウィジェット
class MenuWidget extends StatefulWidget {
  final Function(int) setPerson;
  const MenuWidget({Key? key, required this.setPerson}) : super(key: key);

  @override
  _MenuWidget createState() => _MenuWidget();
}

class _MenuWidget extends State<MenuWidget> {
  List<bool> isActiveList = [true, false, false];
  Widget menuButton(int no, String image, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: () {
              widget.setPerson(no);
              List<bool> activeState = [false, false, false];
              activeState[no] = true;
              setState(() => isActiveList = activeState);
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: isActive ? Colors.red : Colors.black,
                      width: isActive ? 3 : 1)),
              child: Image.asset(image,
                  width: 100, height: 100, fit: BoxFit.cover),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        menuButton(0, "assets/images/sasabo_transparent.png", isActiveList[0]),
        menuButton(
            1, "assets/images/tyannnabe_transparent.png", isActiveList[1]),
        menuButton(2, "assets/images/ossy_transparent.png", isActiveList[2])
      ],
    );
  }
}
