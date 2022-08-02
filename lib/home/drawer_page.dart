import 'package:flutter/material.dart';
import 'package:flutter_example/model/user_model.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = UserModel.of(context);
    print(user.birthData);
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(user.imgAvatar),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user.name,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                '(${user.birthData})',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          )
        ],
      ),
    );
  }
}
