import 'package:e_commerce_app/common/widgets/app_bar/custom_appbar.dart';
import 'package:e_commerce_app/features/personalization/controllers/address_card_controller.dart';
import 'package:e_commerce_app/features/personalization/screens/address/widgets/add_new_address.dart';
import 'package:e_commerce_app/features/personalization/screens/address/widgets/address_card.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAddressScreen extends StatefulWidget {
  const UserAddressScreen({super.key});

  @override
  State<UserAddressScreen> createState() => _UserAddressScreenState();
}

class _UserAddressScreenState extends State<UserAddressScreen> {
  AddressCardController controller = Get.put(AddressCardController());

  @override
  Widget build(BuildContext context) {
    debugPrint("build function called");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () => Get.to(() => AddNewAddress()),
        child: Icon(Icons.add, color: AppColors.white),
      ),
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text("Addresses", style: Theme.of(context).textTheme.titleLarge),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        // child: Obx(
        //   () => Column(
        //     children: [
        //       AddressCard(
        //         onTap: () => controller.selection(false),
        //         isSelected: controller.isSelected.value,
        //         name: "Coding with T",
        //         number: "+923244258476",
        //         address: "82356 Timmy Coves, South Liana, Maine 87665, USA",
        //       ),
        //       AddressCard(
        //         onTap: () => controller.selection(true),
        //         isSelected: controller.isSelected.value,
        //         name: "Julian Thorne",
        //         number: "+14155550198",
        //         address: "742 Evergreen Terrace, Springfield, OR 97403, USA",
        //       ),
        //       AddressCard(
        //         onTap: () => controller.selection(true),
        //         isSelected: controller.isSelected.value,
        //         name: "Elena Rodriguez",
        //         number: "+13055552467",
        //         address: "9102 Ocean Drive, Miami Beach, FL 33139, USA",
        //       ),
        //       AddressCard(
        //         onTap: () => controller.selection(true),
        //         isSelected: controller.isSelected.value,
        //         name: "Alistair Vance",
        //         number: "+12065558312",
        //         address: "4556 Birchwood Lane, Seattle, WA 98101, USA",
        //       ),
        //       AddressCard(
        //         onTap: () => controller.selection(true),
        //         isSelected: controller.isSelected.value,
        //         name: "Serenity Wells",
        //         number: "+15125550943",
        //         address: "1208 Willow Creek Way, Austin, TX 78701, USA",
        //       ),
        //       AddressCard(
        //         onTap: () => controller.selection(true),
        //         isSelected: controller.isSelected.value,
        //         name: "Marcus Sterling",
        //         number: "+13125557621",
        //         address: "884 North Michigan Ave, Chicago, IL 60611, USA",
        //       ),
        //       AddressCard(
        //         onTap: () => controller.selection(true),
        //         isSelected: controller.isSelected.value,
        //         name: "Naomi Ishikawa",
        //         number: "+16175554430",
        //         address: "332 Beacon Street, Boston, MA 02116, USA",
        //       ),
        //     ],
        //   ),
        // ),
        child: Obx(() {
          if (kDebugMode) {
            print(
              'Rebuilding ListView, selectedIndex: ${controller.selectedIndex.value}',
            );
          }
          return ListView.builder(
            itemCount: controller.addresses.length,
            itemBuilder: (_, index) => AddressCard(
              onTap: () => controller.selectIndex(index),
              isSelected: controller.selectedIndex.value == index
                  ? true
                  : false,
              name: controller.addresses[index]["name"].toString(),
              number: controller.addresses[index]["number"].toString(),
              address: controller.addresses[index]["address"].toString(),
            ),
          );
        }),
      ),
    );
  }
}
