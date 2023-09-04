import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectWidget extends StatefulWidget {
  const SelectWidget({super.key});
  @override
  State<SelectWidget> createState() => _SelectWidgetState();
}

class _SelectWidgetState extends State<SelectWidget> {
  bool _isShown = false;
  double _height = 0;
  double _opacity = 0;
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
                _opacity = _isShown ? 1 : 0;
                _isShown = !_isShown;
                _height = _isShown ? 200 : 0;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Select Country'),
                  _isShown ? Text('T') : Text('F'),
                  Icon(Icons.arrow_circle_down),
                ],
              ),
            ),
          ),
          _isShown
              ? AnimatedOpacity(
                  duration: const Duration(milliseconds: 1000),
                  opacity: _opacity,
                  child: Container(
                      height: _height,
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
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
