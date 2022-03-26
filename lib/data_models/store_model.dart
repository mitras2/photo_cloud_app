import 'package:isar/isar.dart';
import 'package:photo_cloud/data_models/base_model.dart';
import 'package:photo_cloud/data_models/permissions_user_model.dart';
import 'package:photo_cloud/data_models/user_model.dart';
import 'package:uuid/uuid.dart';

import '../data_helpers/uuid_type_converter.dart';

part 'store_model.g.dart';

@Collection()
class StoreModel extends BaseModel{

  @Id()
  int? iid;

  @UUIDConverter()
  @Index(unique: true, caseSensitive: false)
  late UuidValue id;
  late String storeName;
  final storeCreator = IsarLink<UserModel>();
  final storeOwner = IsarLink<UserModel>();
  final permissionsList = IsarLinks<PermissionsUserModel>();

  late bool read;
  late bool write;
  late bool admin;
}