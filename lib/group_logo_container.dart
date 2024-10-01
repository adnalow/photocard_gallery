import 'package:flutter/material.dart';

class GroupLogoContainer extends StatefulWidget {
  final String groupName;

  const GroupLogoContainer({super.key, required this.groupName});

  @override
  State<GroupLogoContainer> createState() => _GroupLogoContainerState();
}

class _GroupLogoContainerState extends State<GroupLogoContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Makes the container circular
                color:  const Color(0xff14919B),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Shadow color
                    offset: const Offset(0, 4), // Shadow position
                    blurRadius: 8, // Shadow blur radius
                    spreadRadius: 5, // Shadow spread radius
                  ),
                ], // Background color
              ),
            ),
          ),
          Center(
            child: ClipOval(
            child: SizedBox(
              width: 80,
              height: 80,
              child: Image.asset(
                'assets/images/${widget.groupName}.jpg',
                fit: BoxFit.cover,
              ),
            ),
                    ),
          ),
        ],
      ),
    );
    
    
  }
}


