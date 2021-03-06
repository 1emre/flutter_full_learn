import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/cache/shared_learn_cache.dart';
import 'package:flutter_full_learn/202/cache/shared_manager.dart';
import 'package:flutter_full_learn/202/cache/user_cache/user_cache_manager.dart';

import '../../models/user_model.dart';

class SharedListCache extends StatefulWidget {
  SharedListCache({Key? key}) : super(key: key);

  @override
  State<SharedListCache> createState() => _SharedListCacheState();
}

class _SharedListCacheState extends LoadingStateull<SharedListCache> {

  late final UserCashManager userCashManager;
  List<User> _users = [];

  @override
  void initState() {
    super.initState();
    intitalazeAndSave();
  }


  Future<void> intitalazeAndSave() async {
    changeLoading();
    final SharedManager manager = SharedManager();
   await manager.init();
   userCashManager = UserCashManager(sharedManager: manager);
   _users = userCashManager.getItems() ?? [];
   changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: isLoading ? CircularProgressIndicator(color: Theme.of(context).scaffoldBackgroundColor ) : SizedBox.shrink(),
        actions: isLoading ? null : [
          IconButton(
              onPressed: () async {
                changeLoading();
                await userCashManager.saveItems(_users);
                changeLoading();
              }, icon: Icon(Icons.download_for_offline_outlined)),
              IconButton(
              onPressed: () {}, icon: Icon(Icons.remove_circle_outline)),
        ],
      ),
      body: _UserListView(users: _users),
    );
  }
}

class _UserListView extends StatelessWidget {
  _UserListView({
    Key? key,required this.users
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(users[index].name ?? ''),
            subtitle: Text(users[index].description ?? ''),
            trailing: Text(
              users[index].url ?? '',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(decoration: TextDecoration.underline),
            ),
          ),
        );
      },
    );
  }
}
