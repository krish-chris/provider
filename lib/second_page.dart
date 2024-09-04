import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'numbers_provider.dart';

class Second extends StatefulWidget {
  const Second({super.key,});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(builder: (context,numbersProviderModal,child) => Scaffold(
      appBar: AppBar(title: const Text('Second Page'),),
      body: Column(
        children: [
          Text('LAST NUMBER : ${numbersProviderModal.numbers.last.toString()}'),
          Expanded(
            child: ListView.builder(itemCount: numbersProviderModal.numbers.length,itemBuilder: (context,index){
              return Center(child: Text(numbersProviderModal.numbers[index].toString()));
            },),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        numbersProviderModal.addNumbersToList();
      },child: const Icon(Icons.add),),
    ));
  }
}
