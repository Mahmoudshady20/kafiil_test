import 'package:flutter/material.dart';

import '../../../../core/utils/date_utils.dart';

class BirthDayWidget extends StatelessWidget {
  const BirthDayWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Birth Date',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: double.infinity,
              padding: const EdgeInsets.only(
                left: 8,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFF9F9F9),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Text(
                    MyDateUtils.formatTaskDate(
                        MyDateUtils.dateOnly(DateTime.now())),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  const Spacer(),
                  const Icon(Icons.calendar_month),
                  const SizedBox(
                    width: 8,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
