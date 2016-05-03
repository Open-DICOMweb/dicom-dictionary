// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk.dictionary.etype;

import 'package:dataset/dataset.dart';
import 'package:logger/server_logger.dart';

import '../element/element.dart';

// Attribute Types
// See [PS3.5, Section 7.4](http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.4)

Logger log = new Logger("EType");

/// Element Types
/// Element Types and predicates to test if their satisfied.
/// Note: These are sometimes referred to as Attribute Types.
class EType {
  final String name;
  final int level;
  final bool isConditional;

  const EType(this.name, this.level, this.isConditional);

  static const k1 = const EType("1", 1, false);
  static const k1C = const EType("1C", 1, true);
  static const k2 = const EType("2", 2, false);
  static const k2C = const EType("2C", 2, true);
  static const k3 = const EType("3", 3, false);

  /// Type 1
  /// If an [Attribute] with [e.tag] is Present and
  /// it has a [value] return [true]; otherwise,
  /// log the error and return false.
  bool type1(Dataset ds, Element e) {
    var a = ds[e.tag];
    if(a == null) {
      return missingAttributeError(e);
    } else if(a.isEmpty) {
      return type1NoValueError(a);
    }
    return true;
  }

  // Type 1C
  /// If an [Attribute] with [e.tag] is Present and it has
  /// a [value] and if e.condition is satisfied return [true];
  /// otherwise, log the error and return false.
  bool type1C(Dataset ds, Element e) {
    var a = ds[e.tag];
    var ok = type1(ds, e);
    if(!ok) return false;
    var val = e.condition(ds, a);
    if(val != true) {
      log.error(val);
      return false;
    }
    return true;
  }

  /// If an [Attribute] with [e.tag] is Present return
  /// [true]; otherwise, log the error and return false.
  bool type2(Dataset ds, Element e) {
    var a = ds[e.tag];
    if(a == null)
      return missingAttributeError(e);
    return true;
  }

  /// If an [Attribute] with [e.tag] is Present and
  /// e.condition is satisfied return [true]; otherwise,
  /// log the error and return false.
  bool type2C(Dataset ds, Element e) {
    var ok = type2(ds, e);
    if(!ok) return false;
    var val = e.condition(ds, e.tag);
    if(val != true) {
      log.error(val);
      return false;
    }
    return true;
  }

  bool type3(Dataset ds, Element e) => true;

  bool missingAttributeError(Element e) {
    log.error('Attribute ${e.keyword} must be present');
    return true;
  }

  bool type1NoValueError(Attribute a) {
    log.error('Attribute ${e.keyword} must have a value');
    return false;
  }

  //TODO:
  static const String href = "";
}
