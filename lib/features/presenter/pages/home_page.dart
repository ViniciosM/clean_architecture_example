import 'package:clean_architecture_flutter/features/presenter/pages/picture_page.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/round_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'APOD'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Welcome to Astronomy Picture of the Day!',
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 150,
                ),
                RoundButton(
                    label: 'Select datetime',
                    onTap: () async {
                      var datePicked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1995, 06, 16),
                          lastDate: DateTime.now());

                      PicturePage.navigate(datePicked);
                    }),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
