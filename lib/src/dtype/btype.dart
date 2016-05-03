// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.
library odw.sdk.dictionary.dtype.btype;

class Types {
  final String name;
  final int sizeInBytes;
  final bool isString;

  const Types(this.name, this.sizeInBytes, this.isString);

  bool get isBinary => !isString;

  // Unsigned Integers
  static const kUint8 = const Types("Uint8", 1, false);
  static const kUint16 = const Types("Uint16", 2, false);
  static const kUint32 = const Types("Uint32", 4, false);
  static const kUint64 = const Types("Uint64", 8, false);

  // Signed
  static const kInt8 = const Types("Int8", 1, false);
  static const kInt16 = const Types("Int16", 2, false);
  static const kInt32 = const Types("Int32", 4, false);
  static const kInt64 = const Types("Int64", 8, false);

  // Floating Point
  static const kFloat32 = const Types("Float32", 4, false);
  static const kFloat64 = const Types("Float64", 8, false);
  static const kFloat128 = const Types("Float128", 16, false);

  // Special Binary
  static const kUuid = const Types("Uuid", 16, false);

}

typedef bool CharPredicate(int code);

class Charset {
  final String name;
  final CharPredicate predicate;

  const Charset(this.name, this.predicate);

  // General Character Codes
  static const kAscii = const Charset("Ascii", isAscii);
  static const kUtf8 = const Charset("UTF-8", isUtf8);
  static const kUtf16 = const Charset("UTF-16", isUtf16);

  static bool isAscii(int code) => (0 <= code) && (code <= 127);

  static bool isUtf8(int code) => (0 <= code) && (code <= 255);

  static bool isUtf16(int code) => (0 <= code) && (code <= (2 << 16) - 1);
}

typedef bool StringPredicate(String s);

class Strings {
  // The [name] of the [Strings] type.
  final String name;

  // Predicate over entire [String].
  final StringPredicate predicate;

  // Minimum Length in bytes.
  final int minLength;

  // Minimum Length in bytes.
  final int maxLength;

  const Strings(this.name, this.predicate, this.minLength, this.maxLength);

  bool checkAll(String s, CharPredicate pred) {
    for(int i = 0; i < s.length; i++)
      if(pred(s.codeUnitAt(i)) == false) return false;
    return true;
  }
}

//SString, Text,
// Dates
//Date, Time, DateTime, TimeZone,
// Numbers
//Integer, Decimal,
// Special
//AET, Age, Code, PersonName, Uid, Uri
//}

enum ShapeType { k0D, k1D, k2D, k3D }

class Shape {
  static const int n = -1;
  final ShapeType type;
  final int xMax;
  final int yMax;

  const Shape(this.type, this.xMax, this.yMax);

  static final k1 = const Shape(ShapeType.k0D, 1, 0);

}

class BType {
  static const int kN = -1;
  final String name;
  final int sizeInBytes;
  final int minLength;
  final int maxLength;
  final Shape shape;

  const BType(this.name, this.sizeInBytes, this.minLength, this.maxLength, this.shape);

  static const BType kAE = const BType("AE", 1, 1, 16, Shape.k1);

}
