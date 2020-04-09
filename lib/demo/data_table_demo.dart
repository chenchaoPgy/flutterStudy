import 'package:flutter/material.dart';
import 'package:my_flutter_app/main.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

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
            DataTable(
                sortColumnIndex: _sortColumnIndex,
                sortAscending: _sortAscending,
                columns: [
                  DataColumn(
                      label: Text('Title'),
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
                            return post1.title
                                .substring(0, 1)
                                .compareTo(post2.title.substring(0, 1));
                          });
                        });
                      }),
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
                      }
                      ),
                  DataColumn(label: Text('Image'))
                ],
                rows: posts.map((post) {
                  return DataRow(
                    selected: post.selected,
                    onSelectChanged: (bool value) {
                      setState(() {
                        if (post.selected != value) {
                          post.selected = value;
                        }
                      });
                    },
                    cells: [
                      DataCell(Text(post.title)),
                      DataCell(Text(post.author)),
                      DataCell(Image.network(post.imageUrl)),
                    ],
                  );
                }).toList())
          ],
        ),
      ),
    );
  }
}
