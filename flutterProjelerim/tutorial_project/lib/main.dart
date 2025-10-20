import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(//theme = temayı kasteder ve uygulama tasarım özelliklerini tutar
      primaryColor: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Başlık'),
          ),         
        body: Text(
          'Merhaba Dünya',
          style: TextStyle(
            color: Colors.red, fontSize: 24, fontWeight: FontWeight.w500
          ),
          ),
        floatingActionButton: FloatingActionButton(//bu buton standart olarak uygulamanı sağ alt tarafında gözükür
          onPressed: () {//onPressed anlamı geriye herhangi  bir değer döndürmeyen bir parametre
            debugPrint('Tıklandı');
          },
          backgroundColor: Colors.red,
          child: Icon(Icons.account_circle_rounded,
          color: Colors.black,
          ),//child metodu her zaman FloatingActionButtonun en sonunda yer almalıdır aksi takdirde uyarı verir 
        ),
      ),
    );
  }
}
