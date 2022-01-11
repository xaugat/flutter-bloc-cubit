part of 'datacubit_cubit.dart';

@immutable
abstract class DatacubitState {}

class DatacubitInitial extends DatacubitState {

}

class DatacubitLoaded extends DatacubitState{
  final DataModel datas;
  DatacubitLoaded(this.datas);
  
}
