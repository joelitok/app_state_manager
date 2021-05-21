import 'package:app_state_manager/bloc/counter.cubit.dart';
import 'package:app_state_manager/provider/counter.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class CounterCubitPage extends StatelessWidget {
@override
Widget build(BuildContext context) {


return Scaffold(

appBar: AppBar(title: Text('counter Cubit'),
),

body:BlocBuilder<CounterCubit, int>(
  builder: (context,state){
    return  Center(
  
        child: Text('Counter Value => $state ',
        style: Theme.of(context).textTheme.headline4,
  
    
  
    ),);
  },
)
,

floatingActionButton: Row(
mainAxisAlignment: MainAxisAlignment.end,  
  children: [
FloatingActionButton(
child: Icon(Icons.remove),  

onPressed:(){
 context.read<CounterCubit>().decrement();

  
}),
SizedBox(width: 10,),
FloatingActionButton(
child: Icon(Icons.add),  

onPressed:(){
  context.read<CounterCubit>().increment();

})

  ],
),
     
 );
}

}
  
