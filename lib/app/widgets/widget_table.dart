import 'package:app_monitors/app/core/theme/app_text_style.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:flutter/material.dart';

class WidgetTable extends StatelessWidget {
  final List<DataColumn> columnList;
  final List<DataRow> rowList;
  WidgetTable(this.columnList, this.rowList);
  factory WidgetTable.withSampleData() {
    return new WidgetTable(ListColumns, RowList);
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        dataRowHeight: 44,
        headingRowHeight: 30,
        headingTextStyle: AppTextStyles.avaRegular14Neu2(),
        showBottomBorder: true,
        headingRowColor: MaterialStateColor.resolveWith(
            (states) => MonitorThemeData().bgElevated1),
        columns: columnList,
        rows: List<DataRow>.generate(
            RowList.length,
            (index) => DataRow(
                color: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  // Even rows will have a grey color.
                  if (index % 2 == 0)
                    return MonitorThemeData().bgBase;
                  else {
                    return MonitorThemeData().bgElevated1;
                  }
                }),
                cells: rowList[index].cells)),
      ),
    );
  }
}

late List<DataRow> RowList = [
  DataRow(
    cells: <DataCell>[
      DataCell(Text('Sarah')),
      DataCell(Text('19')),
      DataCell(Text('Student')),
      DataCell(Text('Student')),
      DataCell(Text('Student')),
      DataCell(Text('Student')),
      DataCell(Text('Student')),
    ],
  ),
  DataRow(
    cells: <DataCell>[
      DataCell(Text('Janine')),
      DataCell(Text('43')),
      DataCell(Text('Professor')),
      DataCell(Text('Professor')),
      DataCell(Text('Professor')),
      DataCell(Text('Professor')),
      DataCell(Text('Professor')),
    ],
  ),
  DataRow(
    cells: <DataCell>[
      DataCell(Text('William')),
      DataCell(Text('27')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
    ],
  ),
  DataRow(
    cells: <DataCell>[
      DataCell(Text('William')),
      DataCell(Text('27')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
    ],
  ),
  DataRow(
    cells: <DataCell>[
      DataCell(Text('William')),
      DataCell(Text('27')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
    ],
  ),
  DataRow(
    cells: <DataCell>[
      DataCell(Text('William')),
      DataCell(Text('27')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
      DataCell(Text('Associate Professor')),
    ],
  ),
];
List<DataColumn> ListColumns = [
  DataColumn(
    label: Text('Name'),
  ),
  DataColumn(
    label: Text(
      'Age',
    ),
  ),
  DataColumn(
    label: Text(
      'Role',
    ),
  ),
  DataColumn(
    label: Text(
      'Role',
    ),
  ),
  DataColumn(
    label: Text(
      'Role',
    ),
  ),
  DataColumn(
    label: Text(
      'Role',
    ),
  ),
  DataColumn(
    label: Text(
      'Role',
    ),
  )
];
