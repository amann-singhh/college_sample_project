import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyModel {
  bool? checkboxListTileValue1;
  // ... other properties and methods
}

class questionStatus extends StatefulWidget {
  const questionStatus({Key? key}) : super(key: key);

  @override
  _questionStatusState createState() => _questionStatusState();
}

class _questionStatusState extends State<questionStatus>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TabController? _tabController;
  final MyModel _model = MyModel();

  TooltipBehavior _tooltipBehavior = TooltipBehavior(enable: true);

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
     _tabController = TabController(length: 2, vsync: this);  
    super.initState();
  }

  @override
  void dispose() {
     _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // Generated code for this Chart Widget...
Padding(
  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
  child: Container(
    width: double.infinity,
    height: 200,
    child: SfCircularChart(
      series: <CircularSeries>[
        // Renders doughnut chart with labels
        DoughnutSeries<Data, String>(
          dataSource: getData(),
          pointColorMapper: (Data data, _) => data.color,
          xValueMapper: (Data data, _) => data.x,
          yValueMapper: (Data data, _) => data.y,
          innerRadius: '60%',
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
            labelPosition: ChartDataLabelPosition.inside,
          ),
        ),
      ],
    ),
  ),
),

              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                          child: TabBar(
                              controller: _tabController,
                            labelColor: Color(0xFF4B39EF),
                            labelStyle: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF4B39EF),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            unselectedLabelColor: Color(0xFF8B97A2),
                            unselectedLabelStyle: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF8B97A2),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            indicatorColor: Color(0xFF4B39EF),
                            tabs: [
                              Tab(
                                text: 'In Progress',
                              ),
                              Tab(
                                text: 'Completed',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                           controller: _tabController,
                          children: [
                        // Generated code for this PlaceholderWidget Widget...
                        Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x25090F13),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 12),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                        ),
                                        unselectedWidgetColor: Color(0xFF57636C),
                                      ),
                                      child: CheckboxListTile(
                                        
                                        value: _model.checkboxListTileValue1 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxListTileValue1 = newValue!);
                                        },
                                        title: Text(
                                          'Design Template Screens',
                                          style:TextStyle(
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                         
                        ),
                                        ),
                                        subtitle: Text(
                                          'Create template screen for task todo app.',
                                          style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF57636C),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                                        ),
                                        tileColor: Colors.white,
                                        activeColor: Color(0xFF4B39EF),
                                        dense: true,
                                        controlAffinity: ListTileControlAffinity.trailing,
                                      
                                      ),
                                    ),
                                    Divider(
                                      height: 24,
                                      thickness: 1,
                                      color: Color(0xFFF1F4F8),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Due',
                                          style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF14181B),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                            child: Text(
                        'Tuesday, 10:00am',
                        style:
                           TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF4B39EF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1F4F8),
                                            borderRadius: BorderRadius.circular(32),
                                          ),
                                          alignment: AlignmentDirectional(0.00, 0.00),
                                          child: Text(
                                            'In Progress',
                                            style: TextStyle(
                            fontFamily: 'Plus Jakarta Sans',
                            color: Color(0xFF14181B),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        ),
                        Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                           
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x25090F13),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 12),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                        ),
                                        unselectedWidgetColor: Color(0xFF57636C),
                                      ),
                                      child: CheckboxListTile(
                                        
                                        value: _model.checkboxListTileValue1 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxListTileValue1 = newValue!);
                                        },
                                        title: Text(
                                          'Design Template Screens',
                                          style:TextStyle(
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                         
                        ),
                                        ),
                                        subtitle: Text(
                                          'Create template screen for task todo app.',
                                          style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF57636C),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                                        ),
                                        tileColor: Colors.white,
                                        activeColor: Color(0xFF4B39EF),
                                        dense: true,
                                        controlAffinity: ListTileControlAffinity.trailing,
                                      
                                      ),
                                    ),
                                    Divider(
                                      height: 24,
                                      thickness: 1,
                                      color: Color(0xFFF1F4F8),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Due',
                                          style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF14181B),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                            child: Text(
                        'Tuesday, 10:00am',
                        style:
                           TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF4B39EF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1F4F8),
                                            borderRadius: BorderRadius.circular(32),
                                          ),
                                          alignment: AlignmentDirectional(0.00, 0.00),
                                          child: Text(
                                            'In Progress',
                                            style: TextStyle(
                            fontFamily: 'Plus Jakarta Sans',
                            color: Color(0xFF14181B),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        )
                                             
                          ],
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

class Data {
  Data(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
List<Data> getData() {
  return <Data>[
    Data('A', 25, Colors.red),
    Data('B', 50, Colors.green),
    Data('C', 25, Colors.blue),
  ];
}