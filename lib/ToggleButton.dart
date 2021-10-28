import 'package:flutter/material.dart';

class Toggle extends StatefulWidget {
  @override
  _Toggle createState() => _Toggle();
}

bool toggleValue = false;

class _Toggle extends State<Toggle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Add an app bar
      body: Container(
        child: Row(
          children: <Widget>[
            Theme(
              data: ThemeData(
                unselectedWidgetColor: Color.fromRGBO(6, 6, 54, 1),
              ),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: toggleValue ? Color(0xFF444442) : Color(0xfff5d20f),
                ),
                child: Stack(
                  children: <Widget>[
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.easeIn,
                      top: 3,
                      left: toggleValue ? 60 : 0,
                      right: toggleValue ? 0 : 60,
                      child: InkWell(
                        onTap: toggleButton,
                        child: AnimatedSwitcher(
                          duration: Duration(milliseconds: 1000),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return RotationTransition(
                                child: child, turns: animation);
                          },
                          child: toggleValue
                              ? Icon(Icons.check_circle,
                                  color: Color(0xfff5d20f),
                                  size: 19,
                                  key: UniqueKey())
                              : Icon(Icons.remove_circle_outline,
                                  color: Color(0xFF444442),
                                  size: 19,
                                  key: UniqueKey()),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  // int _counter = 0;

  toggleButton() {
    setState(
      () {
        toggleValue = !toggleValue;
      },
    );
  }
}
