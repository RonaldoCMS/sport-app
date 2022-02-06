import 'package:flutter/cupertino.dart';
import 'package:football/http/http_request.dart';
import 'package:football/models/standing/league.dart';
import 'package:football/models/standing/standing.dart';

class Standing_ViewModel extends ChangeNotifier {
  List<Standing> get standing {
    List<Standing> toReturn = [];
    toReturn.sort((normal, order) => normal.rank!.compareTo(order.rank!));
    return toReturn;
  }

 Future<League?> getStading() async {
   var response = await HttpRequest.getStading(135, 2021);
   return response!.response!.first.league;
 }

}
