import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/helper/keyboard.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/size_config.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  bool check = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Center(child: Text("Search Filter")),
        content: Container(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  children: [
                    CheckboxListTile(
                      title: Text("_texts[index]"),
                      value: check,
                      onChanged: (val) {
                        setState(() {
                          check = val!;
                          var canUpload = true;
                          if (check == false) {
                            canUpload = false;
                          }
                        });
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (val) {}),
                    Text("Dust Filter")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (val) {}),
                    Text("Heat and Cool")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (val) {}),
                    Text("Self Cleaning")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (val) {}),
                    Text("Ups Enabled")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (val) {}),
                    Text("Wifi Enabled")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (val) {}),
                    Text("data")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (val) {}),
                    Text("data")
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                DefaultButton(
                  text: "Continue",
                  press: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // if all are valid then go to success screen
                      KeyboardUtil.hideKeyboard(context);
                      // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                    }
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
