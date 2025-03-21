import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';

part 'test_typed_service.chopper.dart';

// 테스트용 모델 클래스
class TestModel {
  final String id;
  final String name;

  TestModel({required this.id, required this.name});

  factory TestModel.fromJson(Map<String, dynamic> json) {
    return TestModel(
      id: json['id'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

@ChopperApi(baseUrl: '/test')
abstract class TypedTestService extends ChopperService {
  static TypedTestService create([ChopperClient? client]) =>
      _$TypedTestService(client);

  // 기본 TypedResponse 테스트
  @TypedResponse()
  @GET(path: 'users/{id}')
  Future<Response<TestModel>> getUser(@Path() String id);

  // List<T> 타입 테스트
  @TypedResponse()
  @GET(path: 'users')
  Future<Response<List<TestModel>>> getUsers();

  // nullable 타입 테스트
  @TypedResponse()
  @GET(path: 'users/search')
  Future<Response<TestModel?>> searchUser(@Query('name') String name);

  // parameter 테스트
  @TypedResponse(TestModel)
  @GET(path: 'post/author')
  Future<Response<TestModel>> getAuthor();

  // 직접 응답 처리하는 케이스 (TypedResponse 미사용)
  @GET(path: 'users/raw/{id}')
  Future<Response<TestModel>> getUserRaw(@Path() String id);
}
