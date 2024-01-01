import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreatePaymentOrderCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
    double? orderAmount,
    String? orderCurrency = '',
    String? customerId = '',
    String? customerEmail = '',
    String? customerPhone = '',
  }) {
    final body = '''
{
  "customer_details": {
    "customer_id": "${customerId}",
    "customer_email": "${customerEmail}",
    "customer_phone": "${customerPhone}"
  },
  "order_id": "${orderId}",
  "order_amount": ${orderAmount},
  "order_currency": "${orderCurrency}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePaymentOrder',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'x-api-version': '2022-09-01',
        'x-client-id': '162750e4b6c7acd3dacbaf2806057261',
        'x-client-secret': '2638daad8d9940823db35afe33d6bd6b75d43084',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic entity(dynamic response) => getJsonField(
        response,
        r'''$.entity''',
      );
  static dynamic orderamount(dynamic response) => getJsonField(
        response,
        r'''$.order_amount''',
      );
  static dynamic orderexpirytime(dynamic response) => getJsonField(
        response,
        r'''$.order_expiry_time''',
      );
  static dynamic ordercurrency(dynamic response) => getJsonField(
        response,
        r'''$.order_currency''',
      );
  static dynamic orderid(dynamic response) => getJsonField(
        response,
        r'''$.order_id''',
      );
  static dynamic cforderid(dynamic response) => getJsonField(
        response,
        r'''$.cf_order_id''',
      );
  static dynamic createdat(dynamic response) => getJsonField(
        response,
        r'''$.created_at''',
      );
  static dynamic customerdetailscustomerid(dynamic response) => getJsonField(
        response,
        r'''$.customer_details.customer_id''',
      );
  static dynamic customerdetailscustomeremail(dynamic response) => getJsonField(
        response,
        r'''$.customer_details.customer_email''',
      );
  static dynamic customerdetailscustomerphone(dynamic response) => getJsonField(
        response,
        r'''$.customer_details.customer_phone''',
      );
  static dynamic orderstatus(dynamic response) => getJsonField(
        response,
        r'''$.order_status''',
      );
  static dynamic paymentsessionid(dynamic response) => getJsonField(
        response,
        r'''$.payment_session_id''',
      );
}

class OrderPayCall {
  static Future<ApiCallResponse> call({
    String? paymentSessionId = '',
    String? channel = '',
    String? upiId = '',
    int? upiExpiryMinutes,
  }) {
    final body = '''
{
  "payment_method": {
    "upi": {
      "channel": "${channel}",
      "upi_id": "${upiId}",
      "upi_expiry_minutes": ${upiExpiryMinutes}
    }
  },
  "payment_session_id": "${paymentSessionId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Order Pay',
      apiUrl: 'https://sandbox.cashfree.com/pg/orders/sessions',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'x-api-version': '2022-09-01',
        'x-client-id': '162750e4b6c7acd3dacbaf2806057261',
        'x-client-secret': '2638daad8d9940823db35afe33d6bd6b75d43084',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic cfpaymentid(dynamic response) => getJsonField(
        response,
        r'''$.cf_payment_id''',
      );
  static dynamic channel(dynamic response) => getJsonField(
        response,
        r'''$.channel''',
      );
  static dynamic bhim(dynamic response) => getJsonField(
        response,
        r'''$.data.payload.bhim''',
      );
  static dynamic defaultpayment(dynamic response) => getJsonField(
        response,
        r'''$.data.payload.default''',
      );
  static dynamic gpay(dynamic response) => getJsonField(
        response,
        r'''$.data.payload.gpay''',
      );
  static dynamic paytm(dynamic response) => getJsonField(
        response,
        r'''$.data.payload.paytm''',
      );
  static dynamic phonepe(dynamic response) => getJsonField(
        response,
        r'''$.data.payload.phonepe''',
      );
  static dynamic webpayment(dynamic response) => getJsonField(
        response,
        r'''$.data.payload.web''',
      );
  static dynamic paymentamount(dynamic response) => getJsonField(
        response,
        r'''$.payment_amount''',
      );
  static dynamic paymentmethod(dynamic response) => getJsonField(
        response,
        r'''$.payment_method''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
