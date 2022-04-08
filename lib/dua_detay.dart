import 'package:duarehber/model/dua.dart';
import 'package:flutter/material.dart';

class DuaDetay extends StatelessWidget {
  final Dua listDua;
  const DuaDetay({required this.listDua, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              backgroundColor: Colors.green.shade900,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(listDua.duaAdi + " Duası"),
                centerTitle: true,
                background: Image.asset(
                  "assets/images/guzelresim.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Text(listDua.duaOzellikler,
                    style: Theme.of(context).textTheme.subtitle2),padding: EdgeInsets.all(15),
              ),
            )
          ],
        ));
  }
}
