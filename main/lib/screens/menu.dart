import 'package:flutter/material.dart';
import 'package:main/widgets/item_card.dart';
import 'package:main/widgets/left_drawer.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<InventoryItem> items = [
      InventoryItem("Lihat Item", Icons.checklist, Colors.red),
      InventoryItem("Tambah Item", Icons.add_shopping_cart, Colors.blue),
      InventoryItem("Logout", Icons.logout, Colors.green),
  ];

  @override
    Widget build(BuildContext context) {
        return Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.blue,
            flexibleSpace: Container(
              margin: const EdgeInsets.all(5), // Adjust the margin as needed
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.end, // align ke kanan appbar
                children: [
                  Text('Name  : Vincent Suhardi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Kelas : PBP F',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
          ),

          drawer: const LeftDrawer(),

          body: SingleChildScrollView(
            // Widget wrapper yang dapat discroll
            child: Padding(
              padding: const EdgeInsets.all(10.0), // Set padding dari halaman
              child: Column(
                // Widget untuk menampilkan children secara vertikal
                children: <Widget>[

                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                    child: Text(
                      'Bicycle Inventory', // Text yang menandakan toko
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Grid layout
                  GridView.count(
                    // Container pada card kita.
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((InventoryItem item) {
                      // Iterasi untuk setiap item
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),

        );
    }
}