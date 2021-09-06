import 'package:flutter_getx/controlador/minombre.dart';
import 'package:get/get.dart';

class MiControlador extends GetxController {
  //Variable observable, por eso se pone lo de obs
  final usuario= Usuario("Aumentador", 0).obs;
  

  /*También se pueden definir:
    final name=''.obs;
    final isLogged=false.obs;
    final count=0.obs;
    final balance=0.0.obs;
    final items <String>[].obs;
    final <String, int>{}.obs;
    final user = User().obs;
  */

}