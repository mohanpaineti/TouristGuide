import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'welcome_model.dart';
export 'welcome_model.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  late WelcomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeModel());

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
      backgroundColor: Color(0xFFFDFEFF),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-6.35, 1.4),
                child: Container(
                  width: 350.0,
                  height: 350.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(8.8, 0.18),
                child: Container(
                  width: 350.0,
                  height: 350.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF3CB4C9),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.04),
                child: Image.asset(
                  'assets/images/Dressing-For-a-Holiday-Flight-768x514-removebg-preview.png',
                  width: MediaQuery.of(context).size.width * 1.8,
                  height: 500.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.07, -0.96),
                child: Container(
                  width: 300.0,
                  height: 230.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFDFEFF),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          width: 70.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Enjoy the trip with',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF7D7D7D),
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                        Text(
                          'Good Moments',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF6FD3E7),
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 40.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('signup');
                    },
                    text: 'Get Started',
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: 350.0,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF3CB4C9),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Roboto',
                                color: Color(0xFFFDFEFF),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                      borderSide: BorderSide(
                        color: Color(0xFF3CB4C9),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                      hoverColor: Color(0xFF6FD3E7),
                      hoverBorderSide: BorderSide(
                        color: Color(0xFF6FD3E7),
                        width: 1.0,
                      ),
                      hoverTextColor:
                          FlutterFlowTheme.of(context).primaryBtnText,
                    ),
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
