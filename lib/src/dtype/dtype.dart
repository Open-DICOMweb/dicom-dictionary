// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk.dicom.dd.dtype;

import 'btype.dart';

class DType {
  final String name;
  final VR vr;
  final VM vm;
  final BType bType;
  final Shape shape;

  const DType(this.name, this.vr, this.vm, this.bType, this.shape);

  static const kBoolean = const DType("Boolean", VR.none, VM.k1, BType.bool, Shape.k1);

  static const kUint32 = const DType("Uint32", VR.UL, VM.k1, BType.Uint32, Shape.k1);

}
