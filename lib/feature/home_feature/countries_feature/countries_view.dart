import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/home_feature/widget/home_app_bar.dart';

class CountriesView extends StatelessWidget {
  const CountriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final DataTableSource data = CountryData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeAppBar(titleName: 'Countries'),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width *0.05,
          ),
          child: PaginatedDataTable(
            columns: const [
               DataColumn(label: Text('Country'),),
               DataColumn(label: Text('Capital')),
            ],
            source: data,
            showFirstLastButtons: true,
            horizontalMargin: 60,
            showCheckboxColumn: false,
            rowsPerPage: 10,
          ),
        ),
      ],
    );
  }
}
class CountryData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
    70,
        (index) => {
      "country": "Egypt",
      "capital": "Cairo",
    },
  );

  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(_data[index]['country']),),
        DataCell(Text(_data[index]['capital'])),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _data.length;
  @override
  int get selectedRowCount => 0;
}