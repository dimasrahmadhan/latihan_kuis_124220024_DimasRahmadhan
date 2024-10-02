import 'package:flutter/material.dart';
import 'dummy_menu.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  HomeScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text('Menu Makanan'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[500],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Selamat datang, $username!',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: foodMenuList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              foodMenuList[index].name,
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(foodMenuList[index].description),
                            Text('Harga: ${foodMenuList[index].price}'),
                            Text('Waktu memasak: ${foodMenuList[index].cookingTime}'),
                            Text('Kategori: ${foodMenuList[index].category}'),
                            SizedBox(height: 16),
                            Image.asset(foodMenuList[index].imageAsset),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}