// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.
library odw.sdk.dictionary.modules.module;

import '../condition/condition.dart';
import '../enum//enum.dart';
import '../etype/etype.dart';

abstract class ModuleBase {
  String keyword;
  int tag;
  EType aType;
  Enum eType;
  Condition condition;

// Static const definitions go here.

// A [List] of attribute definitions contained in this module.
//TODO: figure out how to specify the next line
//static const List<ModuleBase> attributes;

}

