import 'package:path/path.dart' as p;

import 'package:subiquity_client/src/types.dart';

extension DiskX on Disk {
  String get sysname {
    if (path != null) {
      /// "/dev/sda" => "sda"
      return p.basename(path!);
    }
    return label.length > 64 ? label.substring(0, 64) : label;
  }
}

extension PartitionX on Partition {
  /// "/dev/sda1" => "sda1"
  String get sysname => p.basename(path ?? '');
}
