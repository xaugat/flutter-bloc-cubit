import 'dart:convert';

import 'package:flutterbloc/cubit/cubit/datacubit_cubit.dart';
import 'package:flutterbloc/presentation/models/datamodel.dart';
import 'package:http/http.dart' as http;

class GetData{
  Future fetchData()async {
    var response = await http.get(Uri.parse('https://api.publicapis.org/entries'));
    var res = 
    jsonDecode(response.body);
    return res;
    
  }

}