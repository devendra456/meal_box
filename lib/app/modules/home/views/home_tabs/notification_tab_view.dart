import 'package:meal_box/imports.dart';

class NotificationTabView extends GetView<NotificationTabController> {
  const NotificationTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (data) {
        if (data!.data.isNotEmpty) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                data.data[index].content,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppTheme.black1,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              children: [
                                Text(
                                  data.data[index].time,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppTheme.black3,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                data.data[index].isNew
                                    ? Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 4,
                                        ),
                                        decoration: ShapeDecoration(
                                          shape: const StadiumBorder(),
                                          color: AppTheme.lightBlue,
                                        ),
                                        child: Text(
                                          StringKeys.newNotification.tr,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppTheme.black1,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    : const SizedBox()
                              ],
                            )
                          ],
                        ),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(4),
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(4),
                            bottomRight: Radius.circular(24),
                          ),
                          border: Border.all(
                            color: AppTheme.black3,
                            width: 0.4,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(StringKeys.clearAll.tr),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const StadiumBorder(),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return Center(
            child: Text(
              StringKeys.notificationNotFound.tr,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: AppTheme.black1,
              ),
            ),
          );
        }
      },
    );
  }
}
