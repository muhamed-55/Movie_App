import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @Named("publisherKey")
  String get publisherKey =>
      'pk_test_51MEyiPIHXy8DZPfQ5NIHq3dho2cMlUvcLdrMhM77gDrFOXUETakXuwu3xw2Du4jXLyZLV5rGqiMD4IPNem1wTC7c00pcNI9Dpk';
}
