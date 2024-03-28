import 'package:flutter/material.dart';
import 'package:audio_ally/services/user_cache_service/domain/providers/current_user_provider.dart';
import 'package:audio_ally/services/user_cache_service/domain/providers/user_cache_provider.dart';
import 'package:audio_ally/shared/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class DashboardDrawer extends ConsumerWidget {
  const DashboardDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentUserProvider).asData?.value;

    return SafeArea(
      bottom: false,
      child: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
              ),
              accountName: Text(
                '${currentUser?.firstName}',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              accountEmail: Text(
                '${currentUser?.email}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('${currentUser?.image}'),
              ),
              otherAccountsPictures: [
                InkWell(
                  onTap: () async {
                    await ref.read(userLocalRepositoryProvider).deleteUser();
                    // ignore: use_build_context_synchronously
                  },
                  child: CircleAvatar(
                    child: Icon(
                      Icons.logout,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    ref.read(appThemeProvider.notifier).toggleTheme();
                  },
                  child: CircleAvatar(
                    child: Icon(
                      Theme.of(context).brightness == Brightness.dark
                          ? Icons.light_mode
                          : Icons.dark_mode,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
