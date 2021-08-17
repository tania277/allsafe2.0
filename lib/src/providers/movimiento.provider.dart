import 'package:allsafe/src/models/models.dart';
import 'package:dio/dio.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MovimientoProvider extends GetxController {
  final _url = 'https://allsalfe.herokuapp.com/api/movimiento';
  final _http = Dio();
  List<MovimientoModel> movimiento = [];

  Future<void> obtenerMovimiento() async {
    final _response = await _http.get(_url);
    List<dynamic> _movimiento = _response.data['movimiento'];

    _movimiento.forEach((movimiento) {
      final movimientoTemporal1 = MovimientoModel.fromMapJson(movimiento);
      movimiento.add(movimientoTemporal1);
    });

    update();
  }
}