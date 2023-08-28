String? validEmail(String email) {
  // Regular expression for basic email validation
  if (email.isEmpty) {
    return 'Email is required';
  }

  final RegExp emailRegex =
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  if (!emailRegex.hasMatch(email)) {
    return 'Please enter a valid email';
  }

  return null;
}

String? validPassword(String password) {
  // Password should be at least 8 characters long and contain both letters and numbers
  if (password.isEmpty) {
    return 'Password is required';
  }
  if (password.length < 8) {
    return 'Password must be at least 8 characters long';
  }

  // Add more validation as required
  return null;
}
