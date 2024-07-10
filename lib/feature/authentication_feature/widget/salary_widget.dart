import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SalaryWidget extends StatelessWidget {
  const SalaryWidget({super.key, required this.addPressed,required this.minPressed,required this.salary});
  final void Function()? addPressed;
  final void Function()? minPressed;
  final int salary;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Salary',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(
          height: 7,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.087,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFF9F9F9),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: InkWell(
                  onTap: addPressed,
                  child: const Icon(
                    Icons.add,
                    color: Color(0xFF1DBF73),
                  ),
                ),
              ),
              Text('SAR $salary',style: Theme.of(context).textTheme.titleMedium,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: InkWell(
                  onTap: minPressed,
                  child: const Icon(
                    CupertinoIcons.minus,
                    color: Color(0xFF1DBF73),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
