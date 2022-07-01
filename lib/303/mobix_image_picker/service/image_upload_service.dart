import 'dart:developer';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_full_learn/303/mobix_image_picker/model/image_upload_response.dart';

class ImageUploadService {
  final Dio dio;

  ImageUploadService(this.dio);

  Future<ImageUploadResponse?> uploadToImageServer(Uint8List byteArray, String name,{void Function(int, int)? onSendProgress}) async {
   // var formData = FormData.fromMap({'': MultipartFile.fromBytes(byteArray)});

   final response = await  dio.post('full%2F$name.png', data: byteArray, onSendProgress: onSendProgress);
  inspect(response.statusCode);
   if (response.statusCode == HttpStatus.ok){

     return ImageUploadResponse.fromJson(response.data);
   }

   return null;
  }
}
