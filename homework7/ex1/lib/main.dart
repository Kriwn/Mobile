
import 'dart:math';

Future<void> message() async
{
    int num = await randomnum();
    if (num == 0)
      print("Error you have got 0");
    else
      print(num);
}

Future<int> randomnum()
{
    var intValue = Random().nextInt(10); 
    return Future.delayed(const Duration(seconds: 2), () => Random().nextInt(10));
}
void main() async{

      print("Start");
      await message();
      print("End");
}