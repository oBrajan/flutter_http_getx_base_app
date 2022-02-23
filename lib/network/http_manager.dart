import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jds_flutter/network/api_interface.dart';

import 'exceptions.dart';

const timeout = Duration(seconds: 15);

abstract class IHttpManager {
  Future<dynamic> get({
    required String url,
    required Map<String, dynamic> query,
    required Map<String, String> headers,
  });

  Future<dynamic> post({
    required String url,
    required Map body,
    required Map<String, dynamic> query,
    required Map<String, String> headers,
  });

  Future<dynamic> put({
    required String url,
    required Map body,
    required Map<String, dynamic> query,
    required Map<String, String> headers,
  });

  Future<dynamic> delete({
    required String url,
    required Map<String, dynamic> query,
    required Map<String, String> headers,
  });
}

class HttpManager implements IHttpManager {
  @override
  Future get(
      {required String url,
      required Map<String, dynamic> query,
      required Map<String, String> headers}) async {
    try {
      print('Api Get request url $url');
      final response = await http
          .get(_queryBuilder(url, query), headers: _headerBuilder(headers))
          .timeout(timeout, onTimeout: () {
        throw NetworkException();
      });
      return _returnResponse(response);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future post(
      {required String url,
      required Map body,
      required Map<String, dynamic> query,
      required Map<String, String> headers}) async {
    try {
      print('Api Post request url $url, with $body');
      final response = await http
          .post(_queryBuilder(url, query),
              body: json.encode(body), headers: _headerBuilder(headers))
          .timeout(timeout, onTimeout: () {
        throw NetworkException();
      });
      return _returnResponse(response);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future put(
      {required String url,
      required Map body,
      required Map<String, dynamic> query,
      required Map<String, String> headers}) async {
    try {
      print('Api Put request url $url, with $body');
      final response = await http
          .put(_queryBuilder(url, query),
              body: json.encode(body), headers: _headerBuilder(headers))
          .timeout(timeout, onTimeout: () {
        throw NetworkException();
      });
      return _returnResponse(response);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future delete(
      {required String url,
      required Map<String, dynamic> query,
      required Map<String, String> headers}) async {
    try {
      print('Api Delete request url $url');
      final response = await http
          .delete(_queryBuilder(url, query), headers: _headerBuilder(headers))
          .timeout(timeout, onTimeout: () {
        throw NetworkException();
      });
      return _returnResponse(response);
    } catch (error) {
      rethrow;
    }
  }

  Map<String, String> _headerBuilder(Map<String, String> headers) {
    if (headers.isNotEmpty) {
      headers.forEach((key, value) {
        headers[key] = value;
      });
    }
    return headers;
  }

  Uri _queryBuilder(String path, Map<String, dynamic> query) {
    final buffer = StringBuffer();
    buffer.write(Api.apiUrl + path);
    if (query.isNotEmpty) {
      buffer.write('?');
    }
    query.forEach((key, value) {
      buffer.write('$key=$value&');
    });
    return Uri.parse(buffer.toString());
  }

  dynamic _returnResponse(http.Response response) {
    final responseJson = json.decode(response.body.toString());
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      print('Api response success with $responseJson');
      return responseJson;
    }
    switch (response.statusCode) {
      case 400:
        throw responseJson;
      case 404:
        throw responseJson;
      case 409:
        throw responseJson;
      case 500:
        throw responseJson;
      default:
        throw FetchDataException(
            'Error occured while communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
