import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomBinaryOption extends StatefulWidget {
  CustomBinaryOption({
    Key key,
    this.textleft = "Publicaciones",
    this.textRight = "Perfil",
  }) : super(key: key);
  String textleft;
  String textRight;

  @override
  State<CustomBinaryOption> createState() => _CustomBinaryOptionState();
}

class _CustomBinaryOptionState extends State<CustomBinaryOption> {
  bool lr = false;
  @override
  Widget build(BuildContext context) {
    const Color darkText = Colors.black;
    const Color deactivatedText = Color(0xFF767676);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        color: Colors.white,
        height: 50,
        child: Row(children: [
          Expanded(
              child: InkWell(
            onTap: () {
              setState(() {
                lr = false;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.textleft,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.w600,
                        color: lr == false ? darkText : deactivatedText,
                      ),
                ),
                Container(
                  height: lr == false ? 3 : 1,
                  color: lr == false ? darkText : deactivatedText,
                )
              ],
            ),
          )),
          Expanded(
              child: InkWell(
            onTap: () {
              setState(() {
                lr = true;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.textRight,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.w600,
                        color: lr == true ? darkText : deactivatedText,
                      ),
                ),
                Container(
                  height: lr == true ? 3 : 1,
                  color: lr == true ? darkText : deactivatedText,
                )
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
