import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    LinearGradient myGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xff19133C).withOpacity(1.0),
        Color(0xff5A4498).withOpacity(0.9)],
      stops: [0.0, 1.0],
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
              gradient: myGradient
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "pace",
                            style: TextStyle(
                              fontFamily: 'Chillax Bold',
                              fontSize: 47,
                              fontWeight: FontWeight.w700,
                              foreground: Paint()
                                ..shader = _buildThreeColorGradient(),
                            )
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: 126,
                          height: 46,
                          decoration: BoxDecoration(
                            color: Color(0xff45347B),
                              borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: Color(0xffADFFE6), // Border color
                              width: 2, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffADFFE6), // Shadow color
                                blurRadius: 2, // Spread of the shadow
                                offset: Offset(2, 1), // Offset from the container
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image(image: AssetImage('images/Star.png')),
                              ),
                              Text(
                                  "1,080",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                  )
                              ),
                              Image(image: AssetImage('images/man.png')),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                    child: Row(
                      children: [
                        Container(
                            width: 49,
                            height: 59,
                            decoration:     BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter, end: Alignment.bottomCenter,
                                  colors: [Color(0xff534793), Color(0xff382f6c)], )),
                          child: Center(
                            child: Text(
                                "2",
                                style: TextStyle(
                                  fontFamily: 'Satoshi Bold',
                                  color: Colors.white,
                                  fontSize: 44,
                                  fontWeight: FontWeight.w900,
                                )
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Column(
                          children: [
                            Text(
                                "Check in to stay in your groups",
                                style: TextStyle(
                                  fontFamily: 'Satoshi Regular',
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                )
                            ),
                            SizedBox(height: 10,),
                            Text(
                                "days remaining!",
                                style: TextStyle(
                                  fontFamily: 'Satoshi Bold',
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                )
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff50437B),
                          ),
                          child: Image(
                            image: AssetImage('images/warning.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 110,
                            height: 85,
                            decoration:     BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: Color(0xffe7f0ff)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Text(
                                    "Check-ins",
                                    style: TextStyle(
                                      fontFamily: 'Satoshi Bold',
                                      color: Color(0xff123672),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    children: [
                                      Image(image: AssetImage('images/tick.png')),
                                      SizedBox(width: 8,),
                                      Text(
                                          "42",
                                          style: TextStyle(
                                            fontFamily: 'Satoshi Bold',
                                            fontSize: 32,
                                            color: Color(0xff123672),
                                            fontWeight: FontWeight.w900,
                                          )
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 110,
                          height: 85,
                          decoration:     BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Color(0xffe7f0ff)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Text(
                                    "Weekly Avg.",
                                    style: TextStyle(
                                      fontFamily: 'Satoshi Bold',
                                      color: Color(0xff483A8A),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Image(image: AssetImage('images/Calendar.png')),
                                      SizedBox(width: 8,),
                                      Text(
                                          "3",
                                          style: TextStyle(
                                            fontFamily: 'Satoshi Bold',
                                            fontSize: 32,
                                            color: Color(0xff483A8A),
                                            fontWeight: FontWeight.w900,
                                          )
                                      ),
                                      Container(
                                          width: 40,
                                          height: 20,
                                          decoration:     BoxDecoration(
                                              borderRadius: BorderRadius.circular(27),
                                              color: Color(0xffcbc0ff)),
                                        child: Center(
                                          child: Text(
                                              "↑56%",
                                              style: TextStyle(
                                                fontSize: 9,
                                                color: Color(0xff483A8A),
                                                fontWeight: FontWeight.w900,
                                              )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 110,
                          height: 85,
                          decoration:     BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Color(0xffFFBEBE)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Text(
                                    "Vacation Days",
                                    style: TextStyle(
                                      fontFamily: 'Satoshi Bold',
                                      color: Color(0xff123672),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    children: [
                                      Image(image: AssetImage('images/Work.png')),
                                      SizedBox(width: 8,),
                                      Text(
                                          "4",
                                          style: TextStyle(
                                            fontFamily: 'Satoshi Bold',
                                            fontSize: 32,
                                            color: Color(0xff123672),
                                            fontWeight: FontWeight.w900,
                                          )
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: screenHeight*0.59,
                      decoration: BoxDecoration(
                        color: Color(0xffF8F8F8),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ) ,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                              child: Row(
                                children: [
                                  Text(
                                      "Groups",
                                      style: TextStyle(
                                        fontFamily: 'Satoshi Bold',
                                        fontSize: 24,
                                        color: Color(0xff1E1638),
                                        fontWeight: FontWeight.w900,
                                      )
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    width: 29,
                                    height: 29,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffD9D9D9)
                                    ),
                                    child: Center(
                                      child: Text(
                                          "7",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff1E1638),
                                            fontWeight: FontWeight.w900,
                                          )
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    alignment: Alignment.topLeft,
                                      width: 110,
                                      height: 36,
                                      decoration:     BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft, end: Alignment.bottomRight,
                                            colors: [Color(0xffcfc5fe), Color(0xffa4e9ff)], )),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            Image(image: AssetImage('images/add.png')),
                                            SizedBox(width: 5,),
                                            Text(
                                                "Create",
                                                style: TextStyle(
                                                  fontFamily: 'Satoshi Regular',
                                                  fontSize: 16,
                                                  color: Color(0xff1E1638),
                                                  fontWeight: FontWeight.w900,
                                                )
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                width: 359,
                                height: 94,
                                decoration:     BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: Colors.white),
                              child: Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      //shape: BoxShape.circle,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: Color(0xff7B77FF), // Border color
                                        width: 4, // Border width
                                      ),
                                    ),
                                    child: ClipOval(
                                      child: Image(
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                        image: AssetImage('images/dp.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Family Group",
                                            style: TextStyle(
                                              fontFamily: 'Satoshi Bold',
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                            )
                                        ),
                                        Text(
                                            "Greyson",
                                            style: TextStyle(
                                              fontFamily: 'Satoshi Bold',
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            )
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                            "Well done!",
                                            style: TextStyle(
                                              fontFamily: 'Satoshi Regular',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )
                                        ),

                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                            width: 93,
                                            height: 22,
                                            decoration:     BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color: Color(0xffefefef)),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image(image: AssetImage('images/chk.png'),),
                                              Text(
                                                  "Checked-in",
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700,
                                                  )
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          height: 15,
                                          width: 45,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFF7474),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Text(
                                                "HARD",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w900,
                                                )
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Text(
                                                "3:43 PM",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xff8B8B8B),
                                                  fontWeight: FontWeight.w500,
                                                )
                                            ),
                                            SizedBox(width: 5,),
                                            Container(
                                              width: 21,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff19133C)
                                              ),
                                              child: Center(
                                                child: Text(
                                                    "3",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w700,
                                                    )
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: 359,
                              height: 94,
                              decoration:     BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: Colors.white),
                              child: Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      //shape: BoxShape.circle,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: Color(0xff7B77FF), // Border color
                                        width: 4, // Border width
                                      ),
                                    ),
                                    child: ClipOval(
                                      child: Image(
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                        image: AssetImage('images/dp.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Family Group",
                                            style: TextStyle(
                                              fontFamily: 'Satoshi Bold',
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                            )
                                        ),

                                        Text(
                                            "Greyson",
                                            style: TextStyle(
                                              fontFamily: 'Satoshi Bold',
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            )
                                        ),
                                        Text(
                                            "Well done!",
                                            style: TextStyle(
                                              fontFamily: 'Satoshi Regular',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )
                                        ),

                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 22,
                                          decoration:     BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Color(0xffefefef)),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image(image: AssetImage('images/error.png'),),
                                              Text(
                                                  "4 hours",
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700,
                                                  )
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          height: 15,
                                          width: 45,
                                          decoration: BoxDecoration(
                                            color: Color(0xff74FFBC),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Text(
                                                "EASY",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w900,
                                                )
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Text(
                                                "3:43 PM",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xff8B8B8B),
                                                  fontWeight: FontWeight.w500,
                                                )
                                            ),
                                            SizedBox(width: 5,),
                                            Container(
                                              width: 21,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xff19133C)
                                              ),
                                              child: Center(
                                                child: Text(
                                                    "3",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w700,
                                                    )
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: 359,
                              height: 94,
                              decoration:     BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: Colors.white),
                              child: Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      //shape: BoxShape.circle,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: Color(0xff7B77FF), // Border color
                                        width: 4, // Border width
                                      ),
                                    ),
                                    child: ClipOval(
                                      child: Image(
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                        image: AssetImage('images/dp.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Family Group",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                            )
                                        ),
                                        SizedBox(height: 10,),
                                        Text(
                                            "Greyson",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            )
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                            "Well done!",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )
                                        ),

                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 93,
                                          height: 22,
                                          decoration:     BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.white),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                  "2 days",
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700,
                                                  )
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          height: 15,
                                          width: 55,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFD074),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Text(
                                                "MEDIUM",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w900,
                                                )
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Text(
                                                "3:43 PM",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xff8B8B8B),
                                                  fontWeight: FontWeight.w500,
                                                )
                                            ),
                                            SizedBox(width: 5,),
                                            Container(
                                              width: 21,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xff19133C)
                                              ),
                                              child: Center(
                                                child: Text(
                                                    "3",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w700,
                                                    )
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: 359,
                              height: 94,
                              decoration:     BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: Colors.white),
                              child: Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      //shape: BoxShape.circle,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: Color(0xff7B77FF), // Border color
                                        width: 4, // Border width
                                      ),
                                    ),
                                    child: ClipOval(
                                      child: Image(
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                        image: AssetImage('images/dp.png'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Family Group",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                            )
                                        ),
                                        SizedBox(height: 10,),
                                        Text(
                                            "Greyson",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            )
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                            "Well done!",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )
                                        ),

                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 93,
                                          height: 22,
                                          decoration:     BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.white),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [

                                              Text(
                                                  "5 days",
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700,
                                                  )
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          height: 15,
                                          width: 45,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFF7474),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Text(
                                                "HARD",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w900,
                                                )
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Text(
                                                "3:43 PM",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xff8B8B8B),
                                                  fontWeight: FontWeight.w500,
                                                )
                                            ),
                                            SizedBox(width: 5,),
                                            Container(
                                              width: 21,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xff19133C)
                                              ),
                                              child: Center(
                                                child: Text(
                                                    "3",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w700,
                                                    )
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffF8F8F8),
                    ),
                    child: Center(
                      child: Container(
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                  image: AssetImage('images/Home.png')),
                              Image(image: AssetImage('images/Chart.png')),
                              Container(
                                alignment: Alignment.topLeft,
                                width: 59,
                                height: 59,
                                decoration:     BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft, end: Alignment.bottomRight,
                                      colors: [Color(0xffA896FF), Color(0xff60A9FF)], )),
                                child:Center(child: Image(image: AssetImage('images/Camera.png'))),
                              ),
                              Image(
                                  image: AssetImage('images/Calendar.png')),
                              Image(image: AssetImage('images/Setting.png')),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )


                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
  Widget _buildGradient() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff19133C), Color(0xff5A4498)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }

  Shader _buildThreeColorGradient() {
    return LinearGradient(
      colors: [
        Color(0xffAD7AFD),
        Color(0xffF484C0),
        Color(0xffFBCD92),
      ],
    ).createShader(
      Rect.fromLTWH(50.0, 75.0, 50.0, 200.0),
    );
  }
}
