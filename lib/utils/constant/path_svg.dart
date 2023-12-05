import 'package:flutter/material.dart';
import 'path_icons.dart';
import 'package:flutter_svg/svg.dart';

class PathSvg {
  static final SvgPicture category =
      SvgPicture.asset(PathIcons.category, fit: BoxFit.contain);

  static final SvgPicture map =
      SvgPicture.asset(PathIcons.map, fit: BoxFit.cover);

  static final SvgPicture orders =
      SvgPicture.asset(PathIcons.orders, fit: BoxFit.cover);

  static final SvgPicture search =
      SvgPicture.asset(PathIcons.search, fit: BoxFit.fitHeight);

  static final SvgPicture others =
      SvgPicture.asset(PathIcons.others, fit: BoxFit.cover);
}
