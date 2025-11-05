import 'package:flutter/material.dart';
import 'package:flutter_projects/features/home/controllers/user_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(userFormProvider);
    final notifier = ref.read(userFormProvider.notifier);

    return Center(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'name',
              errorText: form.errors['name'],
            ),
            onChanged: (v) => notifier.update(name: v),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'age',
              errorText: form.errors['age'],
            ),
            onChanged: (v) => notifier.update(age: v),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'phone',
              errorText: form.errors['phone'],
            ),
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
              } else {
                debugPrint('❌ Form invalid!');
              }
            },
            child: Text('submit'),
          ),
        ],
      ),
    );
  }
}
