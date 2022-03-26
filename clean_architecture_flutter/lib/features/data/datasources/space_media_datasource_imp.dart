import 'dart:convert';

import 'package:clean_architecture_flutter/core/usecase/errors/exceptions.dart';
import 'package:clean_architecture_flutter/features/data/datasources/soace_endpoints.dart';
import 'package:http/http.dart' as http;

import 'package:clean_architecture_flutter/features/data/datasources/space_media_datasource.dart';
import 'package:clean_architecture_flutter/features/data/models/space_media_model.dart';

import '../../../core/utils/date_input_converter.dart';

class SpaceMediaDatasourceImp implements ISpaceMediaDatasource {
  final DateInputConverter converter;
  final http.Client client;
  SpaceMediaDatasourceImp({
    required this.converter,
    required this.client,
  });

  @override
  Future<SpaceMediaModel> getSpaceMediaFromDate(DateTime date) async {
    final dateConverted = converter.format(date);
    final response = await client
        .get(NasaEndpoints.getSpaceMedia('DEMO_KEY', dateConverted));

    if (response.statusCode == 200) {
      return SpaceMediaModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
