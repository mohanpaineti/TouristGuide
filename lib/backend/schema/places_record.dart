import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'places_record.g.dart';

abstract class PlacesRecord
    implements Built<PlacesRecord, PlacesRecordBuilder> {
  static Serializer<PlacesRecord> get serializer => _$placesRecordSerializer;

  String? get name;

  int? get guides;

  String? get image;

  String? get desc;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlacesRecordBuilder builder) => builder
    ..name = ''
    ..guides = 0
    ..image = ''
    ..desc = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('places');

  static Stream<PlacesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlacesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlacesRecord._();
  factory PlacesRecord([void Function(PlacesRecordBuilder) updates]) =
      _$PlacesRecord;

  static PlacesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlacesRecordData({
  String? name,
  int? guides,
  String? image,
  String? desc,
}) {
  final firestoreData = serializers.toFirestore(
    PlacesRecord.serializer,
    PlacesRecord(
      (p) => p
        ..name = name
        ..guides = guides
        ..image = image
        ..desc = desc,
    ),
  );

  return firestoreData;
}
