import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/data/response/status.dart';
import 'package:get_x/resources/components/general_exception.dart';
import 'package:get_x/resources/components/internet_exception_widget.dart';
import 'package:get_x/resources/routes/routes_name.dart';
import 'package:get_x/view_models/controller/home/home_controller.dart';
import 'package:get_x/view_models/controller/user_preference.dart/user_preference.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  //
  //
  UserPreference userPreference = UserPreference();

  final homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    homeController.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'HomeView',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        //automaticallyImplyLeading: false
        actions: [
          IconButton(
            onPressed: () {
              userPreference.removeUser().then((value) {
                Get.toNamed(RoutesName.loginView);
              });
            },
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: Obx(() {
        switch (homeController.rxRequestStatus.value) {
          case Status.LOADING:
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
                strokeWidth: 3,
              ),
            );

          case Status.ERROR:
            if (homeController.error.value == 'No internet') {
              return InternetExceptionWidget(onPress: () {
                homeController.refreshApi();
              });
            } else {
              return GeneralExceptionWidget(onPress: () {
                homeController.refreshApi();
              });
            }

          case Status.COMPLETED:
            return ListView.builder(
              itemCount: homeController.userList.value.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      homeController.userList.value.data![index].avatar
                          .toString(),
                    ),
                  ),
                  title: Text(
                    homeController.userList.value.data![index].firstName
                        .toString(),
                  ),
                  subtitle: Text(
                    homeController.userList.value.data![index].email.toString(),
                  ),
                );
              },
            );
        }
      }),
    );
  }
}
