import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      height: MediaQuery.of(context).size.height * 0.24,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(

        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                'assets/images/product_img.png',
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.16,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 8,
                  bottom: 18,
                ),
                width: MediaQuery.of(context).size.width * 0.16,
                height: MediaQuery.of(context).size.height * 0.03,
                decoration: BoxDecoration(
                  color: const Color(0xFF1DBF73),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Center(
                  child: Text('\$ 100',style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700
                  ),),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10
            ),
            child: Text('Logo Design -Graphic'
                ' Design Graphic Design',style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Colors.black,
                //fontWeight: FontWeight.w400,
            ),
            maxLines: 3,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star,color: Color(0xFFFFCB31),size: 14,),
              const SizedBox(
                width: 2,
              ),
              Text('(4.5)',style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: const Color(0xFFFFCB31),

              ),),
              const SizedBox(
                width: 6,
              ),
              Text('|',style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: const Color(0xFF828282),
              ),),
              const SizedBox(
                width: 6,
              ),
              const FaIcon(FontAwesomeIcons.basketShopping,size: 14,color: Color(0xFF828282),),
              const SizedBox(
                width: 6,
              ),
              Text('20',style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: const Color(0xFF828282),
              ),),
            ],
          ),

        ],
      ),
    );
  }
}
