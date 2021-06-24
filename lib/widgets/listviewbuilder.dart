import 'package:assesapp/model/userlist_changenotifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  void initState() {
    super.initState();
    Provider.of<UserListChangeNotifier>(context, listen: false).getAllUser();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserListChangeNotifier>(
      builder: (_, userlistInstance, __) => ListView.builder(
          itemCount: userlistInstance.listOfUser.length,
          itemBuilder: (BuildContext context, int index) {
            return userlistInstance.listOfUser.length > 0
                ? Card(
                    child: ListTile(
                        leading: InkWell(
                          child: Image.network(
                            '${userlistInstance.listOfUser[index].avatar_url}',
                          ),
                        ),
                        subtitle:
                            Text('${userlistInstance.listOfUser[index].type}'),
                        trailing: Column(
                          children: [],
                        ),
                        title: Text(
                          '${userlistInstance.listOfUser[index].login}',
                        )),
                  )
                : Text('Data Not Found');
          }),
    );
    // Card(
    //     child: Column(
    //   children: [
    //     ListTile(
    //       leading:
    //           Image.network('https://img.icons8.com/bubbles/2x/user-male.png'),
    //       title: Text(
    //         'defunkt',
    //         textScaleFactor: 1.5,
    //       ),
    //       subtitle: Text('User'),
    //     ),
    //     ListTile(
    //       leading:
    //           Image.network('https://img.icons8.com/bubbles/2x/user-male.png'),
    //       title: Text(
    //         'mojombo',
    //         textScaleFactor: 1.5,
    //       ),
    //       subtitle: Text('User'),
    //     ),
    //   ],
    // ));

    ////////Due to Getting Defficulty in Api Data
  }
}
