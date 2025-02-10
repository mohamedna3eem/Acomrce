String? customValidator(String? value, {String type = 'text'}) {
  if (value == null || value.isEmpty) {
    return 'This field cannot be empty';
  }

  if (type == 'email') {
    final emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
  } else if (type == 'phone') {
    final phoneRegExp = RegExp(r'^[0-9]{10}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
  } else if (type == 'password') {
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
  }

  return null;
}
