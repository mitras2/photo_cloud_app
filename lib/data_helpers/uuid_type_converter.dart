import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

class UUIDConverter extends TypeConverter<UuidValue, String> {
  const UUIDConverter(); // Converters need to have an empty const constructor

  @override
  UuidValue fromIsar(String uuidString) {
    return UuidValue(uuidString);
  }

  @override
  String toIsar(UuidValue guid) {
    return guid.uuid;
  }
}