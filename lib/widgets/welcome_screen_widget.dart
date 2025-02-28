import 'package:flutter/material.dart';

class WelcomeScreenWidget extends StatefulWidget {
  final List<Color> bgColor;
  final Color richTextColor;
  final Color textColor;
  final List<Color> buttonGradientColor;

  const WelcomeScreenWidget({
    super.key,
    required this.bgColor,
    required this.buttonGradientColor,
    required this.richTextColor,
    required this.textColor,
  });

  @override
  State<WelcomeScreenWidget> createState() => _WelcomeScreenWidgetState();
}

class _WelcomeScreenWidgetState extends State<WelcomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.bgColor,
          begin: Alignment.centerRight,
          end: Alignment.centerLeft
        )
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: 'DIDPOOL',
                  style: TextStyle(
                    color: widget.richTextColor,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                children: [
                  TextSpan(
                    text: 'Fit',
                    style: TextStyle(
                      color: Color(0xff1D1617),
                      fontSize: 36,
                      fontWeight: FontWeight.bold
                    )
                  )
                ]
                ),
              ),
              SizedBox(height: 10,),
               Text(
          'Everybody Can Train',
          style: TextStyle(
            color: widget.textColor,
            fontSize: 18,
            decoration: TextDecoration.none
          ),
                    ),
            ],
          ),
         Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: widget.buttonGradientColor,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  ),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
