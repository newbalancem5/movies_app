// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/movie/movie_bloc.dart';
import 'package:movies_app/bloc/movie/movie_event/movie_event.dart';
import 'package:movies_app/ui/movie_search_page.dart';
import 'movie_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [const MovieListPage(), SearchPage()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Сбрасываем состояние поиска при переключении на вкладку "Главная"
    if (index == 0) {
      context.read<MovieBloc>().add(const MovieEvent.clearSearch());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Поиск',
          ),
        ],
      ),
    );
  }
}
