import 'package:zard/zard.dart';

var numberRegex = RegExp(r'^\d+$');

final userSchema = z.map({
  'name': z.string().min(3).nullable(),
  'age': z.string().min(1).refine((value) {
    if (!numberRegex.hasMatch(value)) {
      return false;
    }
    final n = int.tryParse(value);
    if (n == null) return false; // parse ไม่ได้
    return n >= 1 && n <= 100;
  }),
  'phone': z.string().min(10),
});
// 0987654321
