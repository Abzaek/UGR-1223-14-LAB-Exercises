import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Page 1",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Icon(Icons.search),
        actions: const [
          Icon(Icons.shopping_cart),
          Icon(Icons.notifications),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/tshirt.jpg',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BARDI Smart Light Bulb Lamp Bohlam LED WIFI RGBWW 12 watt Home IoT',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '5.0',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('(354)'),
                      Spacer(),
                      Icon(Icons.location_on),
                      Text('Brooklyn'),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                  Text(
                    'Variant',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Size:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      _VariantOption(text: 'XS', isSelected: true),
                      _VariantOption(text: 'S'),
                      _VariantOption(text: 'M'),
                      _VariantOption(text: 'L'),
                      _VariantOption(text: 'XL'),
                      _VariantOption(text: 'XXL'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Color:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      _VariantOption(text: 'Red', isSelected: true),
                      _VariantOption(text: 'Black'),
                      _VariantOption(text: 'Green'),
                      _VariantOption(text: 'White'),
                      _VariantOption(text: 'Blue'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Donec malesuada turpis sapien, et malesuada arcu consequat eget. '
                    'Phasellus convallis neque quis metus sollicitudin, eu placerat lorem convallis. '
                    'Curabitur id nulla ut dolor ullamcorper ultrices. '
                    'Praesent eget ultricies elit. Duis rutrum vestibulum purus vel molestie. '
                    'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. '
                    'Aliquam feugiat euismod libero et placerat. Proin dignissim turpis eu velit sodales, '
                    'a tincidunt sapien suscipit.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.save),
              color: Colors.green,
              iconSize: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 50),
              ),
              child: const Text(
                'Add to Shopping Cart',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _VariantOption extends StatelessWidget {
  final String text;
  final bool isSelected;

  const _VariantOption({
    required this.text,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.only(right: 10),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
