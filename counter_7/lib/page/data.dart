import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/widgets/drawer.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataState();
}

class _MyDataState extends State<MyDataPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form"),
        ),
        // Menambahkan drawer menu
        drawer: const DrawerWidget(),
        body: ListView.builder(
          itemCount: Naro.contain.length,
          itemBuilder: (context, index) {
            final item = Naro.contain[index];
            return ListTile(
              title:Text(item.judul),subtitle:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[Text(item.nominal.toString()), Text(item.tipe)]),

            );
          },
        ));
  }
}