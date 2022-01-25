import 'package:meal_box/imports.dart';

class AddNewRequestView extends GetView {
  const AddNewRequestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Material(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Text(
                  StringKeys.addNewRequest.tr,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppTheme.black1),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: StringKeys.enterSchoolsOrganization.tr,
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: BorderSide(color: AppTheme.accentColor1)),
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: BorderSide(color: AppTheme.black3)),
                            hintStyle: TextStyle(color: AppTheme.black3, fontSize: 14)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: StringKeys.enterYourEmail.tr,
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: BorderSide(color: AppTheme.accentColor1)),
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: BorderSide(color: AppTheme.black3)),
                            hintStyle: TextStyle(color: AppTheme.black3, fontSize: 14)),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: true,
                        autofillHints: const [AutofillHints.email],
                      ),
                      Text(
                        StringKeys.weWillInformYouOnThisEmail.tr,
                        style: TextStyle(color: AppTheme.black4, fontSize: 12, fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Material(
                  elevation: 4,
                  shape: const StadiumBorder(),
                  child: Container(
                    height: 40,
                    decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      gradient: LinearGradient(colors: [AppTheme.accentColor1, AppTheme.accentColor2], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      shape: const StadiumBorder(),
                      child: Text(
                        StringKeys.sendRequest.tr,
                        style: TextStyle(color: AppTheme.white, fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
