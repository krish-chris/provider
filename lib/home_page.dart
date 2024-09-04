import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/numbers_provider.dart';
import 'package:providerexample/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(builder: (context,numbersProviderModal,child) => Scaffold(
          appBar: AppBar(title: const Text('First Page'),),
          body: Column(
            children: [
              Text('LAST NUMBER : ${numbersProviderModal.numbers.last.toString()}'),
              Expanded(
                child: ListView.builder(itemCount: numbersProviderModal.numbers.length,itemBuilder: (context,index){
                  return Center(child: Text(numbersProviderModal.numbers[index].toString()));
                },),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Second()));
              }, child: const Text('Next Page'))
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){
            numbersProviderModal.addNumbersToList();
          },child: const Icon(Icons.add),),
        )
    );
  }
}