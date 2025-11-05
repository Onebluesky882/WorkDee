import 'package:flutter/cupertino.dart';
import 'package:flutter_projects/features/home/validation/validation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef UserFormState = ({
  String name,
  String age,
  String phone,
  Map<String, String?> errors,
});

class UserFormNotifier extends Notifier<UserFormState> {
  @override
  UserFormState build() => (age: '', name: '', phone: '', errors: {});

  void update({String? name, String? age, String? phone}) {
    state = (
      name: name ?? state.name,
      age: age ?? state.age,
      phone: phone ?? state.phone,
      errors: state.errors,
    );
  }

  bool validate() {
    final result = userSchema.safeParse({
      'name': state.name,
      'age': state.age,
      'phone': state.phone,
    });

    if (result.success) {
      state = (
        name: state.name,
        age: state.age,
        phone: state.phone,
        errors: {},
      );

      return true;
    } else {
      final errors = {for (final e in result.error!.issues) e.path: e.message};

      debugPrint('❌ Errors: $errors');

      return false;
    }
  }

  void reset() {
    state = (age: '', name: '', phone: '', errors: {});
  }
}

final userFormProvider = NotifierProvider<UserFormNotifier, UserFormState>(
  UserFormNotifier.new,
);
