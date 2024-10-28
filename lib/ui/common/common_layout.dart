import 'package:flutter/material.dart';
import 'package:web_240919_prototype/ui/common/footer.dart';

import 'package:web_240919_prototype/ui/common/common_appbar.dart';

class CommonLayout extends StatelessWidget {
  final Widget body;

  const CommonLayout({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              body,
              const SizedBox(height: 100),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
