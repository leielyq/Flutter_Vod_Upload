

import 'dart:convert';
import 'dart:io';

import 'package:aliyun_oss/OSSClient.dart';
import 'package:aliyun_oss/common.dart';
import 'package:flutter_vod_upload/VodInfoBean.dart';
import 'package:flutter_vod_upload/UploadAddress.dart';

import 'UploadAuth.dart';

class FlutterVodUpload {
  static Future<String> uploadForDart(File file,VodInfoBean item) async {
    var objectContent = await file.readAsBytes();
    var uploadAddress = UploadAddress.fromJson(json.decode(utf8.decode(base64Decode(item.uploadAddress))));
    var uploadAuth = UploadAuth.fromJson(json.decode(utf8.decode(base64Decode(item.uploadAuth))));
    var client = OSSClient(uploadAddress.Endpoint, MyCredentialProvider(Credentials(uploadAuth.AccessKeyId,uploadAuth.AccessKeySecret,uploadAuth.SecurityToken)));
 
    var response =await client.putObject(bucket: uploadAddress.Bucket, objectKey: uploadAddress.FileName, content: objectContent, contentType: 'multipart/form-data');
    return item.videoId;
  }
}
class MyCredentialProvider extends CredentialProvider{
  final Credentials credentials;

  MyCredentialProvider(this.credentials);

  @override
  Future<Credentials> getCredentials() async{
    return this.credentials;
  }

}
