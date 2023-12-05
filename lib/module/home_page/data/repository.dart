import 'api.dart';

class RepositoryFamilyHistoryFHx {
  Api api = Api();

  Future<List<dynamic>?> getData() async {
    List<dynamic>? result = await api.getData();
    return result;
  }
}
