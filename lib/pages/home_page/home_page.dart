import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:peladeiro/entities/peladeiro_entity.dart';
import 'package:peladeiro/pages/peladeiro_page/peladeiro_page.dart';
import 'package:peladeiro/pages/peladeiro_page/peladeiro_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final store = GetIt.instance<PeladeiroStore>();

  openModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: PeladeiroPage(),
        );
      },
    );
  }
  
  Widget listTileComponent(PeladeiroEntity peladeiro) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      child: ListTile(
        dense: true,
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: Text(
            peladeiro.nome[0],
            style: TextStyle(color: Colors.white),
          ),
        ),
        title: Text(
          peladeiro.nome,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(peladeiro.posicaoOrDefault),
        onTap: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => openModal(),
        child: const Icon(Icons.add),
      ),
      body: ValueListenableBuilder<List<PeladeiroEntity>>(
        valueListenable: store.peladeiros,
        builder: (context, peladeiros, _) {
          return ListView.builder(
            itemCount: peladeiros.length,
            itemBuilder: (context, index) {
              return listTileComponent(peladeiros[index]);
            },
          );
        },
      ),
    );
  }
}
