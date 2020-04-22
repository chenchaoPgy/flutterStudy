import 'package:flutter/material.dart';
import 'package:my_flutter_app/main.dart';
import '../model/post.dart';

class PaginDataTableDemo extends StatefulWidget {
  @override
  _PaginDataTableDemo createState() => _PaginDataTableDemo();
}

class paginatedResource extends DataTableSource {
  final List<Post> _posts = posts;

  int _selectedRowCount = 0;

  @override
  DataRow getRow(int index) {
    // TODO: implement getRow
    Post post = _posts[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(post.title)),
        DataCell(Text(post.author)),
        DataCell(Image.network(post.imageUrl)),
      ],
    );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => posts.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectedRowCount;

  void _sort(getField(post), ascending) {
    _posts.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      final aValue = getField(a);
      final bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }
}

class _PaginDataTableDemo extends State<PaginDataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;
  final paginatedResource _paginatedResource = paginatedResource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              header: Text("PAGINATED"),
              source: _paginatedResource,
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              columns: [
                DataColumn(
                    label: Text('Title'),
                    onSort: (int columnIndex, bool ascending) {
                      _paginatedResource._sort(
                          (post) => post.title.length, ascending);
                      setState(() {
                        _sortColumnIndex = columnIndex;
                        _sortAscending = ascending;
                      });
                    }

//                    onSort: (int index, bool isAscend) {
//                      setState(() {
//                        _sortColumnIndex = index;
//                        _sortAscending = isAscend;
//                        posts.sort((post1, post2) {
//                          if (!isAscend) {
//                            final temp = post1;
//                            post1 = post2;
//                            post2 = temp;
//                          }
//                          return post1.title
//                              .substring(0, 1)
//                              .compareTo(post2.title.substring(0, 1));
//                        });
//                      });
//                    }
                    ),
                DataColumn(
                    label: Text('Author'),
                    onSort: (int index, bool isAscend) {
                      setState(() {
                        _sortColumnIndex = index;
                        _sortAscending = isAscend;
                        posts.sort((post1, post2) {
                          if (!isAscend) {
                            final temp = post1;
                            post1 = post2;
                            post2 = temp;
                          }
                          return post1.author
                              .substring(0, 1)
                              .compareTo(post2.author.substring(0, 1));
                        });
                      });
                    }),
                DataColumn(label: Text('Image'))
              ],
//                rows: posts.map((post) {
//                  return DataRow(
//                    selected: post.selected,
//                    onSelectChanged: (bool value) {
//                      setState(() {
//                        if (post.selected != value) {
//                          post.selected = value;
//                        }
//                      });
//                    },
//                    cells: [
//                      DataCell(Text(post.title)),
//                      DataCell(Text(post.author)),
//                      DataCell(Image.network(post.imageUrl)),
//                    ],
//                  );
//                }).toList())
            )
          ],
        ),
      ),
    );
  }
}
