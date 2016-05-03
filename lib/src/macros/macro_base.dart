// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk.dictionary.macro.macro_base;

import '../condition/condition.dart';
import '../enum/enum.dart';

class MacroBase {
  final String keyword;
  final int tag;
  final String aType;
  final Enum eType;
  final Condition condition;

  const MacroBase(this.keyword, this.tag, this.aType,
      [this.eType, this.condition]);
}
