import 'package:app_state_manager/provider/counter.state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatelessWidget {
@override
Widget build(BuildContext context) {

CounterState counterState=Provider.of<CounterState>(context,listen:false);  
return Scaffold(

appBar: AppBar(title: Text('counter Provider'),
),

body:Consumer<CounterState>(
  builder: (context,counterState,child){
    return Center(
      child: Text('Counter Value =>${counterState.counter} ',
      style: Theme.of(context).textTheme.headline4,
  
  ),);
  },
  
),
floatingActionButton: Row(
mainAxisAlignment: MainAxisAlignment.end,  
  children: [
FloatingActionButton(
child: Icon(Icons.remove),  

onPressed:(){
 //Provider.of<CounterState>(context).decrement();
 counterState.decrement();
  
}),
SizedBox(width: 10,),
FloatingActionButton(
child: Icon(Icons.add),  

onPressed:(){
 
 counterState.increment();
})

  ],
),
      );
    }
  }
