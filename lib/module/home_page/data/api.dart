import 'dart:convert';
import 'package:aqarek_home/model/home_page_model.dart';
import 'package:http/http.dart';

class Api {
  Future<HomePageModel> getData() async {
    HomePageModel? homePageModel;

    Response response = await get(
        Uri.parse(
            'http://207.127.99.232:8080/ords/aqarek/property/home?deviceId'),
        headers: {
          "clientId": "31",
          "langId": "ar",
          "sharedKey": "Ftjj#-ddtrum5261_gfRdCXooO#165?*234sEEd",
        });

    if (response.statusCode == 200) {
      homePageModel = HomePageModel.fromJson(json.decode(response.body));
    }
    return homePageModel!;
  }
}
