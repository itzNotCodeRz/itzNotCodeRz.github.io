import 'package:flutter/material.dart';
import 'models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  ProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(project.imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              project.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(project.description),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Open project URL
                // You can use url_launcher package to open URLs
              },
              child: Text('View Project'),
            ),
          ),
        ],
      ),
    );
  }
}

