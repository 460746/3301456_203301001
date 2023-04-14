import 'package:film_46/screens/actionMovie.dart';
import 'package:film_46/screens/comedy.dart';
import 'package:film_46/screens/fear.dart';
import 'package:film_46/screens/science.dart';
import 'package:flutter/material.dart';

class MovieCategoriesPage extends StatelessWidget {
  const MovieCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategoriler'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            _buildCategoryTile(context, 'Aksiyon', ActionMoviesPage()),
            _buildCategoryTile(context, 'Komedi', ComedyMoviesPage()),
            _buildCategoryTile(context, 'Bilim Kurgu', ScienceMoviesPage()),
            _buildCategoryTile(context, 'Korku', FearMoviesPage()),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryTile(
      BuildContext context, String categoryName, Widget widget) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            categoryName,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
