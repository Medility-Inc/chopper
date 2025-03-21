// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_typed_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$TypedTestService extends TypedTestService {
  _$TypedTestService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = TypedTestService;

  @override
  Future<Response<TestModel>> getUser(String id) {
    final Uri $url = Uri.parse('/test/users/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TestModel, TestModel>(
      $request,
      responseConverter: (Response response) {
        final jsonData = jsonDecode(response.body);
        return response.copyWith<TestModel>(body: TestModel.fromJson(jsonData));
      },
    );
  }

  @override
  Future<Response<List<TestModel>>> getUsers() {
    final Uri $url = Uri.parse('/test/users');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<TestModel>, TestModel>(
      $request,
      responseConverter: (Response response) {
        final jsonData = jsonDecode(response.body);
        return response.copyWith<TestModel>(body: TestModel.fromJson(jsonData));
      },
    );
  }

  @override
  Future<Response<TestModel>> searchUser(String name) {
    final Uri $url = Uri.parse('/test/users/search');
    final Map<String, dynamic> $params = <String, dynamic>{'name': name};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TestModel, TestModel>(
      $request,
      responseConverter: (Response response) {
        final jsonData = jsonDecode(response.body);
        return response.copyWith<TestModel>(body: TestModel.fromJson(jsonData));
      },
    );
  }

  @override
  Future<Response<TestModel>> getAuthor() {
    final Uri $url = Uri.parse('/test/post/author');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TestModel, TestModel>(
      $request,
      responseConverter: (Response response) {
        final jsonData = jsonDecode(response.body);
        return response.copyWith<TestModel>(body: TestModel.fromJson(jsonData));
      },
    );
  }

  @override
  Future<Response<TestModel>> getUserRaw(String id) {
    final Uri $url = Uri.parse('/test/users/raw/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TestModel, TestModel>($request);
  }
}
