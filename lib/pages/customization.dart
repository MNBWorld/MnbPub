import 'package:flutter/material.dart';
import 'package:mnbpub/components/opts_widget.dart';
import 'package:mnbpub/models/cus_ops.dart';

class CustomisationPage extends StatelessWidget {
  const CustomisationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: OptionModel.options.length,
          itemBuilder: ((context, index) => OptionsWidget(
                options: OptionModel.options[index],
              )),
        ),
      ),
    );
  }
}
