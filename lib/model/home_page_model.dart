class HomePageModel {
  String? assistantTilte;
  String? assistantSubTilte;
  String? assistantImageUrl;
  String? fundingTilte;
  String? fundingSubTilte;
  String? fundingImageUrl;
  List<HeaderGallery>? headerGallery;
  List<HeaderOffers>? headerOffers;
  List<HeaderWidgets>? headerWidgets;
  String? partnerssectiontilte;
  List<Partners>? partners;
  String? latestprojectssectiontilte;
  LatestProjects? latestProjects;
  String? unitssectiontilte;
  Units? units;
  List<ProjectsGroups>? projectsGroups;
  List<Lastseen>? lastseen;
  Filterdata? filterdata;
  int? showfilterdata;
  String? lastseensectiontitle;
  int? showAssistant;
  int? notificationCount;
  int? showPartners;
  int? showOffers;
  int? showUnits;
  int? showLatestProjects;
  int? showLastSeen;
  int? showFundingEligibility;
  int? showprojectsGroups;

  HomePageModel({
    this.assistantTilte,
    this.assistantSubTilte,
    this.assistantImageUrl,
    this.fundingTilte,
    this.fundingSubTilte,
    this.fundingImageUrl,
    this.headerGallery,
    this.headerOffers,
    this.headerWidgets,
    this.partnerssectiontilte,
    this.partners,
    this.latestprojectssectiontilte,
    this.latestProjects,
    this.unitssectiontilte,
    this.units,
    this.projectsGroups,
    this.lastseen,
    this.filterdata,
    this.showfilterdata,
    this.lastseensectiontitle,
    this.showAssistant,
    this.notificationCount,
    this.showPartners,
    this.showOffers,
    this.showUnits,
    this.showLatestProjects,
    this.showLastSeen,
    this.showFundingEligibility,
    this.showprojectsGroups,
  });

  HomePageModel.fromJson(Map<String, dynamic> json) {
    assistantTilte = json['assistantTilte'];
    assistantSubTilte = json['assistantSubTilte'];
    assistantImageUrl = json['assistantImageUrl'];
    fundingTilte = json['fundingTilte'];
    fundingSubTilte = json['fundingSubTilte'];
    fundingImageUrl = json['fundingImageUrl'];
    if (json['headerGallery'] != null) {
      headerGallery = <HeaderGallery>[];
      json['headerGallery'].forEach((v) {
        headerGallery!.add(HeaderGallery.fromJson(v));
      });
    }
    if (json['headerOffers'] != null) {
      headerOffers = <HeaderOffers>[];
      json['headerOffers'].forEach((v) {
        headerOffers!.add(HeaderOffers.fromJson(v));
      });
    }
    if (json['headerWidgets'] != null) {
      headerWidgets = <HeaderWidgets>[];
      json['headerWidgets'].forEach((v) {
        headerWidgets!.add(HeaderWidgets.fromJson(v));
      });
    }
    partnerssectiontilte = json['partnerssectiontilte'];
    if (json['partners'] != null) {
      partners = <Partners>[];
      json['partners'].forEach((v) {
        partners!.add(Partners.fromJson(v));
      });
    }
    latestprojectssectiontilte = json['latestprojectssectiontilte'];
    latestProjects = json['latestProjects'] != null
        ? LatestProjects.fromJson(json['latestProjects'])
        : null;
    unitssectiontilte = json['unitssectiontilte'];
    units = json['units'] != null ? Units.fromJson(json['units']) : null;
    if (json['projectsGroups'] != null) {
      projectsGroups = <ProjectsGroups>[];
      json['projectsGroups'].forEach((v) {
        projectsGroups!.add(ProjectsGroups.fromJson(v));
      });
    }
    if (json['lastseen'] != null) {
      lastseen = <Lastseen>[];
      json['lastseen'].forEach((v) {
        lastseen!.add(Lastseen.fromJson(v));
      });
    }
    filterdata = json['filterdata'] != null
        ? Filterdata.fromJson(json['filterdata'])
        : null;
    showfilterdata = json['showfilterdata'];
    lastseensectiontitle = json['lastseensectiontitle'];
    showAssistant = json['showAssistant'];
    notificationCount = json['notificationCount'];
    showPartners = json['showPartners'];
    showOffers = json['showOffers'];
    showUnits = json['showUnits'];
    showLatestProjects = json['showLatestProjects'];
    showLastSeen = json['showLastSeen'];
    showFundingEligibility = json['showFundingEligibility'];
    showprojectsGroups = json['showprojectsGroups'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['assistantTilte'] = assistantTilte;
    data['assistantSubTilte'] = assistantSubTilte;
    data['assistantImageUrl'] = assistantImageUrl;
    data['fundingTilte'] = fundingTilte;
    data['fundingSubTilte'] = fundingSubTilte;
    data['fundingImageUrl'] = fundingImageUrl;
    if (headerGallery != null) {
      data['headerGallery'] = headerGallery!.map((v) => v.toJson()).toList();
    }
    if (headerOffers != null) {
      data['headerOffers'] = headerOffers!.map((v) => v.toJson()).toList();
    }
    if (headerWidgets != null) {
      data['headerWidgets'] = headerWidgets!.map((v) => v.toJson()).toList();
    }
    data['partnerssectiontilte'] = partnerssectiontilte;
    if (partners != null) {
      data['partners'] = partners!.map((v) => v.toJson()).toList();
    }
    data['latestprojectssectiontilte'] = latestprojectssectiontilte;
    if (latestProjects != null) {
      data['latestProjects'] = latestProjects!.toJson();
    }
    data['unitssectiontilte'] = unitssectiontilte;
    if (units != null) {
      data['units'] = units!.toJson();
    }
    if (projectsGroups != null) {
      data['projectsGroups'] = projectsGroups!.map((v) => v.toJson()).toList();
    }
    if (lastseen != null) {
      data['lastseen'] = lastseen!.map((v) => v.toJson()).toList();
    }
    if (filterdata != null) {
      data['filterdata'] = filterdata!.toJson();
    }
    data['showfilterdata'] = showfilterdata;
    data['lastseensectiontitle'] = lastseensectiontitle;
    data['showAssistant'] = showAssistant;
    data['notificationCount'] = notificationCount;
    data['showPartners'] = showPartners;
    data['showOffers'] = showOffers;
    data['showUnits'] = showUnits;
    data['showLatestProjects'] = showLatestProjects;
    data['showLastSeen'] = showLastSeen;
    data['showFundingEligibility'] = showFundingEligibility;
    data['showprojectsGroups'] = showprojectsGroups;
    return data;
  }
}

class HeaderGallery {
  int? isvideo;
  String? title;
  String? image;
  String? screenname;
  String? id;
  int? isLink;
  String? linktext;

  HeaderGallery(
      {this.isvideo,
      this.title,
      this.image,
      this.screenname,
      this.id,
      this.isLink,
      this.linktext});

  HeaderGallery.fromJson(Map<String, dynamic> json) {
    isvideo = json['isvideo'];
    title = json['title'];
    image = json['image'];
    screenname = json['screenname'];
    id = json['id'];
    isLink = json['isLink'];
    linktext = json['linktext'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isvideo'] = isvideo;
    data['title'] = title;
    data['image'] = image;
    data['screenname'] = screenname;
    data['id'] = id;
    data['isLink'] = isLink;
    data['linktext'] = linktext;
    return data;
  }
}

class HeaderOffers {
  int? isvideo;
  String? title;
  String? image;
  String? screenname;
  int? id;
  int? isLink;

  HeaderOffers(
      {this.isvideo,
      this.title,
      this.image,
      this.screenname,
      this.id,
      this.isLink});

  HeaderOffers.fromJson(Map<String, dynamic> json) {
    isvideo = json['isvideo'];
    title = json['title'];
    image = json['image'];
    screenname = json['screenname'];
    id = json['id'];
    isLink = json['isLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isvideo'] = isvideo;
    data['title'] = title;
    data['image'] = image;
    data['screenname'] = screenname;
    data['id'] = id;
    data['isLink'] = isLink;
    return data;
  }
}

class HeaderWidgets {
  String? screenname;
  String? title;
  String? imageurl;
  String? iconurl;

  HeaderWidgets({this.screenname, this.title, this.imageurl, this.iconurl});

  HeaderWidgets.fromJson(Map<String, dynamic> json) {
    screenname = json['screenname'];
    title = json['title'];
    imageurl = json['imageurl'];
    iconurl = json['iconurl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['screenname'] = screenname;
    data['title'] = title;
    data['imageurl'] = imageurl;
    data['iconurl'] = iconurl;
    return data;
  }
}

class Partners {
  String? screenname;
  int? id;
  String? title;
  String? image;

  Partners({this.screenname, this.id, this.title, this.image});

  Partners.fromJson(Map<String, dynamic> json) {
    screenname = json['screenname'];
    id = json['id'];
    title = json['title'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['screenname'] = screenname;
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    return data;
  }
}

class LatestProjects {
  String? description;
  List<LatestProjectsItems>? items;

  LatestProjects({this.description, this.items});

  LatestProjects.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    if (json['items'] != null) {
      items = <LatestProjectsItems>[];
      json['items'].forEach((v) {
        items!.add(LatestProjectsItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LatestProjectsItems {
  String? screenname;
  int? id;
  String? title;
  String? image;
  String? cityname;
  String? icon;

  LatestProjectsItems({
    this.screenname,
    this.id,
    this.title,
    this.image,
    this.cityname,
    this.icon,
  });

  LatestProjectsItems.fromJson(Map<String, dynamic> json) {
    screenname = json['screenname'];
    id = json['id'];
    title = json['title'];
    image = json['image'];
    cityname = json['cityname'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['screenname'] = screenname;
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['cityname'] = cityname;
    data['icon'] = icon;
    return data;
  }
}

class Units {
  List<UnitsItems>? items;

  Units({this.items});

  Units.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <UnitsItems>[];
      json['items'].forEach((v) {
        items!.add(UnitsItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UnitsItems {
  String? screenname;
  String? photourl;
  String? title;
  String? text;
  String? totalprice;
  String? pricetext;

  UnitsItems({
    this.screenname,
    this.photourl,
    this.title,
    this.text,
    this.totalprice,
    this.pricetext,
  });

  UnitsItems.fromJson(Map<String, dynamic> json) {
    screenname = json['screenname'];
    photourl = json['photourl'];
    title = json['title'];
    text = json['text'];
    totalprice = json['totalprice'];
    pricetext = json['pricetext'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['screenname'] = screenname;
    data['photourl'] = photourl;
    data['title'] = title;
    data['text'] = text;
    data['totalprice'] = totalprice;
    data['pricetext'] = pricetext;
    return data;
  }
}

class ProjectsGroups {
  int? groupid;
  String? title;
  String? subtitle;
  String? imageurl;
  String? bgimageurl;
  String? overlaycolor;
  int? totalunits;
  int? availableunits;

  ProjectsGroups(
      {this.groupid,
      this.title,
      this.subtitle,
      this.imageurl,
      this.bgimageurl,
      this.overlaycolor,
      this.totalunits,
      this.availableunits});

  ProjectsGroups.fromJson(Map<String, dynamic> json) {
    groupid = json['groupid'];
    title = json['title'];
    subtitle = json['subtitle'];
    imageurl = json['imageurl'];
    bgimageurl = json['bgimageurl'];
    overlaycolor = json['overlaycolor'];
    totalunits = json['totalunits'];
    availableunits = json['availableunits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['groupid'] = groupid;
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['imageurl'] = imageurl;
    data['bgimageurl'] = bgimageurl;
    data['overlaycolor'] = overlaycolor;
    data['totalunits'] = totalunits;
    data['availableunits'] = availableunits;
    return data;
  }
}

class Lastseen {
  List<Layouts>? layouts;
  List<Housingunits>? housingunits;

  Lastseen({this.layouts, this.housingunits});

  Lastseen.fromJson(Map<String, dynamic> json) {
    if (json['layouts'] != null) {
      layouts = <Layouts>[];
      json['layouts'].forEach((v) {
        layouts!.add(Layouts.fromJson(v));
      });
    }
    if (json['housingunits'] != null) {
      housingunits = <Housingunits>[];
      json['housingunits'].forEach((v) {
        housingunits!.add(Housingunits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (layouts != null) {
      data['layouts'] = layouts!.map((v) => v.toJson()).toList();
    }
    if (housingunits != null) {
      data['housingunits'] = housingunits!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Layouts {
  String? screenname;
  int? id;
  String? name;
  String? companylogo;
  String? companyname;
  String? image;

  Layouts(
      {this.screenname,
      this.id,
      this.name,
      this.companylogo,
      this.companyname,
      this.image});

  Layouts.fromJson(Map<String, dynamic> json) {
    screenname = json['screenname'];
    id = json['id'];
    name = json['name'];
    companylogo = json['companylogo'];
    companyname = json['companyname'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['screenname'] = screenname;
    data['id'] = id;
    data['name'] = name;
    data['companylogo'] = companylogo;
    data['companyname'] = companyname;
    data['image'] = image;
    return data;
  }
}

class Housingunits {
  String? screenName;
  int? id;
  String? name;
  String? companylogo;
  String? companyname;
  String? image;

  Housingunits(
      {this.screenName,
      this.id,
      this.name,
      this.companylogo,
      this.companyname,
      this.image});

  Housingunits.fromJson(Map<String, dynamic> json) {
    screenName = json['screenName'];
    id = json['id'];
    name = json['name'];
    companylogo = json['companylogo'];
    companyname = json['companyname'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['screenName'] = screenName;
    data['id'] = id;
    data['name'] = name;
    data['companylogo'] = companylogo;
    data['companyname'] = companyname;
    data['image'] = image;
    return data;
  }
}

class Filterdata {
  List<Categories>? categories;
  List<Cities>? cities;
  List<Projects>? projects;

  Filterdata({this.categories, this.cities, this.projects});

  Filterdata.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    if (json['cities'] != null) {
      cities = <Cities>[];
      json['cities'].forEach((v) {
        cities!.add(Cities.fromJson(v));
      });
    }
    if (json['projects'] != null) {
      projects = <Projects>[];
      json['projects'].forEach((v) {
        projects!.add(Projects.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    if (cities != null) {
      data['cities'] = cities!.map((v) => v.toJson()).toList();
    }
    if (projects != null) {
      data['projects'] = projects!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int? categoryid;
  String? categoryname;
  String? imageurl;
  int? showcounterroom;

  Categories(
      {this.categoryid,
      this.categoryname,
      this.imageurl,
      this.showcounterroom});

  Categories.fromJson(Map<String, dynamic> json) {
    categoryid = json['categoryid'];
    categoryname = json['categoryname'];
    imageurl = json['imageurl'];
    showcounterroom = json['showcounterroom'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categoryid'] = categoryid;
    data['categoryname'] = categoryname;
    data['imageurl'] = imageurl;
    data['showcounterroom'] = showcounterroom;
    return data;
  }
}

class Cities {
  int? cityid;
  String? cityname;
  String? imageurl;
  int? categoryid;

  Cities({this.cityid, this.cityname, this.imageurl, this.categoryid});

  Cities.fromJson(Map<String, dynamic> json) {
    cityid = json['cityid'];
    cityname = json['cityname'];
    imageurl = json['imageurl'];
    categoryid = json['categoryid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cityid'] = cityid;
    data['cityname'] = cityname;
    data['imageurl'] = imageurl;
    data['categoryid'] = categoryid;
    return data;
  }
}

class Projects {
  int? projectid;
  String? projectname;
  String? imageurl;
  int? categoryid;
  int? cityid;
  num? maxprice;
  num? minprice;
  num? maxspace;
  num? minspace;
  int? maxbedroom;
  int? minbedroom;
  int? maxbathroom;
  int? minbathroom;

  Projects(
      {this.projectid,
      this.projectname,
      this.imageurl,
      this.categoryid,
      this.cityid,
      this.maxprice,
      this.minprice,
      this.maxspace,
      this.minspace,
      this.maxbedroom,
      this.minbedroom,
      this.maxbathroom,
      this.minbathroom});

  Projects.fromJson(Map<String, dynamic> json) {
    projectid = json['projectid'];
    projectname = json['projectname'];
    imageurl = json['imageurl'];
    categoryid = json['categoryid'];
    cityid = json['cityid'];
    maxprice = json['maxprice'];
    minprice = json['minprice'];
    maxspace = json['maxspace'];
    minspace = json['minspace'];
    maxbedroom = json['maxbedroom'];
    minbedroom = json['minbedroom'];
    maxbathroom = json['maxbathroom'];
    minbathroom = json['minbathroom'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['projectid'] = projectid;
    data['projectname'] = projectname;
    data['imageurl'] = imageurl;
    data['categoryid'] = categoryid;
    data['cityid'] = cityid;
    data['maxprice'] = maxprice;
    data['minprice'] = minprice;
    data['maxspace'] = maxspace;
    data['minspace'] = minspace;
    data['maxbedroom'] = maxbedroom;
    data['minbedroom'] = minbedroom;
    data['maxbathroom'] = maxbathroom;
    data['minbathroom'] = minbathroom;
    return data;
  }
}
