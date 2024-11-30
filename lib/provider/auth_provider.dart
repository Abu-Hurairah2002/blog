import 'package:blog/exports.dart';

class AuthProvider with ChangeNotifier {
  // Initial state is 'Sign Up'
  String _selectedOption = "Sign Up";

  // Getter to access the selected option
  String get selectedOption => _selectedOption;

  // Method to change the selected option (Sign Up or Sign In)
  void setSelectedOption(String option) {
    _selectedOption = option;
    notifyListeners(); // Notify all listeners about the change
  }
}
