class RequestBodyModel {
  final String url;
  final Function(dynamic) errorFunc;
  final Map<String, dynamic> body;
  final bool showLoader;
  final bool forceRefresh;
  final bool isMultiPart;
  final bool? isScan;
  final Map<String, String>? headers;

  RequestBodyModel({required this.url, this.body = const <String, dynamic>{}, this.showLoader = false, this.forceRefresh = true, this.isMultiPart = false, required this.errorFunc, this.headers, this.isScan = false});
}
