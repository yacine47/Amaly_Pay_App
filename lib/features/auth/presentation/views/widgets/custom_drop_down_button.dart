import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final String hintText;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  const CustomDropdownButton({
    super.key,
    required this.hintText,
    required this.items,
    required this.onChanged,
  });

  @override
  CustomDropdownButtonState createState() => CustomDropdownButtonState();
}

class CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(36), 
        border: Border.all(color: Colors.grey), 
      ),
      child: DropdownButtonHideUnderline(
        // Removes the default underline
        child: DropdownButton<String>(
          value: selectedValue,

          hint: Text(widget.hintText),
          items: widget.items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
            });
            widget.onChanged(value);
          },

          icon: const Icon(
            Icons.arrow_drop_down,
            size: 40, 
            color: Colors.black,
          ),
          isExpanded: true, 
          dropdownColor:
              Colors.white, 
          borderRadius:
              BorderRadius.circular(36), 
        ),
      ),
    );
  }
}
