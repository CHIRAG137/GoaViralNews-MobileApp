import 'package:flutter/material.dart';
import 'package:goaviralnews/common/widgets/custom_elevatedbutton.dart';
import 'package:goaviralnews/features/onboarding/screens/onboarding.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:intl/intl.dart';
import '../../../size_config.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({super.key});

  static const String routName = "/create-profile-page";

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 36,
          ),
          child: Column(
            children: [
              const Text(
                "Bio-Data",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: GlobalVariables.primaryIconButtonBorderColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: IconButton(
                      // ignore: prefer_const_constructors
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, OnboardingPage.routName);
                      },
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  CircleAvatar(
                    backgroundColor:
                        GlobalVariables.primaryIconButtonBorderColor,
                    radius: 40,
                    child: Image.asset(
                      "assets/icons/ic_avatar.png",
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 6,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: GlobalVariables.extraFadedTextColor,
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: GlobalVariables.backgroundColor,
                        size: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Chirag Goel",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    color: GlobalVariables.fadedTextColor,
                    height: 18,
                    width: 18,
                    child: const Icon(
                      Icons.edit,
                      color: GlobalVariables.backgroundColor,
                      size: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "chiraggoel@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: GlobalVariables.extraFadedTextColor,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    color: GlobalVariables.extraFadedTextColor,
                    height: 14,
                    width: 14,
                    child: const Icon(
                      Icons.edit,
                      color: GlobalVariables.backgroundColor,
                      size: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "What's your first name?",
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "And your last name?",
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  hintText: "Select gender",
                ),
                items: <String>['Male', 'Female', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Do something with the selected value
                },
                value: null,
              ),
              const SizedBox(
                height: 32,
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                  hintText: "What is your date of birth?",
                  suffixIcon: IconButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: _selectedDate ?? DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      ).then((selectedDate) {
                        if (selectedDate != null) {
                          setState(() {
                            _selectedDate = selectedDate;
                          });
                        }
                      });
                    },
                    icon: Icon(Icons.calendar_today),
                  ),
                ),
                controller: TextEditingController(
                  text: _selectedDate != null
                      ? DateFormat('dd-MM-yyyy').format(_selectedDate!)
                      : '',
                ),
              ),
              SizedBox(
                height: height / 8,
              ),
              const CustomElevatedButton(
                router: "/routes",
                title: "Update Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
