import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSnackBarContent extends StatefulWidget {
  const CustomSnackBarContent({super.key});

  @override
  State<CustomSnackBarContent> createState() => _CustomSnackBarContentState();
}

class _CustomSnackBarContentState extends State<CustomSnackBarContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          height: 90,
          decoration: const BoxDecoration(
            color: Color(0xFFC72C41),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 48,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Algo não está bem',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      'Selecione a cor ou o icone da categoria',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            child: Stack(children: [
              SvgPicture.asset(
                'assets/icons/chart-bubble.svg',
                height: 48,
                width: 40,
                color: const Color(0xFF801336),
              )
            ]),
          ),
        )
      ],
    );
  }
}
