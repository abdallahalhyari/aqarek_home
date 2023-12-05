import 'package:aqarek_home/model/home_page_model.dart';

import 'api.dart';

class Repository {
  Api api = Api();

  Future<HomePageModel> getData() async {
    HomePageModel? result = await api.getData();
    return result;
  }
}
