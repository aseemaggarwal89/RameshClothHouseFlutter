import 'package:objectbox/objectbox.dart';
import 'package:rameshclothhouse/data_layer/data_layer.dart';
// ignore: depend_on_referenced_packages
import 'package:path_provider/path_provider.dart';
import 'package:rameshclothhouse/objectbox.g.dart';

abstract class IAppDatabaseBuilder {}

class _$AppDatabaseBuilder extends IAppDatabaseBuilder {
  final String name;
  _$AppDatabaseBuilder(this.name);

  Future<AppDatabase> build() async {
    final directory = await getApplicationDocumentsDirectory();
    Store store =
        Store(getObjectBoxModel(), directory: '${directory.path}/$name');

    return AppDatabase(store);
  }
}

abstract class IAppDatabase {
  Store get store;
  clear();
}

class AppDatabase extends IAppDatabase {
  // ignore: library_private_types_in_public_api
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  final Store _store;

  AppDatabase(this._store);

  @override
  Store get store {
    return _store;
  }

  @override
  clear() {
    _store.close();
  }
}

class DatabaseRoom<T> extends DatabaseInjection {
  Box<T> get storageBox {
    var store = database.store;
    var box = store.box<T>();

    return box;
  }
}

abstract class DatabaseInjection {}

extension DatabaseInjectionExtension on DatabaseInjection {
  IAppDatabase get database {
    return injector<IAppDatabase>();
  }
}
