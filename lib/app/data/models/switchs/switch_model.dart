part of '../data.dart';

class SwitchModel {
  SwitchModel({
    this.id,
    this.title,
    this.type,
    this.icon,
    this.subtitle,
    this.status,
  });

  factory SwitchModel.fromJson(final String str) => SwitchModel.fromMap(json.decode(str));

  factory SwitchModel.fromMap(final Map<String, dynamic> json) => SwitchModel(
    id: json["id"],
    title: json["title"],
    type: json["type"],
    icon: json["icon"],
    subtitle: json["subtitle"],
    status: json["status"],
  );
  int? id;
  String? title;
  String? type;
  String? icon;
  String? subtitle;
  int? status;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "title": title,
    "type": type,
    "subtitle": subtitle,
    "status": status,
    "icon": icon,
  };

  SwitchModel copyWith({
    int? id,
    String? title,
    String? type,
    String? subtitle,
    String? icon,
    int? status,
  }) {
    return SwitchModel(
      id: id ?? this.id,
      title: title ?? this.title,
      type: type ?? this.type,
      subtitle: subtitle ?? this.subtitle,
      status: status ?? this.status,
      icon: icon ?? this.icon,
    );
  }
}
