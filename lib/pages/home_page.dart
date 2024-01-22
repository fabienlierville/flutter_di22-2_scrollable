import 'package:flutter/material.dart';
import 'package:scrollable/pages/grid_view_page.dart';
import 'package:scrollable/pages/list_view_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Récupérer l'orientation
    Orientation orientation = MediaQuery.of(context).orientation;
    print(orientation);
    // Afficher la page selon l'orientation
    if(orientation == Orientation.portrait){
      return ListViewPage();
    }else{
      return GridViewPage();
    }

  }
}
