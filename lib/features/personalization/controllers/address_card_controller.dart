import 'package:get/get.dart';

class AddressCardController extends GetxController {
  RxInt selectedIndex = 0.obs;

  final addressIndex = [].obs;

  RxList<Map<String, dynamic>> addresses = [
    {
      "name": "John Doe",
      "number": 03244258476,
      "address": "742 Evergreen Terrace, Springfield, OR 97403, USA",
    },
    {
      "name": "Steve roy",
      "number": 03256465653,
      "address": "9102 Ocean Drive, Miami Beach, FL 33139, USA",
    },
    {
      "name": "Rogers That",
      "number": 03426654841,
      "address": "4556 Birchwood Lane, Seattle, WA 98101, USA",
    },
  ].obs;

  void selectIndex(int value) {
    selectedIndex.value = value;
  }

  void addAddress(Map<String, dynamic> value) {
    addresses.add(value);
  }

  void removeAddress(int value) {
    // addresses.remove();
  }
}
