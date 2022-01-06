import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        borderSide: BorderSide(color: Color(0x0ffbbbbb), width: 2));

    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 81,
                ),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.supervised_user_circle),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Регистрация',
                      style:
                      TextStyle(fontSize: 20, color: Color(0xff5C5C5C)),
                      textAlign: TextAlign.center,

                    ),
                  ],
                ),
                const SizedBox(
                  height: 19,
                ),
                const Text(
                  'Чтобы зарегистрироваться введите свой номер телефона и почту',
                  style:
                  TextStyle(fontSize: 16, color: Color(0xffC4C4C4)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'Телефон',
                  style:
                  TextStyle(fontSize: 16, color: Color(0x99000000)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 6,
                ),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFECEFF1),
                    hintText: '+7',
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,

                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'Почта',
                  style:
                  TextStyle(fontSize: 16, color: Color(0x99000000)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 6,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFECEFF1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Вам придет четырехзначный код, который будет вашим паролем",
                  style:
                  TextStyle(fontSize: 16, color: Color(0xffC4C4C4)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'Изменить пароль можно будет в личном кабинете после регистрации',
                  style:
                  TextStyle(fontSize: 16, color: Color(0xffC4C4C4)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 43,
                ),
                SizedBox(
                    width: 154,
                    height: 42,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Отправить код'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff0079d0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
