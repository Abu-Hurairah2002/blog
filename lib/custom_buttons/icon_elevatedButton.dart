import 'package:blog/exports.dart';

class CustomButton extends StatelessWidget {
  final Widget? child; // Optional: Widget inside the button
  final String? text; // Optional: Text inside the button
  final Color? textColor; // Optional: Text color
  final double width; // Button width
  final double height; // Button height
  final VoidCallback onPressed; // Action to perform on button press
  final Color? backgroundColor; // Optional background color
  final bool enableBorder; // Flag to enable/disable border
  final Color? borderColor; // Optional border color
  final double borderRadius; // Border radius

  const CustomButton({
    Key? key,
    this.child, // Optional
    this.text, // Optional
    this.textColor = Colors.black, // Default: Black text
    required this.width,
    required this.height,
    required this.onPressed,
    this.backgroundColor, // Optional: Defaults to null
    this.enableBorder = false, // Default: Border is disabled
    this.borderColor, // Optional: Only used when `enableBorder` is true
    this.borderRadius = 5.0, // Default rounded corners
  })  : assert(
  child == null || text == null, // Ensure only one is used at a time
  "Provide either 'child' or 'text', not both."),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
          backgroundColor ?? Colors.transparent, // Default: Transparent
          side: enableBorder
              ? BorderSide(
            color: borderColor ?? Colors.black, // Default border color
            width: 1.0,
          )
              : BorderSide.none, // No border if `enableBorder` is false
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                borderRadius), // Customizable rounded corners
          ),
        ),
        onPressed: onPressed,
        child: child ??
            Text(
              text ?? "", // Use `text` if no child is provided
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: textColor,
              ),
            ),
      ),
    );
  }
}
