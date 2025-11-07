import 'package:flutter/material.dart';
import 'package:flutter_projects/common/form/controller/user_controller.dart';
import 'package:flutter_projects/common/form/widgets/custom_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserForm extends ConsumerWidget {
  const UserForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(userFormProvider);
    final notifier = ref.read(userFormProvider.notifier);

    return Center(
      child: Column(
        children: [
          CustomForm(
            form: form,
            notifier: notifier,
            errorText: 'name',
            formName: form.name,
            hintText: 'Name',
            onChanged: (v) => notifier.update(name: v),
          ),
          CustomForm(
            form: form,
            notifier: notifier,
            errorText: 'age',
            formName: form.age,
            hintText: 'Age',
            onChanged: (v) => notifier.update(age: v),
          ),
          CustomForm(
            form: form,
            notifier: notifier,
            errorText: 'phone',
            formName: form.phone,
            hintText: 'Phone',
            onChanged: (v) => notifier.update(phone: v),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final isValid = notifier.validate();
              if (isValid) {
                debugPrint(
                  '✅ Form valid: ${form.name}, ${form.age}, ${form.phone}',
                );
                notifier.reset(); // state cleared, UI auto-updates
              } else {
                debugPrint('❌ Form invalid!');
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
