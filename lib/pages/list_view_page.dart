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

  void infinityScroll() {
    //print("Position = ${scrollController.position.pixels} | Taille Max ${scrollController.position.maxScrollExtent}");

    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent * 0.90) {
      print("J'arrive à 90% de ma liste actuelle");
      List<Activite> shuffleActivite = List.from(activites);
      setState(() {
        shuffleActivite.forEach((element) {
          activites.add(element);
        });
      });
    }
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
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Scrollbar(
        child: ListView.separated(
            itemCount: activites.length,
            controller: scrollController,
            separatorBuilder: (context, index){
              if((index % 10)==0 && index != 0){
                return Container(height: 150,color: Colors.red,);
              }else{
                return Divider(color: Colors.grey,);
              }
            },
            itemBuilder: (context, index) {
              Activite activite = activites[index];
              return Dismissible(
                key: Key(activite.nom),
                background: Container(
                  color: Colors.red,
                  child: Row(
                    children: [
                      Icon(Icons.delete, color: Colors.white,),
                      Text("Supprimer")
                    ],
                  ),
                ),
                secondaryBackground: Container(
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.archive, color: Colors.white,),
                      Text("Archiver")
                    ],
                  ),
                ),
                onDismissed: (direction){
                  if(direction == DismissDirection.endToStart){
                    print("Archivage du mail");
                    // Todo interroger l'API pour archiver ...
                    setState(() {
                      activites.removeAt(index);
                    });
                  }else{
                    print("Suppression du mail");
                    // Todo interroger l'API pour suppprimer ...
                    setState(() {
                      activites.removeAt(index);
                    });
                  }
                },
                child: ListTile(
                  title: Text("Activité"),
                  subtitle: Text(activite.nom),
                  leading: Icon(activite.icone),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    print("Je vais vers l'activité : ${activite.nom}");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ActiviteDetailPage(activite: activite);
                    }));
                  },
                ),
              );
            }),
      ),
    );
  }
}
