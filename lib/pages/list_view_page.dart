import 'package:flutter/material.dart';
import 'package:scrollable/models/activite.dart';
import 'package:scrollable/pages/activite_detail_page.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Activite> activites = [
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Jeux vidéo", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Jeux vidéo", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Jeux vidéo", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Jeux vidéo", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Jeux vidéo", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
    Activite(nom: "Vélo", icone: Icons.directions_bike),
    Activite(nom: "Peinture", icone: Icons.palette),
    Activite(nom: "Golf", icone: Icons.golf_course),
    Activite(nom: "Jeux vidéo", icone: Icons.gamepad),
    Activite(nom: "Bricolage", icone: Icons.build),
  ];
  ScrollController scrollController = ScrollController();

  void infinityScroll(){
    print("Position = ${scrollController.position.pixels} | TAille Max ${scrollController.position.maxScrollExtent}");

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(infinityScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View"),),
      body: ListView.builder(
          itemCount: activites.length,
          controller: scrollController,
          itemBuilder: (context, index){
            Activite activite = activites[index];
            return ListTile(
              title: Text("Activité"),
              subtitle: Text(activite.nom),
              leading: Icon(activite.icone),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                print("Je vais vers l'activité : ${activite.nom}");
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return ActiviteDetailPage(
                          activite: activite
                      );
                    })
                );
              },
            );
          }
      ),
    );
  }
}
