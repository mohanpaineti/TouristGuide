import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'guides_record.g.dart';

abstract class GuidesRecord
    implements Built<GuidesRecord, GuidesRecordBuilder> {
  static Serializer<GuidesRecord> get serializer => _$guidesRecordSerializer;

  String? get name;

  String? get phonenumber;

  String? get gender;

  String? get age;

  String? get place;

  double? get rating;

  int? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GuidesRecordBuilder builder) => builder
    ..name = ''
    ..phonenumber = ''
    ..gender = ''
    ..age = ''
    ..place = ''
    ..rating = 0.0
    ..price = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('guides');

  static Stream<GuidesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GuidesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GuidesRecord._();
  factory GuidesRecord([void Function(GuidesRecordBuilder) updates]) =
      _$GuidesRecord;

  static GuidesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGuidesRecordData({
  String? name,
  String? phonenumber,
  String? gender,
  String? age,
  String? place,
  double? rating,
  int? price,
}) {
  final firestoreData = serializers.toFirestore(
    GuidesRecord.serializer,
    GuidesRecord(
      (g) => g
        ..name = name
        ..phonenumber = phonenumber
        ..gender = gender
        ..age = age
        ..place = place
        ..rating = rating
        ..price = price,
    ),
  );

  return firestoreData;
}
