import 'package:clean_architecture_flutter/core/usecase/errors/exceptions.dart';
import 'package:clean_architecture_flutter/features/data/datasources/space_media_datasource.dart';
import 'package:dartz/dartz.dart';

import 'package:clean_architecture_flutter/features/domain/entities/space_media_entity.dart';

import 'package:clean_architecture_flutter/core/usecase/errors/failures.dart';

import '../../domain/repositories/space_media_repository.dart';

class SpaceMediaRepositoryImp implements ISpaceMediaRepository {
  final ISpaceMediaDatasource datasource;

  SpaceMediaRepositoryImp(this.datasource);

  @override
  Future<Either<Failure, SpaceMediaEntity>> getSpaceMediaFromDate(
      DateTime date) async {
    try {
      final result = await datasource.getSpaceMediaFromDate(date);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
