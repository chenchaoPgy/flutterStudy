import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/demo/alert_dialog_demo.dart';
import 'package:my_flutter_app/demo/animation/animation_demo.dart';
import 'package:my_flutter_app/demo/bloc/bloc_demo.dart';
import 'package:my_flutter_app/demo/bottom_sheet_dart.dart';
import 'package:my_flutter_app/demo/card_demo.dart';
import 'package:my_flutter_app/demo/data_table_demo.dart';
import 'package:my_flutter_app/demo/datetime_demo.dart';
import 'package:my_flutter_app/demo/expansion_panel_demo.dart';
import 'package:my_flutter_app/demo/http/http_demo.dart';
import 'package:my_flutter_app/demo/i18n/i18n_demo.dart';
import 'package:my_flutter_app/demo/paginated_data_table_demo.dart';
import 'package:my_flutter_app/demo/rxdart/rxdart_demo.dart';
import 'package:my_flutter_app/demo/simple_dialog_demo.dart';
import 'package:my_flutter_app/demo/snack_bar_demo.dart';
import 'package:my_flutter_app/demo/step_demo.dart';
import 'package:my_flutter_app/demo/stream/stream_demo.dart';
import 'package:my_flutter_app/model/post.dart';
import 'button_demo.dart';
import 'floating_action_button.dart';
import 'popup_menu_button_demo.dart';
import 'form_demo.dart';
import 'check_box_demo.dart';
import 'radio_demo.dart';
import 'switch_demo.dart';
import 'slider_demo.dart';
import 'ChipDemo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListItem(
              title: "I18nDemo",
              page: I18nDemo(),
            ),
            ListItem(
              title: "AnimationDemo",
              page: AnimationDemo(),
            ),
            ListItem(
              title: "HttpDemo",
              page: HttpDemo(),
            ),
            ListItem(
              title: "BlocDemo",
              page: BlocDemo(),
            ),
            ListItem(
              title: "RxDemo",
              page: RxDemo(),
            ),
            ListItem(
              title: "StreamDemo",
              page: StreamDemo(),
            ),
            ListItem(
              title: "StepDemo",
              page: StepDemo(),
            ),
            ListItem(
              title: "CardDemo",
              page: CardDemo(),
            ),
            ListItem(
              title: "PaginDataTableDemo",
              page: PaginDataTableDemo(),
            ),
            ListItem(
              title: "DataTableDemo",
              page: DataTableDemo(),
            ),
            ListItem(
              title: "ChipDemo",
              page: ChipDemo(),
            ),
            ListItem(
              title: "ExpansionPanelDemo",
              page: ExpansionPanelDemo(),
            ),
            ListItem(
              title: "SnackBarDemo",
              page: SnackBarDemo(),
            ),
            ListItem(
              title: "BottomSheetDemo",
              page: BottomSheetDemo(),
            ),
            ListItem(
              title: 'AlertDialogDemo',
              page: AlertDialogDemo(),
            ),
            ListItem(
              title: 'SimpleDialogDemo',
              page: SimpleDialogDemo(),
            ),
            ListItem(
              title: 'DatetimeDemo',
              page: DateTimeDemo(),
            ),
            ListItem(
              title: 'SliderDemo',
              page: SliderDemo(),
            ),
            ListItem(
              title: 'SwitchDemo',
              page: SwtichDemo(),
            ),
            ListItem(
              title: 'RadioDemo',
              page: RadioDemo(),
            ),
            ListItem(
              title: 'CheckBoxDemo',
              page: CheckBoxDemo(),
            ),
            ListItem(
              title: 'FormDemo',
              page: FormDemo(),
            ),
            ListItem(
              title: 'PopupMenuButtonDemo',
              page: PopupMenuButtonDemo(),
            ),
            ListItem(
              title: 'ButtonDemo',
              page: ButtonDemo(),
            ),
            ListItem(
              title: 'FloatingActionButton',
              page: FloatingActionButtonDemo(),
            )
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  String title;
  Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}

class ListViewDemo extends StatelessWidget {
  Widget _widget(BuildContext context, int index) {
    return Container(
      child: Row(
        children: <Widget>[
          Image.network(
            posts[index].imageUrl,
            width: 20,
            height: 20,
          ),
          SizedBox(
            height: 15.0,
          ),
          ListTile(
            title: Text(posts[index].author),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FloatingActionButtonDemo()));
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: _widget, itemCount: posts.length);
  }
}
