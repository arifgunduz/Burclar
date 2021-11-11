import 'package:burc_rehberi/Model/burc.dart';
import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriKaynsiginiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Burç Listesi'),
        ),
        body: Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return BurcItem(ListelenenBurc: tumBurclar[index]);
            },
            itemCount: tumBurclar.length,
          ),
        ));
  }

  List<Burc> veriKaynsiginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcOzellikleri = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcTarihleri = Strings.BURC_TARIHLERI[i];
      // koc1.png degerini olusturmak icin Koc-->koc-->ko1.png
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      //koc_buyuk1.png
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      Burc eklenecekBurc = Burc(burcAdi, burcTarihleri, burcOzellikleri,
          burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
