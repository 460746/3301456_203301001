import 'package:film_46/screens/movieDetail.dart';
import 'package:flutter/material.dart';

class ScienceMoviesPage extends StatelessWidget {
  const ScienceMoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bilim Kurgu Filmleri Filmleri'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('The Matrix (1999) '),
            subtitle: Text('Bilim Kurgu'),
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
            title: Text('Blade Runner (1982) '),
            subtitle: Text('Bilim Kurgu'),
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
            title: Text('Inception (2010)'),
            subtitle: Text('Bilim Kurgu'),
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
