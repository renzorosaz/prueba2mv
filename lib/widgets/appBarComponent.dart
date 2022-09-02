import 'package:flutter/material.dart';

import 'appBarRowCoberture_component.dart';
import 'appBarRowFinder_component.dart';
import 'appBarRowOne_componente.dart';

class AppBarTest extends StatelessWidget implements PreferredSizeWidget {
  const AppBarTest({
    Key? key,
  }) : super(key: key);
  // kToolbarHeight
  @override
  Size get preferredSize => const Size.fromHeight(171.29);
  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
      elevation: 1,
      toolbarHeight: 150,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(244, 244, 244, 1),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(80.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 12, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              AppBarRowOne(),
              SizedBox(
                height: 28,
              ),
              AppBarRowFinder(),
              SizedBox(
                height: 12,
              ),
              AppBarRowCoberture()
            ],
          ),
        ),
      ),
    );
  }
}
