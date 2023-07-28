import 'package:air_system/passenger.dart';
import 'package:air_system/enums.dart';
import 'package:air_system/exceptions.dart';

class RegularPassenger extends Passenger {
  // Atributo que armazena o número do programa de fidelidade do passageiro regular
  final String _frequentFlyerNumber;

  RegularPassenger (super._name, super._age, this._frequentFlyerNumber);

  frequentFlyerNumber() => _frequentFlyerNumber;

  selectSeat(SeatPreference seat) {
    try {
      return seat.name.toString();
    } catch (e) {
      throw InvalidSeatPreferenceException('O assento que você selecionou é inválido');
    }
  }
}