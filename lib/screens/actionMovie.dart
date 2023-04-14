import 'package:film_46/screens/movieDetail.dart';
import 'package:flutter/material.dart';

class ActionMoviesPage extends StatelessWidget {
  const ActionMoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aksiyon Filmleri'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('John Wick (2014)'),
            subtitle: Text('Aksiyon'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MovieDetailPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('Die Hard (1988)'),
            subtitle: Text('Aksiyon'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MovieDetailPage()),
              );
              // Buraya film detay sayfasına yönlendirme yapabilirsiniz.
            },
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('Mad Max: Fury Road (2015)'),
            subtitle: Text('Aksiyon'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MovieDetailPage()),
              );
              // Buraya film detay sayfasına yönlendirme yapabilirsiniz.
            },
          ),
        ],
      ),
    );
  }
}
