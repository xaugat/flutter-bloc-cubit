import 'package:flutterbloc/data/network_service.dart';
import 'package:flutterbloc/presentation/models/datamodel.dart';

class Repository{
 Future <DataModel> fetchJsonData()async{
    var res = await GetData().fetchData();
    return DataModel.fromJson(res);
  }
}