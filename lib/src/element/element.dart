// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk.dicom.dd.element;

import '../Etype/Etype.dart';
import '../condition/condition.dart';
import '../dtype/dtype.dart';
import '../enum/enum.dart';

class Element {
  final String keyword;
  final int tag;
  final String name;
  final DType dType;
  final EType eType;
  final Enum eNum;
  final Condition condition;
  final bool isRetired;
  final String href;

  const Element(this.keyword, this.tag, this.name, this.dType,
      this.eType, this.eNum, this.condition, this.isRetired, this.href);

  static const kAny =
  const Element(
      "Any",
      -1,
      "Any",
      DType.boolean,
      EType.k1,
      Enum.none,
      null,
      true,
      null);
  static const kLengthToEnd =
  const Element(
      "LengthToEnd",
      0x00080001,
      "Length To End",
      DType.Uint32,
      EType.k1,
      Enum.none,
      null,
      true,
      null);

}
