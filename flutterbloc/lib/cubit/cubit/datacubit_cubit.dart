import 'package:bloc/bloc.dart';
import 'package:flutterbloc/data/network_service.dart';
import 'package:flutterbloc/data/repository.dart';
import 'package:flutterbloc/presentation/models/datamodel.dart';
import 'package:meta/meta.dart';

part 'datacubit_state.dart';

class DatacubitCubit extends Cubit<DatacubitState> {
  Repository repository;
  DatacubitCubit(this.repository) : super(DatacubitInitial());

 fetchData(){
 repository.fetchJsonData().then((value) => {
   emit (DatacubitLoaded(value)),

 });
   

 


  }

 
}
