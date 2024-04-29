import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
          'welcome': 'Welcome',
          'logout': 'Logout',
          'login': 'Login',
          'email': 'Email',
          'password': 'Password',
          'forgot_password': 'Forgot Password?',
          'create_account': 'Create Account',
          'name': 'Name',
          'confirm_password': 'Confirm Password',
          'already_have_an_account': 'Already have an account?',
          'or': 'or',
          'continue_with': 'Continue with',
          'google': 'Google',
          'linkedin': 'LinkedIn',
          'github': 'GitHub',
          'invalid_email_or_password': 'Invalid email or password',
          'invalid_email': 'Invalid email',
          'invalid_password': 'Invalid password'
        },
        'zh_CN': {
          'hello': '你好',
          'welcome': '欢迎',
          'logout': '登出',
          'login': '登录',
          'email': '邮箱',
          'password': '密码',
          'forgot_password': '忘记密码？',
          'create_account': '创建账户',
          'name': '姓名',
          'confirm_password': '确认密码',
          'already_have_an_account': '已有账户？',
          'or': '或',
          'continue_with': '继续使用',
          'google': '谷歌',
          'linkedin': '领英',
          'github': 'GitHub',
          'invalid_email_or_password': '邮箱或密码错误',
          'invalid_email': '邮箱格式错误',
          'invalid_password': '密码格式错误'
        }
      };
}
