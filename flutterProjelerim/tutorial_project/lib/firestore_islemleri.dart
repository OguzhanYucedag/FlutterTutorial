import 'dart:async';
// import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

class FirestoreIslemleri extends StatefulWidget {
  const FirestoreIslemleri({super.key});

  @override
  State<FirestoreIslemleri> createState() => _FirestoreIslemleriState();
}

class _FirestoreIslemleriState extends State<FirestoreIslemleri> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // StreamSubscription? _userSubscribe;
  @override
  Widget build(BuildContext context) {
    //IDLer
    //debugPrint(_firestore.collection('users').id);
    //debugPrint(_firestore.collection('users').doc().id);
    return Scaffold(
      appBar: AppBar(title: const Text('Firestore Islemleri')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => veriEklemeAdd(),
              child: const Text('Veri Ekle Add'),
            ),
            ElevatedButton(
              onPressed: () => veriEklemeSet(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('Veri Ekle Set'),
            ),
          ],
        ),
      ),
    );
  }

  void veriEklemeAdd() async {
    Map<String, dynamic> _eklenecekKurum = <String, dynamic>{};
    _eklenecekKurum['isim'] = 'ogi';
    _eklenecekKurum['yas'] = '22';
    _eklenecekKurum['createdAt'] = FieldValue.serverTimestamp();

    await _firestore.collection('users').add(_eklenecekKurum);
  }

  void veriEklemeSet() {}
}
