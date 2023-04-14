import 'package:film_46/screens/movieDetail.dart';
import 'package:flutter/material.dart';

class ComedyMoviesPage extends StatelessWidget {
  const ComedyMoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Komedi Filmleri'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('The Hangover (2009)'),
            subtitle: Text('Komedi'),
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
            title: Text('Superbad (2007)'),
            subtitle: Text('Komedi'),
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
            title: Text('Bridesmaids (2011)'),
            subtitle: Text('Komedi'),
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
