import 'dart:convert';

import 'package:bytebank/http/webclient.dart';
import 'package:http/http.dart';

const MESSAGES_URI =
    "https://gist.githubusercontent.com/guilhermesilveira/e3494abea95343c5e9f9ee0b9c41acc9/raw/488fcfe4287466088bb232103c4aadfe7c8105d0/i18n.json";

class I18NWebClient {
  Future<Map<String, dynamic>> findAll() async {
    final Response response = await client.get(MESSAGES_URI);
    final Map<String, dynamic> decodedJson = jsonDecode(response.body);
    return decodedJson;
  }
}
