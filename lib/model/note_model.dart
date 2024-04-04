import 'dart:convert';

class NotesModel {
    String title;
    String descriptin;
    int nodeId;
    String id;

    NotesModel({
        required this.title,
        required this.descriptin,
        required this.nodeId,
        required this.id,
    });

    factory NotesModel.fromRawJson(String str) => NotesModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory NotesModel.fromJson(Map<String, dynamic> json) => NotesModel(
        title: json["title"],
        descriptin: json["descriptin"],
        nodeId: json["node_id"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "descriptin": descriptin,
        "node_id": nodeId,
        "id": id,
    };
}
