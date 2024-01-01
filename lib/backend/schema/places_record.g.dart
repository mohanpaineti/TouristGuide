// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlacesRecord> _$placesRecordSerializer =
    new _$PlacesRecordSerializer();

class _$PlacesRecordSerializer implements StructuredSerializer<PlacesRecord> {
  @override
  final Iterable<Type> types = const [PlacesRecord, _$PlacesRecord];
  @override
  final String wireName = 'PlacesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlacesRecord object,
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
    value = object.guides;
    if (value != null) {
      result
        ..add('guides')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desc;
    if (value != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  PlacesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlacesRecordBuilder();

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
        case 'guides':
          result.guides = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$PlacesRecord extends PlacesRecord {
  @override
  final String? name;
  @override
  final int? guides;
  @override
  final String? image;
  @override
  final String? desc;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlacesRecord([void Function(PlacesRecordBuilder)? updates]) =>
      (new PlacesRecordBuilder()..update(updates))._build();

  _$PlacesRecord._({this.name, this.guides, this.image, this.desc, this.ffRef})
      : super._();

  @override
  PlacesRecord rebuild(void Function(PlacesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlacesRecordBuilder toBuilder() => new PlacesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlacesRecord &&
        name == other.name &&
        guides == other.guides &&
        image == other.image &&
        desc == other.desc &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, guides.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, desc.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlacesRecord')
          ..add('name', name)
          ..add('guides', guides)
          ..add('image', image)
          ..add('desc', desc)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlacesRecordBuilder
    implements Builder<PlacesRecord, PlacesRecordBuilder> {
  _$PlacesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _guides;
  int? get guides => _$this._guides;
  set guides(int? guides) => _$this._guides = guides;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlacesRecordBuilder() {
    PlacesRecord._initializeBuilder(this);
  }

  PlacesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _guides = $v.guides;
      _image = $v.image;
      _desc = $v.desc;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlacesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlacesRecord;
  }

  @override
  void update(void Function(PlacesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlacesRecord build() => _build();

  _$PlacesRecord _build() {
    final _$result = _$v ??
        new _$PlacesRecord._(
            name: name, guides: guides, image: image, desc: desc, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
