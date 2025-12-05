import 'package:flutter/material.dart';
import 'package:flutter_projects/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://mpehlixteekstdrcdeds.supabase.co',
    anonKey: 'sb_publishable_CbadcPxY7KAcHGl5Xq5KWg_NcyvtK_o',
  );
  final authRepo = AuthRepoImpl();
  runApp(ProviderScope(child: AppRouter(authRepo: authRepo)));
}
