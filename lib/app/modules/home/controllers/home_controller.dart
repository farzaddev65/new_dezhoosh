import 'package:bestdroid/app/core/enums/enums.dart';
import 'package:bestdroid/app/core/theme/app_icons.dart';
import 'package:bestdroid/app/data/models/data.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<PageState> pageState=PageState.initial.obs;
  RxList<SwitchModel> listsLt = <SwitchModel>[].obs;
  RxList<SwitchModel> listsPt = <SwitchModel>[].obs;
  RxList<SwitchModel> listsPa = <SwitchModel>[].obs;
  RxList<SwitchModel> lists = <SwitchModel>[
    SwitchModel(title: 'روشنایی 1', subtitle: 'خاموش',icon: AppIcons.light1Fill,status: 0,type: 'LT3'),
    SwitchModel(title: 'روشنایی 2', subtitle: 'خاموش',icon: AppIcons.light1Fill,status: 1,type: 'LT1'),
    SwitchModel(title: 'روشنایی 3', subtitle: 'خاموش',icon: AppIcons.light1Fill,status: 1,type: 'LT2'),
    SwitchModel(title: 'پریز 3', subtitle: '',icon: AppIcons.light1Fill,status: 1,type: 'Pt1'),
    SwitchModel(title: 'روشنایی 4', subtitle: '',icon: AppIcons.light1Fill,status: 2,type: 'LT1'),
    SwitchModel(title: 'روشنایی 5', subtitle: '',icon: AppIcons.light1Fill,status: 0,type: 'LT2'),
    SwitchModel(title: 'پریز 3', subtitle: '',icon: AppIcons.light1Fill,status: 1,type: 'Pt2'),
    SwitchModel(title: '4', subtitle: '',icon: AppIcons.light1Fill,status: 1,type: 'Pt2'),
    SwitchModel(title: '5', subtitle: '',icon: AppIcons.light1Fill,status: 1,type: 'Pt3'),
    SwitchModel(title: 'روشنایی 6', subtitle: '',icon: AppIcons.light1Fill,status: 2,type: 'LT3'),
    SwitchModel(title: 'پرده 6', subtitle: '',icon: AppIcons.light1Fill,status: 2,type: 'Pa'),
  ].obs;

  @override
  void onInit() {
    super.onInit();

    for(SwitchModel item in lists){
      if(item.type!.toLowerCase().contains('lt')){
        listsLt.add(item);
      }
      if(item.type!.toLowerCase().contains('pt')){
        listsPt.add(item);
      }
      if(item.type!.toLowerCase().contains('pa')){
        listsPa.add(item);
      }

    }




    pageState.loaded();
  }


}
