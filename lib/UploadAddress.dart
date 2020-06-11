
import 'dart:convert' show json;

class UploadAddress {

  String Endpoint;
  String Bucket;
  String FileName;

  UploadAddress({
    this.Endpoint,
    this.Bucket,
    this.FileName,
  });

  factory UploadAddress.fromJson(jsonRes)=>jsonRes == null? null:UploadAddress(
    Endpoint : jsonRes['Endpoint'],
    Bucket : jsonRes['Bucket'],
    FileName : jsonRes['FileName'],);

  Map<String, dynamic> toJson() => {
    'Endpoint': Endpoint,
    'Bucket': Bucket,
    'FileName': FileName,
  };
  @override
  String  toString() {
    return json.encode(this);
  }
}