import 'package:app_state_manager/bloc/counter.bloc.dart';
import 'package:app_state_manager/bloc/counter.cubit.dart';
import 'package:app_state_manager/pages/counter.bloc.page.dart';
import 'package:app_state_manager/pages/counter.cubit.page.dart';
import 'package:app_state_manager/pages/counter.provider.page.dart';
import 'package:app_state_manager/pages/counter.stateful.widget.dart';
import 'package:app_state_manager/provider/counter.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
void main() => runApp(MyApp());


//la gestion du state de l application est fait avec les cubit
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:[ 
        BlocProvider(create: (context) => CounterCubit(0)),
        BlocProvider(create: (context) => CounterBloc(),)
       ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.deepOrange
        
        ),
routes: {
  "/": (context) => CounterBlocPage()
},

        ),
    );
    }
  }








///ici la gestion du state a ete faut avec les provider
class MyApp1 extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(context)=>CounterState(),)
      ],
      child: MaterialApp(
        theme: ThemeData(
        primarySwatch: Colors.deepOrange
        
        ),
routes: {
  "/": (context) => CounterProviderPage()
},

        ),
    );
    }
  }
 