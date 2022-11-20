
import 'package:flutter/material.dart';
import 'package:flutter_framework/presentation/controllers/categorycontroller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<int> colorCodes = <int>[600, 500, 100];
  CategoryController cc = CategoryController();

  @override
  void initState() {
    cc.getCategoriesFromApi();
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: cc.categoryList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.amber[colorCodes[index]],
                  child:
                      Center(child: Text(cc.categoryList[index].name.toString())),
                );
              }),
        ),
      ),
    );
  }
}
