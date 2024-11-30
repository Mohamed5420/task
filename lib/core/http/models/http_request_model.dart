enum ResType { model, list, type }

enum RequestMethod { get, post, put, patch, delete }

class HttpRequestModel {
  final String url;
  final Function(dynamic)? errorFunc;
  final ResType responseType;
  final RequestMethod requestMethod;
  final Map<String, dynamic>? requestBody;
  final Function(dynamic data)? responseKey;
  final Function(dynamic data)? toJsonFunc;
  final Map<String, String>? headers;
  bool? showLoader;
  bool? isMultipart;
  bool refresh;
  bool? isScan;

  HttpRequestModel({required this.url, required this.responseType, required this.requestMethod, this.headers, this.requestBody, this.responseKey, this.toJsonFunc, this.showLoader, this.errorFunc, this.isMultipart = false, this.refresh = true, this.isScan = false});
}
