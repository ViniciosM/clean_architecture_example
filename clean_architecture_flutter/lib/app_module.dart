import 'package:clean_architecture_flutter/features/presenter/pages/picture_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'features/data/repositories/space_media_repository_imp.dart';
import 'features/presenter/controllers/home_store.dart';
import 'features/presenter/pages/home_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => HomeStore(i())),
    Bind.lazySingleton((i) => GetSpaceMediaFromDateUsecase(i())),
    Bind.lazySingleton((i) => SpaceMediaRepositoryImp(i())),
    Bind.lazySingleton((i) => SpaceMediaDatasouceImpconverter: i(), client: i())),
    Bind.lazySingleton((i) => http.Client()),
    Bind.lazySingleton((i) => DateInputConverter()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage()),
    ChildRoute('/picture', child: (_, args) => PicturePage.fromArgs(args.data)),
  ];
}