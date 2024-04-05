import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "page 1",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.question_mark,
              color: Colors.white,
            ),
            Text(
              'Tracker',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.notification_add,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/coffee.jpg',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Robert Steven',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.car_crash,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'B 2455 UJD | 0180 ',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Text(
                  'log out',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Online',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 1,
                  height: 15,
                  color: Colors.grey,
                ),
                const SizedBox(width: 5),
                const Text(
                  'Battery : 90%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                20,
                (index) {
                  return Component(
                    iconData: Icons.star_rate_sharp,
                    text: 'Component ${index + 1}',
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Component extends StatelessWidget {
  final IconData iconData;
  final String text;

  const Component({
    required this.iconData,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 60,
            color: Colors.blue,
          ),
          const SizedBox(height: 2),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
