import 'package:flutter/material.dart';
import 'path_icons.dart';
import 'package:flutter_svg/svg.dart';

class PathSvg {
  static final SvgPicture category = SvgPicture.asset(
    PathIcons.category,
    fit: BoxFit.contain,
    color: const Color.fromRGBO(20, 76, 237, 1.0),
  );

  static final SvgPicture map =
      SvgPicture.asset(PathIcons.map, fit: BoxFit.cover);

  static final SvgPicture orders =
      SvgPicture.asset(PathIcons.orders, fit: BoxFit.cover);

  static final SvgPicture search =
      SvgPicture.asset(PathIcons.search, fit: BoxFit.fitHeight);

  static final SvgPicture others =
      SvgPicture.asset(PathIcons.others, fit: BoxFit.cover);

  static final SvgPicture home =
      SvgPicture.asset(PathIcons.home, fit: BoxFit.cover);

  static final SvgPicture land =
      SvgPicture.asset(PathIcons.land, fit: BoxFit.cover);

  static final SvgPicture rent =
      SvgPicture.asset(PathIcons.rent, fit: BoxFit.cover);

  static final SvgPicture haramin =
      SvgPicture.asset(PathIcons.haramin, fit: BoxFit.cover);

  static final SvgPicture vip =
      SvgPicture.asset(PathIcons.vip, fit: BoxFit.cover);
}
