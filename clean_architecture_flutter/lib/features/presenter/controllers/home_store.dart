import 'package:flutter_triple/flutter_triple.dart';

import '../../../core/usecase/errors/failures.dart';
import '../../domain/entities/space_media_entity.dart';
import '../../domain/usecases/get_space_media_from_date_usecase.dart';

class HomeStore extends NotifierStore<Failure, SpaceMediaEntity> {
  final GetSpaceMediaFromDate usecase;

  HomeStore(this.usecase) : super(SpaceMediaEntity(description: '', mediaType: '', title: '', mediaUrl: ''));

  getSpaceMediaFromDate(DateTime? date) async {
    executeEither(() => usecase(date));
  }
}