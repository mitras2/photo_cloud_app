import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

import '../data_helpers/uuid_type_converter.dart';
import 'base_model.dart';

part 'user_model.g.dart';

@Collection()
class UserModel extends BaseModel{
  @Id()
  int? iid;

  @UUIDConverter()
  @Index(unique: true, caseSensitive: false)
  late UuidValue id;
  late String username;
}