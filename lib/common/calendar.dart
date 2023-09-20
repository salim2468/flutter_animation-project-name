import 'package:flutter/material.dart';

class CustomCalendar extends StatefulWidget {
  final double? borderRadius;
  final double? rightMargin;
  final double? leftMargin;
  final double? topMargin;
  final double? bottomMargin;
  final Color? borderColor;
  final String? label;
  final void Function(DateTime) onDateChanged;

  const CustomCalendar({
    super.key,
    this.borderRadius,
    this.rightMargin,
    this.leftMargin,
    this.topMargin,
    this.bottomMargin,
    this.borderColor,
    this.label,
    required this.onDateChanged,
  });

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  bool isShown = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      margin: EdgeInsets.only(
          right: widget.rightMargin ?? 0,
          left: widget.leftMargin ?? 0,
          top: widget.topMargin ?? 0,
          bottom: widget.bottomMargin ?? 0),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              isShown = !isShown;
              setState(() {});
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select Date',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
                ),
                const Icon(Icons.calendar_today),
              ],
            ),
          ),
          isShown
              ? CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2023),
                  lastDate: DateTime.now(),
                  onDateChanged: widget.onDateChanged)
              : const SizedBox(),
        ],
      ),
    );
  }
}
