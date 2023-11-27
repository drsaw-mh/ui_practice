import 'package:flutter/material.dart';
import 'package:ui_1/data/models/category.dart';
import 'package:ui_1/utils/constant.dart';
import 'package:ui_1/widgets/bottom_bar.dart';

class UI2 extends StatefulWidget {
  static const String route = '/';
  const UI2({super.key});

  @override
  State<UI2> createState() => _UI2State();
}

class _UI2State extends State<UI2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: Column(
        children: [
          SizedBox(
            height: MediaQueryData.fromView(View.of(context)).padding.top,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.search,
                  size: 40,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Seardh Gumtree",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            child: const Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.car_rental,
                            size: 40,
                            color: Colors.red,
                          ),
                          Text("Cars")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.sell,
                            size: 40,
                            color: Colors.red,
                          ),
                          Text("For Sale")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.home_filled,
                            size: 40,
                            color: Colors.red,
                          ),
                          Text("Property")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.work,
                            size: 40,
                            color: Colors.red,
                          ),
                          Text("Jobs")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.more_horiz_outlined,
                            size: 40,
                            color: Colors.red,
                          ),
                          Text("More")
                        ],
                      )
                    ]),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            height: 50,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("In your area"), Text("Bury St Edmunds")],
            ),
          ),
          Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: cats.length,
                  itemBuilder: (context, indext) => _buildCard(cats[indext]),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // crossAxisSpacing: 2,
                      // mainAxisSpacing: 2,
                      childAspectRatio: 0.6))),
          const BottomBar(),
        ],
      ),
    );
  }

  static Widget _buildCard(Category cat) {
    return Card(
      child: Container(
        // decoration: const BoxDecoration(color: Colors.blue, border: Border()),
        height: 600,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/${cat.image}",
              // height: 220,
              // width: 180,
              fit: BoxFit.contain,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${cat.name}",
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Text("This is the description for the picture"),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: const Row(
                children: [Text("#100"), Spacer(), Icon(Icons.thumb_up)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
