import 'package:flutter/material.dart';

class roundButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final bool loading;
  const roundButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        child: Center(
            child: loading
                ? CircularProgressIndicator(strokeWidth: 3 ,color: Colors.white,)
                : Text(title,
                    style: TextStyle(color: Colors.white, fontSize: 20))),
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
