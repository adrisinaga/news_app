import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/utils/color_resources.dart';

import 'dimensions.dart';

const merriWeatherRegular = TextStyle(
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  color: ColorResources.white
);

const merriWeatherSemiBold = TextStyle(
  fontSize: Dimensions.FONT_SIZE_LARGE,
  fontWeight: FontWeight.w600,color: ColorResources.white
);

const merriWeatherBold = TextStyle(
  fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
  fontWeight: FontWeight.w900,color: ColorResources.white
);
const merriWeatherItalic = TextStyle(
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontStyle: FontStyle.italic,color: ColorResources.white
);

var robotoRegular = GoogleFonts.roboto(
  fontSize: 15,
  color: Colors.white,
  fontWeight: FontWeight.normal,
);