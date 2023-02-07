import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: LatoTextView(label: "Contact Us"),
    );
  }
}
