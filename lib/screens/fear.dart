import 'package:film_46/screens/movieDetail.dart';
import 'package:flutter/material.dart';

class FearMoviesPage extends StatelessWidget {
  const FearMoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Korku Filmleri'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('The Shining (1980)'),
            subtitle: Text('Korku'),
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
            title: Text('Get Out (2017)'),
            subtitle: Text('Korku'),
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
            title: Text('A Quiet Place (2018)'),
            subtitle: Text('Korku'),
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
