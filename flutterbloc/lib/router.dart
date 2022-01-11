import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/cubit/cubit/datacubit_cubit.dart';
import 'package:flutterbloc/presentation/errorpage.dart';
import 'package:flutterbloc/data/repository.dart';
import 'package:flutterbloc/presentation/userpage.dart';
import 'package:flutterbloc/presentation/views/homepage.dart';

class AppRouter {
   late Repository repository;
  AppRouter(){
    repository = Repository();
  }
 

  Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => DatacubitCubit(repository),
                  child: MyHomePage(title: 'hello'),
                ));
      case "/userpage":
        return MaterialPageRoute(builder: (context) => UserPage());

      default:
        return MaterialPageRoute(builder: (context) => ErrorPage());
    }
  }
}
