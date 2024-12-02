import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
      child: isLoading
          ? CircularProgressIndicator(color: Colors.white)
          : Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
    );
  }
}

class CustomSecButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;

  const CustomSecButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFF3F3FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
      child: isLoading
          ? CircularProgressIndicator(color: Colors.white)
          : Text(
              text,
              style: TextStyle(fontSize: 16, color: Theme.of(context).primaryColor),
            ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;

  const CustomOutlineButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: isLoading ? null : onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Theme.of(context).primaryColor, width: 2), // Outline color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
      child: isLoading
          ? CircularProgressIndicator(color: Theme.of(context).primaryColor)
          : Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).primaryColor, // Text color matches the outline
              ),
            ),
    );
  }
}
