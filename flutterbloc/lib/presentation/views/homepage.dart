import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/cubit/cubit/datacubit_cubit.dart';
import 'package:http/http.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
     BlocProvider.of<DatacubitCubit>(context).fetchData();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<DatacubitCubit, DatacubitState>(
        builder: (context, state) {

          if(state is !DatacubitLoaded){
            return CircularProgressIndicator();

          }
          return Center(
              child: ListView.builder(
                  itemCount: state.datas.entries!.length,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(state.datas.entries![index].category!),
                        subtitle: Text(state.datas.entries![index].description!),
                      ),
                    );
                  }));
        },
      ),
     
    );
  }
}
