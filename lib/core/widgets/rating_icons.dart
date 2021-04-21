import 'package:flutter/material.dart';

class RatingIcons extends StatefulWidget {
  double size;

  RatingIcons({@required this.size});
  @override
  _RatingIconsState createState() => _RatingIconsState();
}

class _RatingIconsState extends State<RatingIcons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow[800],
          size: widget.size,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[800],
          size: widget.size,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[800],
          size: widget.size,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[800],
          size: widget.size,
        ),
        Icon(
          Icons.star_outline,
          color: Colors.yellow[800],
          size: widget.size,
        )
      ],
    );
  }
}
