import 'package:clean_architecture_flutter/core/usecase/errors/failures.dart';
import 'package:clean_architecture_flutter/core/usecase/usecase.dart';
import 'package:clean_architecture_flutter/features/domain/entities/space_media_entity.dart';
import 'package:dartz/dartz.dart';

import '../repositories/space_media_repository.dart';

class GetSpaceMediaFromDate implements Usecase<SpaceMediaEntity, DateTime> {
  final ISpaceMediaRepository repository;

  GetSpaceMediaFromDate(this.repository);

  @override
  Future<Either<Failure, SpaceMediaEntity>> call(DateTime? date) async {
    return date != null
        ? await repository.getSpaceMediaFromDate(date)
        : Left(NullParamFailure());
  }
}
