import 'package:filemanager_ui/ringCircle.dart';
import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Your Storage',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1.5),
                child: Icon(
                  Icons.code,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          RingCircle(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              cicle(Colors.white, 'Used'),
              SizedBox(width: 10),
              cicle(Theme.of(context).accentColor, "Free")
            ],
          ),
          SizedBox(height:25),
          FlatButton(
            clipBehavior: Clip.hardEdge,
              shape: StadiumBorder(),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
              child: Text(
                'Analyze',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

Widget cicle(Color color, String data) {
  return Row(
    children: <Widget>[
      Container(
        height: 10,
        width: 20,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
      Text(data, style: TextStyle(color: color, fontSize: 12))
    ],
  );
}
