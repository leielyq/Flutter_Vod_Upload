
import 'dart:convert' show json;

class VodInfoBean {

  String requestId;
  String uploadAddress;
  String uploadAuth;
  String videoId;

  VodInfoBean({
    this.requestId,
    this.uploadAddress,
    this.uploadAuth,
    this.videoId,
  });

  factory VodInfoBean.fromJson(jsonRes)=>jsonRes == null? null:VodInfoBean(
    requestId : jsonRes['requestId'],
    uploadAddress : jsonRes['uploadAddress'],
    uploadAuth : jsonRes['uploadAuth'],
    videoId : jsonRes['videoId'],);

  Map<String, dynamic> toJson() => {
    'requestId': requestId,
    'uploadAddress': uploadAddress,
    'uploadAuth': uploadAuth,
    'videoId': videoId,
  };
  @override
  String  toString() {
    return json.encode(this);
  }
}