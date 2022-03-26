import 'package:isar/isar.dart';
import 'package:photo_cloud/data_helpers/uuid_type_converter.dart';
import 'package:photo_cloud/data_models/user_model.dart';
import 'package:uuid/uuid.dart';

import 'base_model.dart';

part 'permissions_user_model.g.dart';

@Collection()
class PermissionsUserModel extends BaseModel{
  @Id()
  int? iid;

  @UUIDConverter()
  @Index(unique: true, caseSensitive: false)
  late UuidValue id;
  final user = IsarLink<UserModel>();
  final permissionCreator = IsarLink<UserModel>();
  late bool read;
  late bool write;
  late bool admin;
  late bool permissionAccepted;
}