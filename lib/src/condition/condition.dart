// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk.validator.condition.condition;

import 'package:attribute/attribute.dart';
import 'package:dataset/dataset.dart';

import '../element/element.dart';

typedef bool CPredicate(Dataset ds, Attribute a);

class Condition {
  final String name;
  final Element element;
  final CPredicate predicate;

  const Condition(this.name, this.element, this.predicate);

  bool call(Dataset ds, Attribute a) => predicate(ds, a);

}

class CPred {
  static bool always(Dataset ds, Attribute a) => true;

  static bool never(Dataset ds, Attribute a) => false;

  static bool present(Dataset ds, Attribute a) => ds.containsValue(a);
}

bool imagePixelData(Dataset ds) {
  if((!ds.containsValue(kPixelData})) &&
      (!ds.containsValue(kPixelDataProviderURL)))
    log.error('$ds contain meither a Pixel Data  pr PixelDataProviderUrl');
}




