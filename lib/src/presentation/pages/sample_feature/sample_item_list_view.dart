import 'package:auto_route/auto_route.dart';
import 'package:boilerpalta/src/domain/sample_feature/sample_item.dart';
import 'package:boilerpalta/src/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Displays a list of SampleItems.
class SampleItemListView extends StatelessWidget {
  const SampleItemListView({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  final List<SampleItem> items = const [
    SampleItem(1),
    SampleItem(2),
    SampleItem(3)
  ];

  @override
  Widget build(BuildContext context) {
    String appBarTitle = AppLocalizations.of(context)!.listTitle;

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              AutoRouter.of(context).push(const SettingsViewRoute());
            },
          ),
        ],
      ),

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: ListView.builder(
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
              title: Text('SampleItem ${item.id}'),
              leading: const CircleAvatar(
                // Display the Flutter Logo image asset.
                foregroundImage: AssetImage('assets/images/paltarelax.png'),
              ),
              onTap: () {
                // Navigate to the details page. If the user leaves and returns to
                // the app after it has been killed while running in the
                // background, the navigation stack is restored.
                AutoRouter.of(context).push(const SampleItemDetailsViewRoute());
                // Navigator.restorablePushNamed(
                //   context,
                //   SampleItemDetailsView.routeName,
                // );
              });
        },
      ),
    );
  }
}
