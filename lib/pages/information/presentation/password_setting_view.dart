import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/app_text_style.dart';
import '../../../gen/colors.gen.dart';

class PasswordSettingView extends StatefulWidget {
  @override
  _PasswordSettingViewState createState() => _PasswordSettingViewState();
}

class _PasswordSettingViewState extends State<PasswordSettingView> {
  final TextEditingController basicPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController verifyPasswordController = TextEditingController();

  bool _obscureBasicPassword = true;
  bool _obscureNewPassword = true;
  bool _obscureVerifyPassword = true;

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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Password setting", style: AppTextStyle.headline1),
            SizedBox(height: 20),
            _buildPasswordField(
              'Basic password',
              basicPasswordController,
              '8-16자리 영문, 숫자, 특수문자 조합',
              _obscureBasicPassword,
                  () {
                setState(() {
                  _obscureBasicPassword = !_obscureBasicPassword;
                });
              },
            ),
            SizedBox(height: 24),
            _buildPasswordField(
              'New password',
              newPasswordController,
              '8-16자리 영문, 숫자, 특수문자 조합',
              _obscureNewPassword,
                  () {
                setState(() {
                  _obscureNewPassword = !_obscureNewPassword;
                });
              },
            ),
            SizedBox(height: 24),
            _buildPasswordField(
              'verify password',
              verifyPasswordController,
              '비밀번호를 재입력해 주세요.',
              _obscureVerifyPassword,
                  () {
                setState(() {
                  _obscureVerifyPassword = !_obscureVerifyPassword;
                });
              },
            ),

            Spacer(),
            Container(
              width: double.infinity,
              height: 56,
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  // Handle complete action
                  _handleComplete();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE0E0E0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'complete',
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

  Widget _buildPasswordField(
      String label,
      TextEditingController controller,
      String placeholder,
      bool obscureText,
      VoidCallback toggleVisibility,
      ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: label,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: ' *',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Color(0xFFE0E0E0),
              width: 1,
            ),
          ),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              hintText: placeholder,
              hintStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey[600],
                  size: 20,
                ),
                onPressed: toggleVisibility,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _handleComplete() {
    // Validate passwords
    if (basicPasswordController.text.isEmpty ||
        newPasswordController.text.isEmpty ||
        verifyPasswordController.text.isEmpty) {
      _showSnackBar('모든 필드를 입력해주세요.');
      return;
    }

    if (newPasswordController.text != verifyPasswordController.text) {
      _showSnackBar('새 비밀번호가 일치하지 않습니다.');
      return;
    }

    if (!_isValidPassword(newPasswordController.text)) {
      _showSnackBar('비밀번호는 8-16자리 영문, 숫자, 특수문자 조합이어야 합니다.');
      return;
    }

    // Handle password change logic here
    print('Password change completed');
    _showSnackBar('비밀번호가 성공적으로 변경되었습니다.');

    // Navigate back or to another screen
    // Navigator.pop(context);
  }

  bool _isValidPassword(String password) {
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    // Check for at least one letter, one number, and one special character
    final hasLetter = password.contains(RegExp(r'[a-zA-Z]'));
    final hasNumber = password.contains(RegExp(r'[0-9]'));
    final hasSpecialChar = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    return hasLetter && hasNumber && hasSpecialChar;
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.grey[800],
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  @override
  void dispose() {
    basicPasswordController.dispose();
    newPasswordController.dispose();
    verifyPasswordController.dispose();
    super.dispose();
  }
}