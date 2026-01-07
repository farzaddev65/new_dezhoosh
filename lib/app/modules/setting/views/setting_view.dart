import 'package:bestdroid/app/core/core.dart';
import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:bestdroid/app/core/theme/app_colors.dart';
import 'package:bestdroid/app/core/theme/app_icons.dart';
import 'package:bestdroid/app/core/widgets/custom/image.dart';
import 'package:bestdroid/app/core/widgets/custom/switch.dart';
import 'package:bestdroid/app/core/widgets/custom/text_field.dart';
import 'package:bestdroid/app/data/models/user/user_model.dart';
import 'package:bestdroid/app/modules/setting/controllers/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColorsLight.scaffoldBackgroundColor,
        title: Text('تنظیمات').titleLarge(color: context.theme.primaryColorDark),
        centerTitle: false,
        leadingWidth: 0,
        actions: [
          AppImage(
            AppIcons.add,
            color: context.theme.primaryColorDark, //
            size: 32,
          ),
          SizedBox(width: 8),
          Icon(
            Icons.arrow_forward_ios_outlined,
          ).onTap(() => Get.back()),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // نام خانه
            _buildSectionTitle('نام'),
            _buildTextField('نام خانه'),
            const SizedBox(height: 24),

            // افراد
            _buildSectionTitle('افراد'),

            _buildPersonList(context: context),
            const SizedBox(height: 16),

            // توضیحات
            _buildInfoBox(),
            const SizedBox(height: 24),

            // تنظیمات هاب
           Container(
             decoration: Core.cardDecoration(context),
             padding: EdgeInsets.all(8),
             child: Column(
               children: [
                 _buildTitle(context:context,title: 'تنظیمات هاب', icon: AppIcons.hubSetting),
                 _buildTitle(context:context,title: 'بکاپ گیری', icon: AppIcons.backup),
                 _buildTitle(context:context,title: 'بازنشانی تنظیمات', icon: AppIcons.resetFactory),
                 _buildTitle(context:context,title: 'حالت آنالین', icon: AppIcons.onlineMode),
               ],
             ),
           ),

            const SizedBox(height: 24),

            Container(
              decoration: Core.cardDecoration(context),
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('تصویر پس زمینه').titleLarge(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          AppImage(AppImages.image8,width: (Get.width/),),
                          AppSwitch(value: true, onChanged: (value) => null),
                        ],
                      ),
                      Column(
                        children: [
                          AppImage(AppImages.image8,width: (Get.width/5),borderRadius: 16,),
                          AppSwitch(value: true, onChanged: (value) => null),
                        ],
                      ),
                      Column(
                        children: [
                          AppImage(AppImages.image8,width: (Get.width/5),),
                          AppSwitch(value: true, onChanged: (value) => null),
                        ],
                      ),
                      Column(
                        children: [
                          AppImage(AppImages.image8,width: (Get.width/5),),
                          AppSwitch(value: true, onChanged: (value) => null),
                        ],
                      ),

                    ],
                  )
                ],
              ),
            ),

            // تصویر پس‌زمینه
            _buildSectionTitle('تصویر پس زمینه'),
            _buildImageSelector(),
            const SizedBox(height: 24),

            // تم برنامه
            _buildSectionTitle('تم برنامه'),
            _buildThemeSelector(),
          ],
        ).marginSymmetric(horizontal: 8),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(title).bodyMedium(),
    );
  }

  Widget _buildTitle({required BuildContext context,required String title, required String icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
      child: Row(
        spacing: 8,
        children: [
          AppImage(icon,color: context.theme.primaryColorDark.withValues(alpha: 0.8),size: 24,),
          Text(title).titleMedium(color: context.theme.primaryColorDark.withValues(alpha: 0.8)),
        ],
      ),
    );
  }

  Widget _buildTextField(String hint) {
    return AppTextField(
      hint: 'نام خانه',
    );
  }

  Widget _buildPersonList({required BuildContext context}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.theme.cardColor,
      ),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.personList.length,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPersonItem(context: context, user: controller.personList[index]),
            if (index == controller.personList.length - 1) Text('دعوت افراد +').titleMedium(color: Colors.orange).marginSymmetric(horizontal: 12, vertical: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildPersonItem({required BuildContext context, required UserDto user}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Container(
            child: Row(
              spacing: 16,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  width: 32,
                  height: 32,
                  child: Center(
                    child: Text(user.fullName![0]).bodyLarge(color: Colors.white),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user.fullName!).titleMedium(),
                    Text(user.isConfirm == 1 ? 'صاحب منزل' : 'ساکن').bodyMedium(),
                  ],
                ).expanded(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                  color: context.theme.primaryColorDark.withValues(alpha: 0.3),
                ),
              ],
            ).marginSymmetric(horizontal: 12),
          ),
        ),
        Divider(
          color: context.theme.primaryColorDark.withValues(alpha: 0.1), //
          endIndent: 64,
        ),
      ],
    );
    // return Container(
    //   margin: const EdgeInsets.only(bottom: 8),
    //   padding: const EdgeInsets.all(12),
    //   decoration: BoxDecoration(
    //     color: Colors.grey[100],
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   child: Row(
    //     children: [
    //       CircleAvatar(
    //         backgroundColor: Colors.blue[100],
    //         child: Text(
    //           name[0],
    //           style: const TextStyle(color: Colors.blue),
    //         ),
    //       ),
    //       const SizedBox(width: 12),
    //       Expanded(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               name,
    //               style: const TextStyle(fontWeight: FontWeight.bold),
    //             ),
    //             Text(
    //               role,
    //               style: TextStyle(color: Colors.grey[600], fontSize: 12),
    //             ),
    //           ],
    //         ),
    //       ),
    //       IconButton(
    //         icon: const Icon(Icons.more_vert, color: Colors.grey),
    //         onPressed: () {},
    //       ),
    //     ],
    //   ),
    // );
  }

  Widget _buildInviteButton() {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      icon: const Icon(Icons.person_add, size: 18),
      label: const Text('دعوت افراد +'),
    );
  }

  Widget _buildInfoBox() {
    return Text(
      'همه اعضای خانه مشترک می‌توانند به‌روزرسانی‌های لوازم جانبی را کنترل و مشاهده کنند. افرادی که برای پذیرایی از خانه دعوت شده‌اند، برای پذیرش دعوت‌نامه‌ها باید از جدیدترین نرم‌افزار استفاده کنند.',
      style: TextStyle(fontSize: 13, color: Colors.blue[800]),
      textAlign: TextAlign.right,
    );
  }

  Widget _buildHubSettingItem(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(title),
          ),
          const Icon(Icons.chevron_left, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildImageSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.image, size: 40, color: Colors.grey[500]),
                const SizedBox(height: 8),
                Text(
                  'تصویر دلخواه',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(color: Colors.blue),
            ),
          ),
          icon: const Icon(Icons.add, size: 18),
          label: const Text('+'),
        ),
      ],
    );
  }

  Widget _buildThemeSelector() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: BorderSide(color: Colors.grey[300]!),
            ),
            child: const Column(
              children: [
                Icon(Icons.dark_mode),
                SizedBox(height: 4),
                Text('تم تاریک'),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: BorderSide(color: Colors.grey[300]!),
            ),
            child: const Column(
              children: [
                Icon(Icons.light_mode),
                SizedBox(height: 4),
                Text('تم روشن'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//
//
// class SettingsPage extends StatelessWidget {
//   const SettingsPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('تنظیمات'),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // نام خانه
//             _buildSectionTitle('نام'),
//             _buildTextField('نام خانه'),
//             const SizedBox(height: 24),
//
//             // افراد
//             _buildSectionTitle('افراد'),
//             _buildPersonItem('محمد', 'ساکن'),
//             _buildPersonItem('رضا', 'صاحب منزل'),
//             const SizedBox(height: 16),
//             _buildInviteButton(),
//             const SizedBox(height: 24),
//
//             // توضیحات
//             _buildInfoBox(),
//             const SizedBox(height: 24),
//
//             // تنظیمات هاب
//             _buildSectionTitle('تنظیمات هاب'),
//             _buildHubSettingItem('بکاپ گیری'),
//             _buildHubSettingItem('بازنشانی تنظیمات'),
//             _buildHubSettingItem('حالت آنالین'),
//             const SizedBox(height: 24),
//
//             // تصویر پس‌زمینه
//             _buildSectionTitle('تصویر پس زمینه'),
//             _buildImageSelector(),
//             const SizedBox(height: 24),
//
//             // تم برنامه
//             _buildSectionTitle('تم برنامه'),
//             _buildThemeSelector(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSectionTitle(String title) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: Text(
//         title,
//         style: const TextStyle(
//           fontSize: 16,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTextField(String hint) {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: hint,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//       ),
//     );
//   }
//
//   Widget _buildPersonItem(String name, String role) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 8),
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.grey[100],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Row(
//         children: [
//           CircleAvatar(
//             backgroundColor: Colors.blue[100],
//             child: Text(
//               name[0],
//               style: const TextStyle(color: Colors.blue),
//             ),
//           ),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: const TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   role,
//                   style: TextStyle(color: Colors.grey[600], fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//           IconButton(
//             icon: const Icon(Icons.more_vert, color: Colors.grey),
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildInviteButton() {
//     return ElevatedButton.icon(
//       onPressed: () {},
//       style: ElevatedButton.styleFrom(
//         foregroundColor: Colors.white,
//         backgroundColor: Colors.blue,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//       ),
//       icon: const Icon(Icons.person_add, size: 18),
//       label: const Text('دعوت افراد +'),
//     );
//   }
//
//   Widget _buildInfoBox() {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.blue[50],
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.blue[100]!),
//       ),
//       child: const Text(
//         'همه اعضای خانه مشترک می‌توانند به‌روزرسانی‌های لوازم جانبی را کنترل و مشاهده کنند. افرادی که برای پذیرایی از خانه دعوت شده‌اند، برای پذیرش دعوت‌نامه‌ها باید از جدیدترین نرم‌افزار استفاده کنند.',
//         style: TextStyle(fontSize: 13, color: Colors.blue[800]),
//         textAlign: TextAlign.right,
//       ),
//     );
//   }
//
//   Widget _buildHubSettingItem(String title) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 8),
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.grey[100],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: Text(title),
//           ),
//           const Icon(Icons.chevron_left, color: Colors.grey),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildImageSelector() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           height: 120,
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.image, size: 40, color: Colors.grey[500]),
//                 const SizedBox(height: 8),
//                 Text(
//                   'تصویر دلخواه',
//                   style: TextStyle(color: Colors.grey[600]),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         const SizedBox(height: 8),
//         ElevatedButton.icon(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             foregroundColor: Colors.blue,
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//               side: const BorderSide(color: Colors.blue),
//             ),
//           ),
//           icon: const Icon(Icons.add, size: 18),
//           label: const Text('+'),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildThemeSelector() {
//     return Row(
//       children: [
//         Expanded(
//           child: OutlinedButton(
//             onPressed: () {},
//             style: OutlinedButton.styleFrom(
//               padding: const EdgeInsets.symmetric(vertical: 16),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               side: BorderSide(color: Colors.grey[300]!),
//             ),
//             child: const Column(
//               children: [
//                 Icon(Icons.dark_mode),
//                 SizedBox(height: 4),
//                 Text('تم تاریک'),
//               ],
//             ),
//           ),
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: OutlinedButton(
//             onPressed: () {},
//             style: OutlinedButton.styleFrom(
//               padding: const EdgeInsets.symmetric(vertical: 16),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               side: BorderSide(color: Colors.grey[300]!),
//             ),
//             child: const Column(
//               children: [
//                 Icon(Icons.light_mode),
//                 SizedBox(height: 4),
//                 Text('تم روشن'),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
