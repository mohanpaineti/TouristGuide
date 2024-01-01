import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'placedesc1_model.dart';
export 'placedesc1_model.dart';

class Placedesc1Widget extends StatefulWidget {
  const Placedesc1Widget({
    Key? key,
    this.placename,
  }) : super(key: key);

  final String? placename;

  @override
  _Placedesc1WidgetState createState() => _Placedesc1WidgetState();
}

class _Placedesc1WidgetState extends State<Placedesc1Widget> {
  late Placedesc1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Placedesc1Model());

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

    return StreamBuilder<List<PlacesRecord>>(
      stream: queryPlacesRecord(
        queryBuilder: (placesRecord) =>
            placesRecord.where('name', isEqualTo: widget.placename),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<PlacesRecord> placedesc1PlacesRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final placedesc1PlacesRecord = placedesc1PlacesRecordList.isNotEmpty
            ? placedesc1PlacesRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: NestedScrollView(
            headerSliverBuilder: (context, _) => [
              SliverAppBar(
                pinned: false,
                floating: true,
                snap: false,
                backgroundColor: Color(0xFFFDFEFF),
                iconTheme: IconThemeData(color: Colors.black),
                automaticallyImplyLeading: true,
                title: AutoSizeText(
                  widget.placename!,
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 10.0,
              )
            ],
            body: Builder(
              builder: (context) {
                return SafeArea(
                  child: GestureDetector(
                    onTap: () =>
                        FocusScope.of(context).requestFocus(_unfocusNode),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFDFEFF),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                              placedesc1PlacesRecord!.image!,
                              width: double.infinity,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 500.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFDFEFF),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Description',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                              ),
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 0.0),
                                              child: Text(
                                                placedesc1PlacesRecord!.desc!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 350.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFDFEFF),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 10.0,
                                              color: Colors.black,
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xFFFDFEFF),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Available Guides:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              placedesc1PlacesRecord!.guides!
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                      ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed(
                                                  'review',
                                                  queryParams: {
                                                    'place': serializeParam(
                                                      widget.placename,
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              text: 'Book',
                                              options: FFButtonOptions(
                                                width: 100.0,
                                                height: 35.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF3CB4C9),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFFDFEFF),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                elevation: 5.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
