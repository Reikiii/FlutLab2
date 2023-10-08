import 'package:flutter/material.dart';
import 'ui/produk_form.dart';
import 'ui/produk_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Produk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Produk'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Kode Produk"),
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Nama Produk"),
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Harga"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to ProdukDetail screen when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProdukDetail(
                      kodeProduk: "ABC123", // Replace with your data
                      namaProduk: "Example Product", // Replace with your data
                      harga: 100, // Replace with your data
                    ),
                  ),
                );
              },
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
