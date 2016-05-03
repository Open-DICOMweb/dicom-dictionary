// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk.dicom.dd.etype;

// TODO: these could be specialized by type

class Enum {
  //These fields need to be final in all sub-classes
  final String name;
  final List values;

  const Enum(this.name, this.values);

  static const none = const Enum("none", null);
  static const kYes$no = const Enum("yes_no", const ["yes", "no"]);
  static const kYES$NO = const Enum("YES_NO", const ["yes", "no"]);

  bool isValid(value) => values.contains(value);
}
