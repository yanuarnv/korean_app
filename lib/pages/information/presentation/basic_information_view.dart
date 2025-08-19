import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korean_app/shared/custom_text_field_widget.dart';

import '../../../app/app_text_style.dart';
import '../../../gen/colors.gen.dart';

class BasicInformationView extends StatefulWidget {
  @override
  _BasicInformationViewState createState() => _BasicInformationViewState();
}

class _BasicInformationViewState extends State<BasicInformationView> {
  final TextEditingController idController = TextEditingController(
    text: 'asdf123',
  );
  final TextEditingController emailController = TextEditingController(
    text: 'asdf123@naver.com',
  );
  final TextEditingController phoneController = TextEditingController(
    text: '010-1234-5678',
  );
  final TextEditingController nicknameController = TextEditingController(
    text: '장발산',
  );
  final TextEditingController instagramController = TextEditingController(
    text: 'ffkdo_sa',
  );
  final TextEditingController workLinkController = TextEditingController(
    text: 'https://www.naver.com/',
  );
  final TextEditingController portfolioController = TextEditingController(
    text: '포트폴리오.pdf',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorValue.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios, color: ColorValue.textPrimary),
          tooltip: 'Back',
        ),
        systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Basic information", style: AppTextStyle.headline1),
            SizedBox(height: 20),
            CustomTextFieldWidget(
              label: 'id',
              controller: idController,
              isEnable: false,
            ),
            SizedBox(height: 24),
            CustomTextFieldWidget(label: 'email', controller: emailController),
            SizedBox(height: 24),
            _buildPhoneField(),
            SizedBox(height: 24),
            CustomTextFieldWidget(
              label: 'nickname',
              controller: nicknameController,
            ),
            SizedBox(height: 24),
            CustomTextFieldWidget(
              label: 'Instagram ID',
              controller: instagramController,
            ),
            SizedBox(height: 24),
            CustomTextFieldWidget(
              label: 'Representative work link',
              controller: workLinkController,
            ),
            SizedBox(height: 24),
            _buildPortfolioField(),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  // Handle storage/save action
                  print('Storage button pressed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE0E0E0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Storage',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPhoneField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'phone number',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  enabled: true,
                  controller: phoneController,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE0E0E0)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE0E0E0)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE0E0E0)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(width: 12),
            Container(
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  // Handle phone number change
                  print('변경하기 button pressed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7C4DFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: Text(
                  '변경하기',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPortfolioField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Portfolio',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: portfolioController,
            style: TextStyle(color: Colors.black, fontSize: 16),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.attach_file,
                  color: Colors.grey[600],
                  size: 20,
                ),
                onPressed: () {
                  // Handle file attachment
                  print('Attachment button pressed');
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    idController.dispose();
    emailController.dispose();
    phoneController.dispose();
    nicknameController.dispose();
    instagramController.dispose();
    workLinkController.dispose();
    portfolioController.dispose();
    super.dispose();
  }
}
