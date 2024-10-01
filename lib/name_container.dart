import 'package:flutter/material.dart';

class NameContainer extends StatefulWidget {
  final String name;
  final String group;
  const NameContainer({super.key,  required this.name, required this.group});

  @override
  State<NameContainer> createState() => _NameContainerState();
}

class _NameContainerState extends State<NameContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 80,
      child: Stack(
              children: [
                Container(
                  width: 160,
                  height: 80,
                  decoration: BoxDecoration(
                          color: const Color(0xff14919B),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3), // Shadow color
                              offset: const Offset(0, 4), // Shadow position
                              blurRadius: 8, // Shadow blur radius
                              spreadRadius: 5, // Shadow spread radius
                            ),
                          ],
                        ),
                ),
                Column(
                  children: [
                    Container(
                        width: 150,
                        height: 30,
                        margin: const EdgeInsets.only(left: 5, top: 5),
                        decoration: BoxDecoration(
                          color: const Color(0xff0AD1C8),
                          borderRadius: BorderRadius.circular(10), // Rounded corners
                        ),
                        child: Text(
                          'Name: ${widget.name}',
                          textAlign: TextAlign.center,
                        ),
                    ),
                    Container(
                      width: 150,
                      height: 30,
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xff0AD1C8),
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Text(
                        'Group: ${widget.group}',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
    );
  }
}