import 'package:flutter/material.dart';
import 'section.dart';
import 'project_card.dart';
import 'models/project.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Section(title: 'About Me', content: 'I am a software developer...'),
            Section(
              title: 'Projects',
              content: '',
              child: ProjectsSection(),
            ),
            Section(title: 'Contact', content: 'Get in touch with me...'),
          ],
        ),
      ),
    );
  }
}

class ProjectsSection extends StatelessWidget {
  final List<Project> projects = [
    Project(
      title: 'Project 1',
      description: 'Description of Project 1',
      imageUrl: 'https://via.placeholder.com/150',
      projectUrl: 'https://github.com/yourusername/project1',
    ),
    // Add more projects here
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: projects.map((project) => ProjectCard(project: project)).toList(),
    );
  }
}

