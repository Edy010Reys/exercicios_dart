class InvalidSeatPreferenceException implements Exception {
  final String _message;

  InvalidSeatPreferenceException(this._message);

  @override
  String toString() => 'InvalidSeatPreferenceException: $_message';
}