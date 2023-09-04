import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Select extends StatefulWidget {
  const Select({super.key});
  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  bool _isShown = false;
  double _height = 80;
  final List<String> _countries = ['America', 'England', 'China', 'Australia'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isShown = !_isShown;
                _height = _isShown ? 200 : 80;
              });
            },
            child: Container(
              height: _height,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select Country'),
                      _isShown ? Text('T') : Text('F'),
                      Icon(Icons.arrow_circle_down),
                    ],
                  ),
                  Container(
                      height: 20,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: const Border(
                          top: BorderSide(),
                        ),
                      ),
                      child: ListView.builder(
                          itemCount: _countries.length,
                          itemBuilder: (context, index) {
                            return Text(_countries[index]);
                          })),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
