import 'package:flutter/material.dart';

class WhoNameWidget extends StatelessWidget {
  const WhoNameWidget(
      {super.key, required this.lastName, required this.firstName});
  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'First Name',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Center(
                        child: Text(
                      firstName,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.black,
                          ),
                    ))),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.01,
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last Name',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Center(
                        child: Text(
                      lastName,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.black,
                          ),
                    ))),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
