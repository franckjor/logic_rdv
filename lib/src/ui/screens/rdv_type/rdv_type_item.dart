import 'dart:math';

import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/common.dart';

class RdvTypeItem extends StatefulWidget {
  final String motifRdv;
  final String lieuRdv;
  final Color color;
  final Function onTapHandler;

  RdvTypeItem({
    this.motifRdv = "asdasdadasdsadsadas sadadasdadasd",
    this.lieuRdv = 'sadsdassadsdadasdas',
    this.onTapHandler,
    this.color,
  });

  @override
  _RdvTypeItemState createState() => _RdvTypeItemState();
}

class _RdvTypeItemState extends State<RdvTypeItem> {
  List<Color> _listOfColors = [
    Color(0xFF171717),
    Color(0xFF2ecc71),
    Color(0xFF34495e),
    Color(0xFFe67e22),
    Color(0xFF81ecec),
    Color(0xFF8e44ad),
    Color(0xFFfab1a0),
    Color(0xFFfd79a8),
    Color(0xFFe84393),
    Color(0xFFF3F000),
    Color(0xFFF55C47),
  ];

  var rdNumber = Random().nextInt(10);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTapHandler,
      child: Card(
        elevation: 0,
        // color: _listOfColors[Random().nextInt(_listOfColors.length)],
        shadowColor: Colors.grey.shade400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: ListTile(
          dense: true,
          leading: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.color ??
                  _listOfColors[Random().nextInt(_listOfColors.length)],
            ),
          ),
          title: Text(
            widget.motifRdv,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            maxLines: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.5,
            ),
          ),
          subtitle: Text(
            widget.lieuRdv,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            maxLines: 2,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          trailing: Container(
            decoration: BoxDecoration(),
            child: IconButton(
              onPressed: widget.onTapHandler,
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFEEEEEE),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
