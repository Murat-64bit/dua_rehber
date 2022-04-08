import 'package:duarehber/dua_detay.dart';
import 'package:duarehber/model/dua.dart';
import 'package:flutter/material.dart';

class DuaItem extends StatelessWidget {
  final Dua listDua;
  const DuaItem({required this.listDua, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      color: Colors.green.shade100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DuaDetay(listDua: listDua),
            ),
          );
        },
        leading: CircleAvatar(
            child: Image.asset(
          'assets/images/diniLogo.png',
          width: 64,
          height: 64,
        )),
        title: Text(
          "Dua Adı: " + listDua.duaAdi,
          style: myTextStyle.headline6,
        ),
        subtitle: Text(
          "Sure No: " + listDua.duaSureNo,
          style: myTextStyle.subtitle1,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
