// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.
library odw.sdk.validator.module.image_pixel_module;

import '../condition/condition.dart';
import '../enum/enum.dart';
import '../etype/etype.dart';
//TODO: how to get this to extend ModuleBase

//import 'module_base.dart';

class ImagePixelModule {
  final String keyword;
  final int tag;
  final EType aType;
  final Enum eType;
  final Condition condition;

  const ImagePixelModule(this.keyword, this.tag, this.aType,
      [this.eType, this.condition]);

  // ** Included ImagePixelMarco **
  static const kSamplesPerPixel =
  const ImagePixelModule("samplesPerPixel", 0x00280002, EType.k1);
  static const kPhotometricInterpretation =
  const ImagePixelModule("photometricInterpretation", 0x00280004, EType.k1);
  static const kRows =
  const ImagePixelModule("Rows", 0x00280010, EType.k1);
  static const kColumns =
  const ImagePixelModule("Columns", 0x00280011, EType.k1);
  static const kBitsAllocated =
  const ImagePixelModule("BitsAllocated", 0x00280100, EType.k1);
  static const kBitsStored =
  const ImagePixelModule("BitsStored", 0x00280101, EType.k1);
  static const kHighBit =
  const ImagePixelModule("HighBit", 0x00280102, EType.k1);
  static const kPixelRepresentation =
  const ImagePixelModule("PixelRepresentation", 0x00280103, EType.k1);
  static const kPixelData =
  const ImagePixelModule("PixelData", 0x7FE00010, EType.k1C);
  static const kPlanarConfiguration =
  const ImagePixelModule("PlanarConfiguration", 0x00280006, EType.k1C);
  static const kPixelAspectRatio =
  const ImagePixelModule("PixelAspectRatio", 0x00280034, EType.k1C);
  static const SmallestImagePixelValue =
  const ImagePixelModule("SmallestImagePixelValue", 0x00280106, EType.k3);
  static const LargestImagePixelValue =
  const ImagePixelModule("SmallestImagePixelValue", 0x00280107, EType.k3);
  static const kRedPaletteColorLookupTableDescriptor =
  const ImagePixelModule("RedPaletteColorLookupTableDescriptor", 0x00281101, EType.k1C);
  static const kGreenPaletteColorLookupTableDescriptor =
  const ImagePixelModule("GreenPaletteColorLookupTableDescriptor", 0x00281102, EType.k1C);
  static const kBluealetteColorLookupTableDescriptor =
  const ImagePixelModule("BluePaletteColorLookupTableDescriptor", 0x00281103, EType.k1C);
  static const kRedPaletteColorLookupTableData =
  const ImagePixelModule("RedPaletteColorLookupTableData", 0x00281201, EType.k1C);
  static const kGreenPaletteColorLookupTableData =
  const ImagePixelModule("GreenPaletteColorLookupTableData", 0x00281202, EType.k1C);
  static const kBluePaletteColorLookupTableData =
  const ImagePixelModule("BluePaletteColorLookupTableData", 0x00281203, EType.k1C);
  static const kICCProfile =
  const ImagePixelModule("ICCProfile", 0x00282000, EType.k3);
  static const kColorSpace =
  const ImagePixelModule("ColorSpace", 0x00282002, EType.k3);

  //** End of included ImagePixelMacro

  //** Begin ImagePixelModule Attributes
  static const kPixelDataProviderURL =
  const ImagePixelModule("PixelDataProviderURL", 0x00287FE0, EType.k1C);
  static const kPixelPaddingRangeLimit =
  const ImagePixelModule("PixelPaddingRangeLimit", 0x00280121, EType.k1C);

  //** End of included ImagePixelModule Attributes

  static const List<ImagePixelModule> attributes = const [
    kSamplesPerPixel,
    kPhotometricInterpretation,
    kRows,
    kColumns,
    kBitsAllocated,
    kBitsStored,
    kHighBit,
    kPixelRepresentation,
    kPixelData,
    kPlanarConfiguration,
    kPixelAspectRatio,
    SmallestImagePixelValue,
    LargestImagePixelValue,
    kRedPaletteColorLookupTableDescriptor,
    kGreenPaletteColorLookupTableDescriptor,
    kBluealetteColorLookupTableDescriptor,
    kRedPaletteColorLookupTableData,
    kGreenPaletteColorLookupTableData,
    kBluePaletteColorLookupTableData,
    kICCProfile,
    kColorSpace,
    //** End of included ImagePixelMacro

    //** Begin ImagePixelModule Attributes
    kPixelDataProviderURL,
    kPixelPaddingRangeLimit
    //** End of included ImagePixelModule Attributes
  ];
}
