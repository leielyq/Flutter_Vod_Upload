
import 'dart:convert' show json;

class UploadAuth {

  String SecurityToken;
  String AccessKeyId;
  String ExpireUTCTime;
  String AccessKeySecret;
  String Expiration;
  String Region;

  UploadAuth({
    this.SecurityToken,
    this.AccessKeyId,
    this.ExpireUTCTime,
    this.AccessKeySecret,
    this.Expiration,
    this.Region,
  });

  factory UploadAuth.fromJson(jsonRes)=>jsonRes == null? null:UploadAuth(
    SecurityToken : jsonRes['SecurityToken'],
    AccessKeyId : jsonRes['AccessKeyId'],
    ExpireUTCTime : jsonRes['ExpireUTCTime'],
    AccessKeySecret : jsonRes['AccessKeySecret'],
    Expiration : jsonRes['Expiration'],
    Region : jsonRes['Region'],);

  Map<String, dynamic> toJson() => {
    'SecurityToken': SecurityToken,
    'AccessKeyId': AccessKeyId,
    'ExpireUTCTime': ExpireUTCTime,
    'AccessKeySecret': AccessKeySecret,
    'Expiration': Expiration,
    'Region': Region,
  };
  @override
  String  toString() {
    return json.encode(this);
  }
}