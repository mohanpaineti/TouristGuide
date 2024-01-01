import '/backend/backend.dart';
import '/components/bookbottom_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'review_model.dart';
export 'review_model.dart';

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({
    Key? key,
    this.place,
  }) : super(key: key);

  final String? place;

  @override
  _ReviewWidgetState createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  late ReviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<PlacesRecord>>(
      stream: queryPlacesRecord(
        queryBuilder: (placesRecord) =>
            placesRecord.where('name', isEqualTo: widget.place),
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
        List<PlacesRecord> reviewPlacesRecordList = snapshot.data!;
        final reviewPlacesRecord = reviewPlacesRecordList.isNotEmpty
            ? reviewPlacesRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFF1F4F8),
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              buttonSize: 46.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFF95A1AC),
                size: 24.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
            title: Text(
              'List of Guides',
              style: FlutterFlowTheme.of(context).subtitle1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF090F13),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: SafeArea(
            child: StreamBuilder<List<GuidesRecord>>(
              stream: queryGuidesRecord(
                queryBuilder: (guidesRecord) => guidesRecord.where('place',
                    isEqualTo: valueOrDefault<String>(
                      widget.place,
                      'None',
                    )),
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
                List<GuidesRecord> columnGuidesRecordList = snapshot.data!;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(columnGuidesRecordList.length,
                        (columnIndex) {
                      final columnGuidesRecord =
                          columnGuidesRecordList[columnIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: InkWell(
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: BookbottomWidget(
                                    guidename: columnGuidesRecord.name,
                                    price: columnGuidesRecord.price,
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 4.0, 4.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                columnGuidesRecord.name!,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF090F13),
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 4.0),
                                                child: RatingBarIndicator(
                                                  itemBuilder:
                                                      (context, index) => Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFFFFA130),
                                                  ),
                                                  direction: Axis.horizontal,
                                                  rating: columnGuidesRecord
                                                      .rating!,
                                                  unratedColor:
                                                      Color(0xFF95A1AC),
                                                  itemCount: 5,
                                                  itemSize: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0xFFF1F4F8),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 2.0, 2.0, 2.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/userAvatar.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 16.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'price per day:- ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                      ),
                                            ),
                                          ),
                                          Text(
                                            columnGuidesRecord.price!
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                          ),
                                          Text(
                                            'Rs',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
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
