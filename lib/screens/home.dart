import 'package:film_46/screens/allMovie.dart';
import 'package:film_46/screens/movieDetail.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Film_46"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
            child: Text(
              "Favori Filmler",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildMovieCard(
                    "film1", "The Shawshank Redemption (1994)", context),
                _buildMovieCard("film2", "The Godfather (1972)", context),
                _buildMovieCard("film3", "The Dark Knight (2008)", context),
                _buildMovieCard("film4", "Schindler's List (1993)", context),
                _buildMovieCard(
                    "film5",
                    "The Lord of the Rings: The Return of the King (2003)",
                    context),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Filmler",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllMoviesPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'Daha Fazla..',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                _buildMovieCard("film6", "Inception", context),
                _buildMovieCard("film7", "Interstellar", context),
                _buildMovieCard("film8", "Forrest Gump", context),
                _buildMovieCard("film9", "Pulp Fiction", context),
                _buildMovieCard("film10", "Fast and Furious 6", context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMovieCard(
      String imagePath, String movieTitle, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MovieDetailPage()),
          );
        },
        child: Container(
          width: 150.0,
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/$imagePath.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              movieTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
