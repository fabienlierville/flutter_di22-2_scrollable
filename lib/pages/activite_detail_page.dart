import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrollable/models/activite.dart';

class ActiviteDetailPage extends StatefulWidget {
  Activite activite;
  ActiviteDetailPage({super.key, required this.activite});

  @override
  State<ActiviteDetailPage> createState() => _ActiviteDetailPageState();
}

class _ActiviteDetailPageState extends State<ActiviteDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.activite.nom),
        leading: Icon(widget.activite.icone),
      ),
    );
  }
}
