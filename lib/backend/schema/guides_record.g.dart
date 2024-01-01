// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guides_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GuidesRecord> _$guidesRecordSerializer =
    new _$GuidesRecordSerializer();

class _$GuidesRecordSerializer implements StructuredSerializer<GuidesRecord> {
  @override
  final Iterable<Type> types = const [GuidesRecord, _$GuidesRecord];
  @override
  final String wireName = 'GuidesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GuidesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phonenumber;
    if (value != null) {
      result
        ..add('phonenumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.place;
    if (value != null) {
      result
        ..add('place')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  GuidesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuidesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phonenumber':
          result.phonenumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'place':
          result.place = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$GuidesRecord extends GuidesRecord {
  @override
  final String? name;
  @override
  final String? phonenumber;
  @override
  final String? gender;
  @override
  final String? age;
  @override
  final String? place;
  @override
  final double? rating;
  @override
  final int? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GuidesRecord([void Function(GuidesRecordBuilder)? updates]) =>
      (new GuidesRecordBuilder()..update(updates))._build();

  _$GuidesRecord._(
      {this.name,
      this.phonenumber,
      this.gender,
      this.age,
      this.place,
      this.rating,
      this.price,
      this.ffRef})
      : super._();

  @override
  GuidesRecord rebuild(void Function(GuidesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuidesRecordBuilder toBuilder() => new GuidesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuidesRecord &&
        name == other.name &&
        phonenumber == other.phonenumber &&
        gender == other.gender &&
        age == other.age &&
        place == other.place &&
        rating == other.rating &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phonenumber.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GuidesRecord')
          ..add('name', name)
          ..add('phonenumber', phonenumber)
          ..add('gender', gender)
          ..add('age', age)
          ..add('place', place)
          ..add('rating', rating)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GuidesRecordBuilder
    implements Builder<GuidesRecord, GuidesRecordBuilder> {
  _$GuidesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phonenumber;
  String? get phonenumber => _$this._phonenumber;
  set phonenumber(String? phonenumber) => _$this._phonenumber = phonenumber;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _age;
  String? get age => _$this._age;
  set age(String? age) => _$this._age = age;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GuidesRecordBuilder() {
    GuidesRecord._initializeBuilder(this);
  }

  GuidesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phonenumber = $v.phonenumber;
      _gender = $v.gender;
      _age = $v.age;
      _place = $v.place;
      _rating = $v.rating;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuidesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuidesRecord;
  }

  @override
  void update(void Function(GuidesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuidesRecord build() => _build();

  _$GuidesRecord _build() {
    final _$result = _$v ??
        new _$GuidesRecord._(
            name: name,
            phonenumber: phonenumber,
            gender: gender,
            age: age,
            place: place,
            rating: rating,
            price: price,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
