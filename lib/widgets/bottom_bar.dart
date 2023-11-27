import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      height: 70,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.view_carousel,
                size: 40,
                color: Colors.grey,
              ),
              Text(
                "Overview",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.collections,
                size: 40,
                color: Colors.grey,
              ),
              Text(
                "Budgets",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.transcribe,
                size: 40,
                color: Colors.grey,
              ),
              Text(
                "Transactions",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.report,
                size: 40,
                color: Colors.grey,
              ),
              Text(
                "Reports",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:ui_1/utils/size_config.dart';

// class BottomBar extends StatefulWidget {
//   final Function() home;
//   final Function() course;
//   final Function() profile;
//   final Function() video;

//   const BottomBar({
//     super.key,
//     required this.home,
//     required this.video,
//     required this.course,
//     required this.profile,
//   });
//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   String activeItem = "Home";
//   final String _home = "Home";
//   final String _course = "Course";
//   final String _video = "Video";
//   final String _profile = "Profile";
//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: const BoxDecoration(color: Colors.white),
//       child: Row(children: [
//         BButton(
//           title: _home,
//           icon: Icons.home,
//           isActive: activeItem == _home,
//           onTap: () {
//             if (activeItem != _home) {
//               setState(() => activeItem = _home);
//             }
//             widget.home();
//           },
//         ),
//         BButton(
//             onTap: () {
//               if (activeItem == _video) {
//                 setState(() => activeItem = _video);
//               }
//               widget.video();
//             },
//             icon: Icons.video_collection_rounded,
//             title: _video,
//             isActive: activeItem == _video),
//         BButton(
//             onTap: () {
//               if (activeItem == _course) {
//                 setState(() => activeItem = _course);
//               }
//               widget.course();
//             },
//             icon: Icons.category,
//             title: _course,
//             isActive: activeItem == _course),
//         BButton(
//             onTap: () {
//               if (activeItem == _profile) {
//                 setState(() => activeItem == _profile);
//               }
//               widget.profile();
//             },
//             icon: Icons.person,
//             title: _profile,
//             isActive: activeItem == _profile)
//       ]),
//     );
//   }
// }

// class BButton extends StatelessWidget {
//   final Function() onTap;
//   final IconData icon;
//   final String title;
//   final bool isActive;
//   const BButton(
//       {super.key,
//       required this.onTap,
//       required this.icon,
//       required this.title,
//       required this.isActive});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: MaterialButton(
//         height: 65.h,
//         onPressed: onTap,
//         child: Column(mainAxisSize: MainAxisSize.min, children: [
//           Icon(
//             icon,
//             color: isActive ? Colors.blue : Colors.black,
//           ),
//           SizedBox(
//             height: 5.h,
//           ),
//           Text(
//             title,
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//             style: TextStyle(color: isActive ? Colors.blue : Colors.black),
//           )
//         ]),
//       ),
//     );
//   }
// }
