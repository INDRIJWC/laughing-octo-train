import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:kolabos_getx/app/data/providers/task/provider.dart';
import 'package:kolabos_getx/app/data/services/storage/repository.dart';
import 'package:kolabos_getx/app/modules/home/controller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
      taskRepository: TaskRepository(
        taskProvider: TaskProvider()
        ),
      ),
    );
  }


}