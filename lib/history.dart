import 'package:cincailah/history2.dart';
import 'package:cincailah/home.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xfff55951),
        centerTitle: true,
        title: const Text('Library', style: TextStyle(color: Colors.black)),
        leading: InkWell(
          onTap: (){
            Navigator.push(context,  MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          child: const Icon(Icons.arrow_back, color: Colors.black),
        ),

      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Expanded(
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Center(
                            child: Text('History Count : 15'),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HistoryPage2()),
                        );
                      },
                      child: Expanded(
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Center(
                            child: Text('Recent History'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, 'images/1.jpg', 'SheKee Sarawak Kolo Mee'),
                    _buildImageContainer(context, 'images/2.jpg', 'Hari Hari Nanyang Kopitiam'),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, 'images/3.jpg', 'Restoran Lemon Tree'),
                    _buildImageContainer(context, 'images/4.jpg', 'Restoran Hong Sheng Best'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageContainer(BuildContext context, String imagePath, String title) {
    return Expanded(
      child: Container(
        height: 270,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black54,
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
