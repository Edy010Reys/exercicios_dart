import 'package:air_system/passenger.dart';
import 'package:air_system/enums.dart';
import 'package:air_system/exceptions.dart';

class VIPPassenger extends Passenger {
  //Atributo que representa o nível Vip do passageiro
  final VipLevel _vipLevel;

  VIPPassenger (super._name, super._age, this._vipLevel);

  vipLevel() => _vipLevel.name;

  selectSeat (SeatPreference seat) {
    try {
      return seat.name.toString();
    } catch (e) {
      throw InvalidSeatPreferenceException('O assento que você selecionou é inválido');
    }
  }
}