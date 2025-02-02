import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_all/src/backend/authentication/auth_repository.dart';
import 'package:shop_all/src/backend/user/user_controller.dart';
import 'package:shop_all/src/models/user_model.dart';
import 'package:shop_all/src/screens/main_application/navigation_pages/home/home_subviews/order_view.dart';
import 'package:shop_all/src/screens/main_application/navigation_pages/profile/subviews/user_addresses_view.dart';
import 'package:shop_all/src/screens/main_application/navigation_pages/profile/subviews/user_profile_view.dart';
import 'package:shop_all/src/utils/constants/strings/lottie_animation_strings.dart';
import 'package:shop_all/src/utils/constants/strings/text_strings.dart';
import 'package:shop_all/src/widgets/custom_widgets/appbar.dart';
import 'package:shop_all/src/widgets/custom_widgets/cached_network_image.dart';
import 'package:shop_all/src/widgets/custom_widgets/circular_container.dart';
import 'package:shop_all/src/widgets/custom_widgets/custom_clip_path.dart';
import 'package:shop_all/src/widgets/custom_widgets/lottie_animation_view.dart';
import 'package:shop_all/src/widgets/custom_widgets/menu_tile.dart';
import 'package:shop_all/src/widgets/custom_widgets/section_heading.dart';



class ProfileDestinationView extends StatelessWidget {
  const ProfileDestinationView({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = UserController.instance;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomClipPath(
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      accountString,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: userController.userModel.value != UserModel.empty(),
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: CustomCircularContainer(
                            radius: 60,
                            child: Visibility(
                              visible: userController.userModel.value.displayPicture.isNotEmpty,
                              replacement: const CustomLottieAnimationView(lottieString: lottie7),
                              child: CustomCachedNetworkImage(
                                imageUrl: userController.userModel.value.displayPicture,
                              )
                            )
                          ),
                        ),
                        title: Text(
                          userController.userModel.value.firstName + 
                            spaceString + userController.userModel.value.lastName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineSmall
                        ),
                        subtitle: Text(
                          userController.userModel.value.email,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        trailing: IconButton(
                          onPressed: () => Get.to(() => const UserProfileView()),
                          icon: const Icon(Iconsax.edit)
                        ),
                      ),
                    ),
                  ),
                  const Gap(30)
                ],
              ),
            ),
            
            const Gap(10),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: CustomSectionHeading(headingText: 'My Account Settings'),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CustomMenuTileWidget(
                    icon: Iconsax.safe_home,
                    title: myAddressesString,
                    subtitle: setAddressString,
                    onTap: () => Get.to(() => const UserAddressView())
                  ),
                  CustomMenuTileWidget(
                    icon: Iconsax.wallet,
                    title: 'My Orders',
                    subtitle: 'Completed and progressing orders',
                    onTap: () => Get.to(() => const ProductOrderView())
                  ),
                  CustomMenuTileWidget(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Details of my home address',
                    onTap: (){}
                  ),
                  CustomMenuTileWidget(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Details of my home address',
                    onTap: (){}
                  ),
                  CustomMenuTileWidget(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Details of my home address',
                    onTap: (){}
                  ),
                  CustomMenuTileWidget(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Details of my home address',
                    onTap: (){}
                  ),
                  CustomMenuTileWidget(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Details of my home address',
                    onTap: (){}
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: CustomSectionHeading(headingText: 'Applicaation Settings'),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CustomMenuTileWidget(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Details of my home address',
                    onTap: (){},
                  ),
                  CustomMenuTileWidget(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Details of my home address',
                    onTap: (){},
                    trailing: Switch(
                      value: false,
                      onChanged: (value){},
                    ),
                  ),
                  CustomMenuTileWidget(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Details of my home address',
                    onTap: (){},
                    trailing: Switch(
                      value: false,
                      onChanged: (value){},
                    ),
                  ),
                  CustomMenuTileWidget(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Details of my home address',
                    onTap: (){},
                    trailing: Switch(
                      value: true,
                      onChanged: (value){},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () async => await AuthRepository.instance.signOutUser(),
                child: Text(
                  'Logout',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}