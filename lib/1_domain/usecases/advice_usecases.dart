import 'package:advicer_app/1_domain/entities/advice_entity.dart';
import 'package:dartz/dartz.dart';

import '../../0_data/repositories/advice_repo_impl.dart';
import '../failures/failures.dart';
import '../repositories/advice_repo.dart';

class AdviceUseCases {
  AdviceUseCases({required this.adviceRepo});
  final AdviceRepo adviceRepo;

  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDatasource();
    // space for business logic
  }
}
