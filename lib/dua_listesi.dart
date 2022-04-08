import 'package:duarehber/data/strings.dart';
import 'package:duarehber/dua_item.dart';
import 'package:duarehber/model/dua.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class DuaListesi extends StatelessWidget {
  late List<Dua> tumDualar = [];
  DuaListesi() {
    tumDualar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DUA ÖĞRENİYORUM"),
          centerTitle: true,
        ),
        body: ListView(
          children:[ Column(
            children: [
              Container(
                child: Container(
                  child: ImageSlideshow(
                    children: [
                      Image.asset(
                        'assets/images/guzelresim.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/guzelresim.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/guzelresim.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return DuaItem(listDua: tumDualar[index]);  
                },
                itemCount: tumDualar.length,
              ),
            ],
          ),
        ])

        /* */
        );
  }

  List<Dua> veriKaynaginiHazirla() {
    List<Dua> gecici = [];
    for (int i = 0; i < 7; i++) {
      var duaAdi = Strings.DUA_AD[i];
      var duaSureNo = Strings.SURE_NO[i];
      var duaOzellik = Strings.DUA_OZELLIKLERI[i];
      Dua eklenecekDua = Dua(duaAdi, duaSureNo, duaOzellik);
      gecici.add(eklenecekDua);
    }
    return gecici;
  }
}
