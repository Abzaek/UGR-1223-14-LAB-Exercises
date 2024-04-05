import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Order details'),
            leading: const Icon(Icons.arrow_back),
          ),
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.check_circle),
                        title: Text('Completed'),
                        subtitle: Text('completed on march 29th'),
                        trailing: Icon(Icons.navigate_next),
                      ),
                      ListTile(
                        leading: Text('Order ID'),
                        trailing: Text('UGR-1223-14'),
                      ),
                      ListTile(
                        leading: Text('Order Date'),
                        trailing: Text('March-24-2-24'),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  child: Column(
                    children: [
                      const Text(
                        'Purchased Items',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ListTile(
                        leading: Image.asset('../assets/img1.jpeg'),
                        title: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Blue T-Shirt\n',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Size: L\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: 'ETB 50.00',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        trailing: RichText(
                          text: const TextSpan(children: [
                            TextSpan(text: 'Color:'),
                            TextSpan(text: ' Yellow\n'),
                            TextSpan(text: 'Qty:'),
                            TextSpan(text: ' 1'),
                          ]),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset('../assets/img1.jpeg'),
                        title: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Blue T-Shirt\n',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Size: L\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: 'ETB 50.00',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        trailing: RichText(
                          text: const TextSpan(children: [
                            TextSpan(text: 'Color:'),
                            TextSpan(text: ' Yellow\n'),
                            TextSpan(text: 'Qty:'),
                            TextSpan(text: ' 1'),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Card(
                child: Column(
                  children: [
                    Text('Shipping Information'),
                    ListTile(
                      leading: Text('name'),
                      trailing: Text(
                        'Jacob Jones',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text('phone nubmer'),
                      trailing: Text(
                        '1234556',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text('address'),
                      trailing: Text(
                        'abcd',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text('shipment'),
                      trailing: Text(
                        'Economy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(20),
                  child: Card(
                    child: Column(
                      children: [
                        Text('Payment Information'),
                        ListTile(
                          leading: Text('Payment method'),
                          trailing: Text('Cash on delivary'),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
