import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({Key? key}) : super(key: key);

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    String appBarTitle = AppLocalizations.of(context)!.detailsTitle;

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
