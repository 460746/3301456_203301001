import 'package:flutter/material.dart';

import 'movieDetail.dart';

class AllMoviesPage extends StatelessWidget {
  const AllMoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tüm Filmler'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MovieDetailPage()),
              );
            },
            child: Card(
              child: ListTile(
                leading: Image.asset(
                  movies[index]['imagePath']!,
                  width: 50,
                  height: 50,
                ),
                title: Text(movies[index]['title']!),
                subtitle: Text('Year: ${movies[index]['year']}'),
                trailing: Text('Rating: ${movies[index]['rating']}'),
              ),
            ),
          );
        },
      ),
    );
  }
}

List<Map<String, String>> movies = [
  {
    "title": "The Shawshank Redemption",
    "imagePath": "assets/film1.jpg",
    "year": "1994",
    "rating": "9.3"
  },
  {
    "title": "The Godfather",
    "imagePath": "assets/film2.jpg",
    "year": "1972",
    "rating": " 9.2"
  },
  {
    "title": "The Godfather: Part II",
    "imagePath": "assets/film3.jpg",
    "year": "1974",
    "rating": "9.0"
  },
  {
    "title": "The Dark Knight",
    "imagePath": "assets/film4.jpg",
    "year": "2008",
    "rating": "9.0"
  },
  {
    "title": "12 Angry Men",
    "imagePath": "assets/film5.jpg",
    "year": "1957",
    "rating": "8.9"
  },
  {
    "title": "Schindler's List",
    "imagePath": "assets/film6.jpg",
    "year": "1993",
    "rating": "8.9"
  },
  {
    "title": "The Lord of the Rings: The Return of the King",
    "imagePath": "assets/film7.jpg",
    "year": "2003",
    "rating": "8.9"
  },
  {
    "title": "Pulp Fiction",
    "imagePath": "assets/film9.jpg",
    "year": "1994",
    "rating": "8.9"
  },
  {
    "title": "The Good, the Bad and the Ugly",
    "imagePath": "assets/film9.jpg",
    "year": "1966",
    "rating": "8.8"
  },
  {
    "title": "Fight Club",
    "imagePath": "assets/film10.jpg",
    "year": "1999",
    "rating": "8.8"
  },
];  // diğer filmler buraya eklenebilir];
