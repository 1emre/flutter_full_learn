
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resource_model.g.dart';


String _fetchCustom(String data){
  return 'aa';
}

@JsonSerializable()
class ResourceModel {
  List<Data>? data;

  ResourceModel({this.data});

  factory ResourceModel.fromJson(Map<String, dynamic> json) {
   return _$ResourceModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ResourceModelToJson(this);
  }
}

@JsonSerializable()//createToJson: false,//fieldRename: FieldRename.kebab
class Data extends Equatable{
  final int? id;
  final String? name;
  final int? year;
  @JsonKey(name: 'renk')
  final String? color;
  @JsonKey(fromJson: _fetchCustom)
  final String? pantoneValue;
  final String? price;
  final StatusCode staus;

 const  Data(this.staus, {this.id, this.name, this.year, this.color, this.pantoneValue,this.price});

  // int get colorValue{
  //   String _newColor = color?.replaceFirst('#', '0xff') ?? '';
  //   return int.parse(_newColor);
  // }

  factory Data.fromJson(Map<String, dynamic> json) {
    return _$DataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DataToJson(this);
  }
  
  @override
  // TODO: implement props
  List<Object?> get props => [id,name,price];// iki data objesi karsilastırılıyorsa ve bu 3 ozellik esitse ben bu objeleri eşit sayarım 
}


enum StatusCode{
  @JsonValue(200)
  succes,
  @JsonValue(500)
  weird,
}