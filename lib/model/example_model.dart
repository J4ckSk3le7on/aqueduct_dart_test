// To parse this JSON data, do
//
//     final exampleModel = exampleModelFromJson(jsonString);

import 'dart:convert';
import 'dart:io';
import 'package:library/library.dart';


class ExampleModel {
    ExampleModel({
        this.documents,
    });

    List<Document> documents;

    factory ExampleModel.fromRawJson(String str) => ExampleModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ExampleModel.fromJson(Map<String, dynamic> json) => ExampleModel(
        documents: List<Document>.from(json["documents"].map((x) => Document.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "documents": List<dynamic>.from(documents.map((x) => x.toJson())),
    };
}

class Document {
    Document({
        this.name,
        this.fields,
        this.createTime,
        this.updateTime,
    });

    String name;
    DocumentFields fields;
    DateTime createTime;
    DateTime updateTime;

    factory Document.fromRawJson(String str) => Document.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Document.fromJson(Map<String, dynamic> json) => Document(
        name: json["name"],
        fields: DocumentFields.fromJson(json["fields"]),
        createTime: DateTime.parse(json["createTime"]),
        updateTime: DateTime.parse(json["updateTime"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "fields": fields.toJson(),
        "createTime": createTime.toIso8601String(),
        "updateTime": updateTime.toIso8601String(),
    };
}

class DocumentFields {
    DocumentFields({
        this.thingSubCategory,
        this.thingName,
        this.thingLogo,
        this.thingCategory,
        this.thingId,
        this.thingDescription,
        this.thingFor,
        this.thingForId,
    });

    ThingCategory thingSubCategory;
    ThingCategory thingName;
    ThingCategory thingLogo;
    ThingCategory thingCategory;
    ThingId thingId;
    ThingCategory thingDescription;
    ThingCategory thingFor;
    ThingForId thingForId;

    factory DocumentFields.fromRawJson(String str) => DocumentFields.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory DocumentFields.fromJson(Map<String, dynamic> json) => DocumentFields(
        thingSubCategory: ThingCategory.fromJson(json["thing_sub_category"]),
        thingName: ThingCategory.fromJson(json["thing_name"]),
        thingLogo: ThingCategory.fromJson(json["thing_logo"]),
        thingCategory: ThingCategory.fromJson(json["thing_category"]),
        thingId: ThingId.fromJson(json["thing_id"]),
        thingDescription: ThingCategory.fromJson(json["thing_description"]),
        thingFor: ThingCategory.fromJson(json["thing_for"]),
        thingForId: ThingForId.fromJson(json["thing_for_id"]),
    );

    Map<String, dynamic> toJson() => {
        "thing_sub_category": thingSubCategory.toJson(),
        "thing_name": thingName.toJson(),
        "thing_logo": thingLogo.toJson(),
        "thing_category": thingCategory.toJson(),
        "thing_id": thingId.toJson(),
        "thing_description": thingDescription.toJson(),
        "thing_for": thingFor.toJson(),
        "thing_for_id": thingForId.toJson(),
    };
}

class ThingCategory {
    ThingCategory({
        this.stringValue,
    });

    String stringValue;

    factory ThingCategory.fromRawJson(String str) => ThingCategory.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ThingCategory.fromJson(Map<String, dynamic> json) => ThingCategory(
        stringValue: json["stringValue"],
    );

    Map<String, dynamic> toJson() => {
        "stringValue": stringValue,
    };
}

class ThingForId {
    ThingForId({
        this.arrayValue,
    });

    ArrayValue arrayValue;

    factory ThingForId.fromRawJson(String str) => ThingForId.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ThingForId.fromJson(Map<String, dynamic> json) => ThingForId(
        arrayValue: ArrayValue.fromJson(json["arrayValue"]),
    );

    Map<String, dynamic> toJson() => {
        "arrayValue": arrayValue.toJson(),
    };
}

class ArrayValue {
    ArrayValue({
        this.values,
    });

    List<Value> values;

    factory ArrayValue.fromRawJson(String str) => ArrayValue.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ArrayValue.fromJson(Map<String, dynamic> json) => ArrayValue(
        values: List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "values": List<dynamic>.from(values.map((x) => x.toJson())),
    };
}

class Value {
    Value({
        this.mapValue,
    });

    MapValue mapValue;

    factory Value.fromRawJson(String str) => Value.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Value.fromJson(Map<String, dynamic> json) => Value(
        mapValue: MapValue.fromJson(json["mapValue"]),
    );

    Map<String, dynamic> toJson() => {
        "mapValue": mapValue.toJson(),
    };
}

class MapValue {
    MapValue({
        this.fields,
    });

    MapValueFields fields;

    factory MapValue.fromRawJson(String str) => MapValue.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory MapValue.fromJson(Map<String, dynamic> json) => MapValue(
        fields: MapValueFields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "fields": fields.toJson(),
    };
}

class MapValueFields {
    MapValueFields({
        this.insideThingCategory,
        this.insideThingType,
        this.insideThingReference,
        this.insideThingSubCategory,
        this.insideThingDescription,
        this.insideThingId,
        this.insideThingName,
    });

    ThingCategory insideThingCategory;
    ThingCategory insideThingType;
    ThingCategory insideThingReference;
    ThingCategory insideThingSubCategory;
    ThingCategory insideThingDescription;
    ThingId insideThingId;
    ThingCategory insideThingName;

    factory MapValueFields.fromRawJson(String str) => MapValueFields.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory MapValueFields.fromJson(Map<String, dynamic> json) => MapValueFields(
        insideThingCategory: ThingCategory.fromJson(json["inside_thing_category"]),
        insideThingType: ThingCategory.fromJson(json["inside_thing_type"]),
        insideThingReference: ThingCategory.fromJson(json["inside_thing_reference"]),
        insideThingSubCategory: ThingCategory.fromJson(json["inside_thing_sub_category"]),
        insideThingDescription: ThingCategory.fromJson(json["inside_thing_description"]),
        insideThingId: ThingId.fromJson(json["inside_thing_id"]),
        insideThingName: ThingCategory.fromJson(json["inside_thing_name"]),
    );

    Map<String, dynamic> toJson() => {
        "inside_thing_category": insideThingCategory.toJson(),
        "inside_thing_type": insideThingType.toJson(),
        "inside_thing_reference": insideThingReference.toJson(),
        "inside_thing_sub_category": insideThingSubCategory.toJson(),
        "inside_thing_description": insideThingDescription.toJson(),
        "inside_thing_id": insideThingId.toJson(),
        "inside_thing_name": insideThingName.toJson(),
    };
}

class ThingId {
    ThingId({
        this.integerValue,
    });

    String integerValue;

    factory ThingId.fromRawJson(String str) => ThingId.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ThingId.fromJson(Map<String, dynamic> json) => ThingId(
        integerValue: json["integerValue"],
    );

    Map<String, dynamic> toJson() => {
        "integerValue": integerValue,
    };
}
