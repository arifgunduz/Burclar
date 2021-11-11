import 'package:burc_rehberi/Model/burc.dart';
import 'package:burc_rehberi/burc_detay.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc ListelenenBurc;
  const BurcItem({required this.ListelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BurcDetay(
                        secilenBurc: ListelenenBurc,
                      )));
            },
            leading: Image.asset(
              "images/" + ListelenenBurc.burcKucukResim,
              width: 64,
              height: 64,
            ),
            title: Text(
              ListelenenBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              ListelenenBurc.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
