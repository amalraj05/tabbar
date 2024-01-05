import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3, 
      child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text("TAB BAR",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        ),
        backgroundColor: Colors.black,
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.photo_sharp,color: Colors.white),
            ),
            Tab(
              icon: Text("ARTICLE",style: TextStyle(color: Colors.white),),
            ),
            Tab(
              icon: Text("Achievement",style: TextStyle(color: Colors.white),),
            )
          ],
          ),
      ),
      body: 
      TabBarView(
      children:[
       Container(
        height: 10,
        width: 10,
        child: Image.asset("assets/mradona.jpg",fit: BoxFit.fill,),
       ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text("Diego Maradona",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20), 
                child: Text("Diego Maradona \n born October 30, 1960, Lanus, Buenos Aires, Argentina—died November 25, 2020, Tigre, Buenos Aires. Argentine football (soccer) player who is generally regarded as the top footballer of the 1980s and one of the greatest of all time. Renowned for his ability to control the ball and create scoring opportunities for himself and others, he led club teams to championships in Argentina, Italy, and Spain, and he starred on the Argentine national team that won the 1986 World Cup. \n \n Maradona displayed football talent early, and at age eight he joined Las Cebollitas (“The Little Onions”), a boys’ team that went on to win 136 consecutive games and a national championship. He signed with Argentinos Juniors at age 14 and made his first-division debut in 1976, 10 days before his 16th birthday. Only four months later he made his debut with the national team, becoming the youngest Argentine ever to do so. Although he was excluded from the 1978 World Cup-winning squad because it was felt that he was still too young, the next year he led the national under-20 team to a Junior World Cup championship.",
                style: TextStyle(fontSize: 15),),
              ),
            ],
          ),
        ),
       
        Padding(
          padding: const EdgeInsets.only(top: 30,left: 20),
          child: Text(" - 1986 FIFA World Cup \n - 1986 Golden Ball award \n - 1977 Copa del Rey \n - 1982 Spanish League \n - 1987, 1990 Italian Serie A \n - 1979, 1990 Coppa Italia \n - 1984, 1990 Supercoppa Italiana \n - 1991 UEFA Cup \n - 1979, 1990 Italian Footballer of the Year \n - 1979, 1990 South American Footballer of \n   the Year \n - 1979, 1990 FIFA World Player of the Year \n - 1979, 1990 Ballon d’Or \n - 1990 UEFA Golden Foot",
          style: TextStyle(fontSize: 17),),
        )
      ]),
    )
    );
    
    
  }
}