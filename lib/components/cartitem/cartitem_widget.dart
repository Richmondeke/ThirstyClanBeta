import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cartitem_model.dart';
export 'cartitem_model.dart';

class CartitemWidget extends StatefulWidget {
  const CartitemWidget({
    Key? key,
    required this.product,
    required this.cart,
  }) : super(key: key);

  final DocumentReference? product;
  final DocumentReference? cart;

  @override
  _CartitemWidgetState createState() => _CartitemWidgetState();
}

class _CartitemWidgetState extends State<CartitemWidget> {
  late CartitemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartitemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
      child: StreamBuilder<ProductsRecord>(
        stream: ProductsRecord.getDocument(widget.product!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitRipple(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            );
          }
          final containerProductsRecord = snapshot.data!;
          return Container(
            width: double.infinity,
            height: 160.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x320E151B),
                  offset: Offset(0.0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 8.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StreamBuilder<ProductsRecord>(
                    stream: ProductsRecord.getDocument(widget.product!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: SpinKitRipple(
                              color: FlutterFlowTheme.of(context).primary,
                              size: 50.0,
                            ),
                          ),
                        );
                      }
                      final imageProductsRecord = snapshot.data!;
                      return Hero(
                        tag: imageProductsRecord.productImage,
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            imageProductsRecord.productImage,
                            width: 80.0,
                            height: 80.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: StreamBuilder<ProductsRecord>(
                            stream: ProductsRecord.getDocument(widget.product!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitRipple(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              final textProductsRecord = snapshot.data!;
                              return Text(
                                textProductsRecord.productName,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'DM Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                              );
                            },
                          ),
                        ),
                        StreamBuilder<ProductsRecord>(
                          stream: ProductsRecord.getDocument(widget.product!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitRipple(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            final textProductsRecord = snapshot.data!;
                            return Text(
                              valueOrDefault<String>(
                                formatNumber(
                                  textProductsRecord.price,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.periodDecimal,
                                  currency: '\$',
                                ),
                                '0.00',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'DM Sans',
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: StreamBuilder<CartRecord>(
                            stream: CartRecord.getDocument(widget.cart!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitRipple(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              final countControllerCartRecord = snapshot.data!;
                              return Container(
                                width: 130.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Color(0xFF9E9E9E),
                                    width: 1.0,
                                  ),
                                ),
                                child: FlutterFlowCountController(
                                  decrementIconBuilder: (enabled) => FaIcon(
                                    FontAwesomeIcons.minus,
                                    color: enabled
                                        ? Color(0xDD000000)
                                        : Color(0xFFEEEEEE),
                                    size: 18.0,
                                  ),
                                  incrementIconBuilder: (enabled) => FaIcon(
                                    FontAwesomeIcons.plus,
                                    color: enabled
                                        ? FlutterFlowTheme.of(context).primary
                                        : Color(0xFFEEEEEE),
                                    size: 18.0,
                                  ),
                                  countBuilder: (count) => Text(
                                    count.toString(),
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  count: _model.countControllerValue ??=
                                      countControllerCartRecord.quantity,
                                  updateCount: (count) async {
                                    setState(() =>
                                        _model.countControllerValue = count);
                                    await widget.cart!
                                        .update(createCartRecordData(
                                      quantity: _model.countControllerValue,
                                    ));
                                  },
                                  stepSize: 1,
                                  minimum: 1,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.delete_outline_rounded,
                      color: Color(0xFFE86969),
                      size: 20.0,
                    ),
                    onPressed: () async {
                      await widget.cart!.delete();
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
