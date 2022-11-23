import 'package:flutter/material.dart';
import 'package:mnbpub/models/cus_ops.dart';
import 'package:mnbpub/utils/utils.dart';

class OptionsWidget extends StatelessWidget {
  final Option options;

  const OptionsWidget({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.amber,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Theme.of(context).brightness == Brightness.dark
            ? drk3ry.withOpacity(0.4)
            : lgt1ry,
        shadowColor: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            isThreeLine: true,
            leading: Theme.of(context).brightness == Brightness.dark
                ? Image.asset(options.drkimg)
                : Image.asset(options.lgtimg),
            title: RichText(
              text: TextSpan(
                text: options.name,
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? appwht
                      : lgtacc,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Sfpro',
                ),
              ),
              textScaleFactor: 0.95,
            ),
            subtitle: RichText(
              text: TextSpan(
                text: options.desc,
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? drkacc.withOpacity(0.38)
                      : lgtacc.withOpacity(0.38),
                  fontFamily: 'Sfpro',
                  fontSize: 15,
                ),
              ),
              textScaleFactor: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
