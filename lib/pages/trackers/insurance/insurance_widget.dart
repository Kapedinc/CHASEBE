import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'insurance_model.dart';
export 'insurance_model.dart';

class InsuranceWidget extends StatefulWidget {
  const InsuranceWidget({Key? key}) : super(key: key);

  @override
  _InsuranceWidgetState createState() => _InsuranceWidgetState();
}

class _InsuranceWidgetState extends State<InsuranceWidget> {
  late InsuranceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsuranceModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'insurance'});
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Html(
                data:
                    '<html>\n\t<head>\n\t\t<script src=\"https://embed.array.io/cms/array-web-component.js?appKey=3F03D20E-5311-43D8-8A76-E4B5D77793BD\"></script>\n\t\t<script src=\"https://embed.array.io/cms/array-credit-report.js?appKey=3F03D20E-5311-43D8-8A76-E4B5D77793BD\"></script>\n\t</head>\n\t<body>\n\t<array-credit-report\n\t\tappKey=\"3F03D20E-5311-43D8-8A76-E4B5D77793BD\"\n\t\tuserToken=\"AD45C4BF-5C0A-40B3-8A53-ED29D091FA11\"\n\t\tsandbox=\"true\"\n\t\tcondensed=\"true\"\n\t></array-credit-report>\n\t</body>\n</html>\n',
              ),
              FlutterFlowWebView(
                content:
                    '<iframe src=\"https://app.thimble.com/home?brokerid=PKAX8P5EB&widget_source=embed\" border=\"0\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" allow=\"geolocation *;\" style=\"height:700px;width:400px;max-width:100%;max-height:100%;\"></iframe>\n',
                height: 852.0,
                verticalScroll: true,
                horizontalScroll: false,
                html: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
