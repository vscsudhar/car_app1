import 'package:flutter/material.dart';

//images

const back1 = 'assets/icons/back1.png';
const back2 = 'assets/icons/back3.png';
const bottomimg = 'assets/icons/log.png';
const backbutton = 'assets/icons/button.png';
//colors
const appcolor2699FB = Color(0xFF2699FB);
const appwhite1 = Color.fromARGB(255, 255, 255, 255);
const appViking = Color(0xFF41bfd0);
const appBrinkPink = Color(0xFFFF668E);
const appChambray = Color(0xFF565F73);

// const appcolor2699FB = Colors.red;

//spacer
const emptySpacing = SizedBox.shrink();
const verticalSpacing4 = SizedBox(height: 4);
const verticalSpacing8 = SizedBox(height: 8);
const verticalSpacing10 = SizedBox(height: 10);
const verticalSpacing12 = SizedBox(height: 12);
const verticalSpacing16 = SizedBox(height: 16);
const verticalSpacing20 = SizedBox(height: 20);
const verticalSpacing40 = SizedBox(height: 40);
const verticalSpacing60 = SizedBox(height: 60);

const horizontalSpacing4 = SizedBox(width: 4);
const horizontalSpacing8 = SizedBox(width: 8);
const horizontalSpacing10 = SizedBox(width: 10);
const horizontalSpacing12 = SizedBox(width: 12);
const horizontalSpacing16 = SizedBox(width: 16);
const horizontalSpacing20 = SizedBox(width: 20);

//padding
const zeroPadding = EdgeInsets.all(0);
const defaultPadding20 = EdgeInsets.all(20);
const defaultPadding14 = EdgeInsets.all(14);
const defaultPadding10 = EdgeInsets.all(10);
const defaultPadding12 = EdgeInsets.all(12);
const defaultPadding8 = EdgeInsets.all(8);
const topPadding40 = EdgeInsets.only(top: 40);
const topPadding30 = EdgeInsets.only(top: 30);
const topPadding20 = EdgeInsets.only(top: 20);
const topPadding12 = EdgeInsets.only(top: 12);
const topPadding10 = EdgeInsets.only(top: 10);
const topPadding8 = EdgeInsets.only(top: 8);
const topPadding4 = EdgeInsets.only(top: 4);
const bottomPadding30 = EdgeInsets.only(bottom: 30);
const bottomPadding20 = EdgeInsets.only(bottom: 20);
const bottomPadding10 = EdgeInsets.only(bottom: 10);
const bottomPadding8 = EdgeInsets.only(bottom: 8);
const rightPadding40 = EdgeInsets.only(right: 40);
const rightPadding30 = EdgeInsets.only(right: 30);
const rightPadding20 = EdgeInsets.only(right: 20);
const rightPadding10 = EdgeInsets.only(right: 10);
const rightPadding8 = EdgeInsets.only(right: 8);
const leftPadding40 = EdgeInsets.only(left: 40);
const leftPadding30 = EdgeInsets.only(left: 30);
const leftPadding20 = EdgeInsets.only(left: 20);
const leftPadding10 = EdgeInsets.only(left: 10);
const leftPadding8 = EdgeInsets.only(left: 8);

//Divider
const verticalDivider = VerticalDivider(width: 1.5, color: Colors.black87);
const horizontalDivider = Divider(height: 1.6, color: Colors.black87);

//fontFamily

const TextStyle fontFamilyRegular = TextStyle(fontFamily: 'Poppins-Regular');
const TextStyle fontFamilyLight = TextStyle(fontFamily: 'Poppins-Light');
const TextStyle fontFamilyBold = TextStyle(fontFamily: 'Poppins-SemiBold');
const TextStyle fontFamilyMedium = TextStyle(fontFamily: 'Poppins-Medium');

const scale = 1.0;

extension TextStyleHelpers on TextStyle {
  TextStyle get size8 => copyWith(fontSize: 8 * scale);
  TextStyle get size10 => copyWith(fontSize: 10 * scale);
  TextStyle get size12 => copyWith(fontSize: 12 * scale);
  TextStyle get size14 => copyWith(fontSize: 14 * scale);
  TextStyle get size16 => copyWith(fontSize: 16 * scale);
  TextStyle get size18 => copyWith(fontSize: 18 * scale);
  TextStyle get size20 => copyWith(fontSize: 20 * scale);
  TextStyle get size22 => copyWith(fontSize: 22 * scale);
  TextStyle get size24 => copyWith(fontSize: 24 * scale);
  TextStyle get size26 => copyWith(fontSize: 26 * scale);
  TextStyle get size28 => copyWith(fontSize: 28 * scale);
  TextStyle get size30 => copyWith(fontSize: 30 * scale);
  TextStyle get size32 => copyWith(fontSize: 32 * scale);
  TextStyle get size34 => copyWith(fontSize: 34 * scale);

  TextStyle get color2699FB => copyWith(color: appcolor2699FB);
  TextStyle get appwhite => copyWith(color: appwhite1);
  TextStyle get white70 => copyWith(color: Colors.white70);
  TextStyle get white54 => copyWith(color: Colors.white54);
  TextStyle get red => copyWith(color: Colors.red);
  TextStyle get black => copyWith(color: Colors.black);
  TextStyle get black45 => copyWith(color: Colors.black45);
  TextStyle get ceon => copyWith(color: const Color.fromARGB(255, 18, 136, 126));
}
