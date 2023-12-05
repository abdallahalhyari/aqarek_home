import 'dart:convert';
import 'package:aqarek_home/model/home_page_model.dart';
import 'package:http/http.dart';

class Api {
  Future<List<dynamic>?> getData() async {
    List<HeaderGallery> listOfHeaderGallery = [];
    List<HeaderOffers> listOfHeaderOffers = [];
    List<HeaderWidgets> listOfHeaderWidgets = [];
    List<Partners> listOfPartners = [];
    List<LatestProjectsItems> listOfLatestProjectsItems = [];
    List<UnitsItems> listOfUnitsItems = [];
    List<ProjectsGroups> listOfProjectsGroups = [];
    List<Layouts> listOfLayouts = [];
    List<Housingunits> listOfHousingunits = [];
    List<Categories> listOfCategories = [];
    List<Cities> listOfCities = [];
    List<Projects> listOfProjects = [];

    Response response = await get(
        Uri.parse(
            'http://207.127.99.232:8080/ords/aqarek/property/home?deviceId'),
        headers: {
          "clientId": "31",
          "langId": "en",
          "sharedKey": "Ftjj#-ddtrum5261_gfRdCXooO#165?*234sEEd",
        });

    if (response.statusCode == 200) {
      Map<dynamic, dynamic> body = json.decode(response.body);
// //!------------------------------------------------------------------------
//       Map<String, dynamic> headerGallery = body["headerGallery"];
//       listOfHeaderGallery.add(HeaderGallery.fromJson(headerGallery));
// //!------------------------------------------------------------------------
//       Map<String, dynamic> headerOffers = body["headerOffers"];
//       listOfHeaderOffers.add(HeaderOffers.fromJson(headerOffers));
// //!------------------------------------------------------------------------
//       Map<String, dynamic> headerWidgets = body["headerWidgets"];
//       listOfHeaderWidgets.add(HeaderWidgets.fromJson(headerWidgets));
// //!------------------------------------------------------------------------
//       Map<String, dynamic> partners = body["partners"];
//       listOfPartners.add(Partners.fromJson(partners));
// //!------------------------------------------------------------------------
//       Map<String, dynamic> latestProjectsItems = body["items"];
//       listOfLatestProjectsItems
//           .add(LatestProjectsItems.fromJson(latestProjectsItems));
// //!------------------------------------------------------------------------
//       Map<String, dynamic> unitsItems = body["items"];
//       listOfUnitsItems.add(UnitsItems.fromJson(unitsItems));
// //!------------------------------------------------------------------------
//       Map<String, dynamic> projectsGroups = body["projectsGroups"];
//       listOfProjectsGroups.add(ProjectsGroups.fromJson(projectsGroups));
// //!------------------------------------------------------------------------
//       Map<String, dynamic> layouts = body["layouts"];
//       listOfLayouts.add(Layouts.fromJson(layouts));
// //!------------------------------------------------------------------------
//       Map<String, dynamic> housingunits = body["housingunits"];
//       listOfHousingunits.add(Housingunits.fromJson(housingunits));
// //!------------------------------------------------------------------------
//       Map<String, dynamic> categories = body["categories"];
//       listOfCategories.add(Categories.fromJson(categories));
// //!------------------------------------------------------------------------
//       Map<String, dynamic> cities = body["cities"];
//       listOfCities.add(Cities.fromJson(cities));
// //!------------------------------------------------------------------------
//       Map<String, dynamic> projects = body["projects"];
//       listOfProjects.add(Projects.fromJson(projects));

      //return
      ///////////
    }
    return [];
  }
}
