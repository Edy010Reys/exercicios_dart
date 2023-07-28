import 'package:air_system/enums.dart';
import 'package:air_system/regular_passenger.dart';

void main() {
  final passenger1 = RegularPassenger('Edson', 20, '2');
  passenger1.selectSeat(SeatPreference.window);
}