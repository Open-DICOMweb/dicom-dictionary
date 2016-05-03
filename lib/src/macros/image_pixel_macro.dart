// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.
library odw.sdk.dicom.dd.macro.image_pixel_macro;

import '../condition/condition.dart';
import '../enum/enum.dart';
import 'macro_base.dart';

//TODO: someone validate the values in these tables.
class ImagePixelMacro extends MacroBase {

  const ImagePixelMacro(String keyword, int tag, String aType,
      [Enum eType, Condition condition])
      : super(keyword, tag, aType, eType, condition);

  static const kSamplesPerPixel =
  const ImagePixelMacro("samplesPerPixel", 0x00280002, "1");
  static const kPhotometricInterpretation =
  const ImagePixelMacro("photometricInterpretation", 0x00280004, "1");
  static const kRows =
  const ImagePixelMacro("Rows", 0x00280010, "1");
  static const kColumns =
  const ImagePixelMacro("Columns", 0x00280011, "1");
  static const kBitsAllocated =
  const ImagePixelMacro("BitsAllocated", 0x00280100, "1");
  static const kBitsStored =
  const ImagePixelMacro("BitsStored", 0x00280101, "1");
  static const kHighBit =
  const ImagePixelMacro("HighBit", 0x00280102, "1");
  static const kPixelRepresentation =
  const ImagePixelMacro("PixelRepresentation", 0x00280103, "1");
  static const kPixelData =
  const ImagePixelMacro("PixelData", 0x7FE00010, "1C");
  static const kPlanarConfiguration =
  const ImagePixelMacro("PlanarConfiguration", 0x00280006, "1C");
  static const kPixelAspectRatio =
  const ImagePixelMacro("PixelAspectRatio", 0x00280034, "1C");
  static const SmallestImagePixelValue =
  const ImagePixelMacro("SmallestImagePixelValue", 0x00280106, "3");
  static const LargestImagePixelValue =
  const ImagePixelMacro("SmallestImagePixelValue", 0x00280107, "3");
  static const kRedPaletteColorLookupTableDescriptor =
  const ImagePixelMacro("RedPaletteColorLookupTableDescriptor", 0x00281101, "1C");
  static const kGreenPaletteColorLookupTableDescriptor =
  const ImagePixelMacro("GreenPaletteColorLookupTableDescriptor", 0x00281102, "1C");
  static const kBluealetteColorLookupTableDescriptor =
  const ImagePixelMacro("BluePaletteColorLookupTableDescriptor", 0x00281103, "1C");
  static const kRedPaletteColorLookupTableData =
  const ImagePixelMacro("RedPaletteColorLookupTableData", 0x00281201, "1C");
  static const kGreenPaletteColorLookupTableData =
  const ImagePixelMacro("GreenPaletteColorLookupTableData", 0x00281202, "1C");
  static const kBluePaletteColorLookupTableData =
  const ImagePixelMacro("BluePaletteColorLookupTableData", 0x00281203, "1C");
  static const kICCProfile =
  const ImagePixelMacro("ICCProfile", 0x00282000, "3");
  static const kColorSpace =
  const ImagePixelMacro("kColorSpace", 0x00282002, "3");
}
