import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeWork());
  }
}

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          leading: IconButton(
            onPressed: () {
              print("Menü ikonuna tıklandı!");
            },
            icon: const Icon(
              Icons.menu_outlined,
              color: Color(0xFFBDF5F2),
              size: 30,
            ),
          ),
          title: const Text(
            "Hi-Kod",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                print("İnsan ikonuna tıklandı!");
              },
              icon: const Icon(
                Icons.person,
                color: Color(0xFFBDF5F2),
                size: 30,
              ),
            ),
          ],
        ),
        body: Center(
          child: Container(
            color: const Color(0xFFBDF5F2),
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    "Hello World",
                    style: TextStyle(
                      color: Color(0xFFBDF5F2),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
