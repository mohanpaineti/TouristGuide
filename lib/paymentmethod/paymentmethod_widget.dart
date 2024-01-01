import '/auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'paymentmethod_model.dart';
export 'paymentmethod_model.dart';

class PaymentmethodWidget extends StatefulWidget {
  const PaymentmethodWidget({
    Key? key,
    this.price,
    this.days,
  }) : super(key: key);

  final int? price;
  final int? days;

  @override
  _PaymentmethodWidgetState createState() => _PaymentmethodWidgetState();
}

class _PaymentmethodWidgetState extends State<PaymentmethodWidget> {
  late PaymentmethodModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentmethodModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.amount = await actions.newCustomAction(
        widget.price!,
        widget.days!,
      );
      _model.apiResult02x = await CreatePaymentOrderCall.call(
        orderId: random_data.randomString(
          5,
          10,
          true,
          false,
          false,
        ),
        orderAmount: _model.amount,
        orderCurrency: 'INR',
        customerId: currentUserUid,
        customerEmail: currentUserEmail,
        customerPhone: currentPhoneNumber,
      );
      if ((_model.apiResult02x?.succeeded ?? true)) {
        return;
      }

      context.pushNamed('transactionfail');

      return;
    });

    _model.textController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F4F8),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF0F1113),
            size: 30.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Subscription',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Outfit',
                color: Color(0xFF0F1113),
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Color(0x44111417),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 4.0, 8.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.credit_card_rounded,
                                  color: Color(0xFF0F1113),
                                  size: 24.0,
                                ),
                              ),
                              Text(
                                'UPI',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 8.0, 12.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Your Upi Id',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE0E3E7),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF0F1113),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                            maxLines: null,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          var _shouldSetState = false;
                          _model.apiResultsjf = await OrderPayCall.call(
                            paymentSessionId:
                                CreatePaymentOrderCall.paymentsessionid(
                              (_model.apiResult02x?.jsonBody ?? ''),
                            ).toString(),
                            channel: 'link',
                            upiId: _model.textController.text,
                            upiExpiryMinutes: 10,
                          );
                          _shouldSetState = true;
                          if ((_model.apiResultsjf?.succeeded ?? true)) {
                            context.pushNamed(
                              'webview',
                              queryParams: {
                                'paymentlink': serializeParam(
                                  OrderPayCall.gpay(
                                    (_model.apiResultsjf?.jsonBody ?? ''),
                                  ).toString(),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );

                            if (_shouldSetState) setState(() {});
                            return;
                          } else {
                            context.goNamed('transactionfail');

                            if (_shouldSetState) setState(() {});
                            return;
                          }

                          if (_shouldSetState) setState(() {});
                        },
                        text: 'Pay Now',
                        options: FFButtonOptions(
                          width: 270.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF0F1113),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFFF1F4F8),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
