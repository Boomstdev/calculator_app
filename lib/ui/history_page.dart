import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/provider/calculator_provider.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatefulWidget {

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    CalculatorProvider calculatorProvider = Provider.of<CalculatorProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Color(0xFF06121F),
      ),
      body: Container(
        color: Color(0xFF06121F),
        child: ListView.builder(
          itemCount: calculatorProvider.history.length,
          itemBuilder: (context, int index){
            var item = calculatorProvider.history[index];
            return Container(
              child: ListTile(title: Text(item,style: TextStyle(color: Colors.white),)),
            );
        }),
      ),
    );
  }
}