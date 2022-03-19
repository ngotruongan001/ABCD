
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_control/constants/theme_data.dart';

class Light extends StatefulWidget {
  const Light({Key? key}) : super(key: key);

  @override
  _LightState createState() => _LightState();
}

class _LightState extends State<Light> {
  var _hasFlashlight = false;
  var isON = false;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            const SizedBox(
              height: 30,
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  'Light',
                  style: TextStyle(
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w700,
                      color: CustomColors.primaryTextColor,
                      fontSize: 26),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[Center(
                  child: Transform.rotate(
                    angle: -3.14 / 2,
                    child: Transform.scale(
                      scale: 3.0,
                      child: Switch(
                        value: isON,
                        onChanged: (value) {
                          setState(
                                () {
                              isON = !isON;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),]
              ),
            )
          ]);
  }}