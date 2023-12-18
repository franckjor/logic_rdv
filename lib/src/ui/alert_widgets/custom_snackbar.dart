import 'package:flutter/material.dart';

ScaffoldFeatureController flushBarInfo(String message, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.black87,
    content: Row(
      children: [
        Icon(
          Icons.info,
          size: 28.0,
          color: Colors.blue[300],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(child: Text(message))
      ],
    ),
    duration: Duration(seconds: 10),
  ));
}

ScaffoldFeatureController flushBarSuccess(
    String message, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black87,
      content: Row(
        children: [
          Icon(
            Icons.check_circle,
            size: 28.0,
            color: Colors.green[300],
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(child: Text(message))
        ],
      ),
      duration: Duration(seconds: 3),
    ),
  );
}

ScaffoldFeatureController flushBarError(String message, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black87,
      content: Row(
        children: [
          Icon(
            Icons.error_outline,
            size: 28.0,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(
            message,
            style: TextStyle(color: Colors.white),
          ))
        ],
      ),
      duration: Duration(seconds: 5),
    ),
  );
}
