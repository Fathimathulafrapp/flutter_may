
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/car/secondpage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';


void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: frontpage(),));
}
class frontpage extends StatefulWidget{
  @override
  State<frontpage> createState() => _frontpageState();
}

class _frontpageState extends State<frontpage> {
  final CarouselController _controller = CarouselController();
  var _currentIndex = 0;
  int _current = 0;


  @override
  final List<String>imgList=[
    "https://media.istockphoto.com/id/949396376/photo/3d-illustration-of-generic-red-sports-car-on-white.webp?b=1&s=170667a&w=0&k=20&c=LYw07JCZDqOvUlAkRswX44LS10eCr0MRIl46Nc9-KHM=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWsKn2nRGNGFeWl3XZ-kCYEcxBplve3boYzRssqYeKxkpddDe5YjJvLVWDpyawYsxbyPk&usqp=CAU",
   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgDWp5GlgCO5mYDb6tsLrHVoccgcHloyro7A&usqp=CAU",
    "https://cdni.autocarindia.com/Utils/ImageResizer.ashx?n=https://cdni.autocarindia.com/ExtraImages/20141117023139_20141086205.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9W41iKKVY6Nws6PXrOBoS67GbKEKimbIR5bKw-3346LOM_7S7gGrhr-o6IyVLFk79aRE&usqp=CAU"
        "data:image/jpeg;base64,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"
  ];
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.grey[300],
     body:ListView(
       children: [
         Stack(
           children: [
             Container(
             decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),color: Colors.white),
             height: 395,
    child: Column(
    children: [
    Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: [
        Row(
        children: [
        Stack(
        children: [
        CircularStepProgressIndicator(
        padding: 0,
        totalSteps: 100,
        currentStep: 80,
        selectedColor: Colors.yellow,
        selectedStepSize: 3.7,
        unselectedColor: Colors.white,
        width: 70,
        height: 70,
        startingAngle: 2.3,
        child: Center(
        child: CircleAvatar(
        maxRadius: 27,
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage("data:image/jpeg;base64,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")
        ),
        ),

        ),Positioned(top: 43,left: 47,
              child: Container(height: 13,width: 23,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.yellow),
          child: Center(child: Text("add",style: TextStyle(fontSize: 10,color: Colors.white),)),))
        ],
        ),
        Row(
        children: [
        Padding(
        padding: const EdgeInsets.only(left: 270,top: 0.0),
        child: Text("IDR",style: TextStyle(fontSize: 13,color: Colors.grey[300]),),
        ),
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("17.7jt",style: TextStyle(fontSize: 20,color: Colors.black),),
        ),
        Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,),
        height: 30,
        width: 30,
        child: Icon(Icons.add,color: Colors.white,),
        ),
        )
        ],
        ),

        ],
        ),
        Container(
            height: 200,
            width: 600,
            child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(enlargeCenterPage: true,aspectRatio: 2.0,onPageChanged: (index,reason){

                }),  items:imgList
                .map((item) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: NetworkImage(item))
              ),

            )).toList()
            )

        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children:
          imgList.asMap().entries.map((entry){
            return GestureDetector(
              onTap: ()=> _controller.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(
                    vertical: 7.0,horizontal: 3.0
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: (Theme.of(context).brightness==Brightness.dark
                        ?Colors.white
                        :Colors.black
                    )
                        .withOpacity(
                        _current == entry.key ? 0.9 : 0.4
                    )
                ),
              ),
            );
          } ).toList(),


        ),
      ],
    ),

    ),
      SizedBox(height: 30,),
      Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 220),
                child: Text("GTR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 210),
                child: Text("Nisson",style:TextStyle(color: Colors.grey[700],fontSize: 17),),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6,left: 100),
            child: Text("My Garage",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0,right: 7),
            child: IconButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => secondpage()));
            }, icon: Icon(Icons.arrow_forward,size: 20,color: Colors.blue,)),
          )
        ],
      )

    ])
             )],
         ),
         SizedBox(height: 10,),

         Padding(
           padding: const EdgeInsets.all(15.0),
           child: Container(
             height: 100,
             width: double.infinity,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.indigo),
             child: Center(child: Row(
               children: [
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 240,top: 20),
                       child: Text("Available Cars",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(right: 220,left:15,top: 5),
                       child: Text("Long term and short term",style: TextStyle(color: Colors.white,fontSize: 15),),
                     ),

                   ],

                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 0.0,right: 7,top: 10,bottom: 10),
                   child: Container(
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                     height: 40,
                     width: 40,

                     child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.blue,)),
                   ),
                 )
               ],
             )),
           ),
         ),
         Row(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 10),
               child: Text("TOP DEALS",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 320),
               child: Text("More",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
             ),
             SizedBox(width: 5,),
             Icon(Icons.arrow_forward_ios,color: Colors.blue,size: 12,)
           ],
         ),
         SizedBox(height: 10,),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child:Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
           height: 250,
                   width: 200,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                   child: Stack(
                     children: [

                       Padding(
                         padding: const EdgeInsets.only(top: 15,left: 110),
                         child: Container(
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey[200]),
                           height: 20,
                           width: 70,
                           child: Center(child: Text("Weekly",style: (TextStyle(color: Colors.blue)),)),
                         ),
                       ),
                       Positioned(
                         top: 10,
                           left: 10,
                           bottom: 10,
                           right: 10,

                           child: Image(image: NetworkImage("data:image/jpeg;base64,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"),)),
                       Positioned(
                         top: 180,
                           left: 12,

                           child: Text("Discovery",style: TextStyle(fontSize: 15),)),
                       Positioned(
                           top: 200,
                           left: 12,
                           child: Text("Land Rover",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                       Positioned(top: 220,
                           left: 12,
                           child: Text("per week",style: TextStyle(color: Colors.grey[700]),))
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 250,
                   width: 200,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                   child: Stack(
                     children: [

                       Padding(
                         padding: const EdgeInsets.only(top: 15,left: 110),
                         child: Container(
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey[200]),
                           height: 20,
                           width: 70,
                           child: Center(child: Text("Monthly",style: (TextStyle(color: Colors.blue)),)),
                         ),
                       ),
                       Positioned(
                           top: 10,
                           left: 10,
                           bottom: 10,
                           right: 10,

                           child: Image(image: NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgWFhUYGRgVGBgZGRgYGhwZHBgYGhwZGhgYGhocIS4lHB4rHxgaJjgmKy8xNTU1GiQ7QDs0Py80NTEBDAwMEA8PGBERGjUdGCQ4NDg0MTQxPz80MTQ/NDExPDEzPT80NzY0PzU0MTQ9MTUxNDE/Mzc3PzZAMzYxQD8xQP/AABEIAKIBNwMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABAcDBQYCAQj/xABIEAACAQMABgUHCAgFAwUAAAABAgADBBEFBhIhMUEHIlFxkRMyQmGBobEUUmJygpLB0SNDU5OiwtLhFURUsvAWM9QXJTRzg//EABcBAQEBAQAAAAAAAAAAAAAAAAABAgP/xAAeEQEBAQACAQUAAAAAAAAAAAAAARECMSETUXGhsf/aAAwDAQACEQMRAD8AuaIiAiIgIiICIiAiIgImGpVAZVPpEgdmQC2PAE+yZoCIiAiJ8gfYiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiJ8JgfYnO6w63W1oP0jjaIyqDrM31UG/HrOB65WmmOlC4qZFCmtNeT1Ou2O0IOop+93wLle6Uc892/38BNLf64WtI4evSU9jOC33VyZQOkdM3Ff/vXFR/oliE+4uFHsE1rAAbhKLuvukmwYbJrM2GU9SlUHWRgykFgOYEwN0p2nbcn1img/mEpmkhxMopnsgXTadIdnUIHyh6ZP7RWUe1hlR7TJ+mtMVqNMVaVH5SmCWKPhgN2GUYIccc437huPKh/JGb3VjWatYv1cvSJ69IncRzZM+a/uPP1B0lTpSc+bbL7ahPwSYD0m1f2FMfaY/lM2t2rtO5pfL7LrK423RR5w9JwvJwc7S88HnxrsHMDv16Sq37Kn/H/AFSXQ6SKnzE8XH80rWMwLdtukVzxpp7Kjj4kzbW2vhbjS8Kg/FJSC1WHAyba6VdDxgX1b61K3Gk/s2T+Ik6lp+ieJZe9W+IGJUGitawMBhOvstNI/ZA72lpCk3m1EP2hJU4Spb0aqlXRWU8QwBB9hmKjoupR32tzUpfQY+Von1eTc9QfUKyCwInG0tb6lDde0Nlf9Rb7VSl3umNun4MPXOpsr2nWQPSdXRuDIQwPtECTERAREQEREBERAREQEREBERAREQEREBOT131lWyobZwzuStGnnzm+c30V4n2DiZvtJXqUqdSpUYKlNSzN6hxA7ezHM7p+ddYtNVL64as4IB6tNOSID1V7+ZPaTAgXt09V2eo5d3O07nifUOwcgBwAi3tmfhwm10VoNqmGxubeO7kfCdhaaDVAN0o4qjoQnjmR7+zCMV+aBnvO/wCGPGWUtsi8pXulH23dh6bsB3A7K+5REE2x0RlEJG9gD47/AMZlfRuJuvKqu7kBgezdOjstTalQBnbYB9Eb2HeeAPjArmpZgSDcUcAnsBlyrqPRA3qzessfwxOM171TNtS8qmSjHYZSclCeBzzU8IGo1G1gNnVCO36CsQHz+rcjC1B6uAb1b+W/L0iasfJn+UUh+hqt1lA3U6h343cEbiOw5HZOeqoDulj6g6US6t3srjDlE2cMd9SgcAHPzkOBn6h4wKnQDO/hPgadDrZqlWsXJwz0GOadUDI2eSvjzWHgeXYOdBgZkfaOG39hnmsmD6jPAkqsmRAjI2CDNlRuWXerGauZ6VUAYPLhA6jR+srpgE5E6zRusqPjJwZVvygdhmSnd44EiBd9C8DDcczXVNDBXNa0qG2rHexQA06nqq0j1W7xg7+Mr7ResjIQC26dto3TiuOO+BvdH65FHWjf0xbuxwlZSTb1T6nP/bP0W8Z2KnO8cDOHcpUQo6q6OMFWAII9YM1dv8p0f1rUmvbA9a1dsui8zbud4+oc+qQWdE0ur+sdC9Tbovkjz6bbqlM8MOnEbwd/A43GbqAiIgIiICIiAiIgIiICIiB8kevXxuHHn6v7yDp/SXkKYxjbc4UkZCj0nb1AeJIHOZqboVBLDeASc7+ELnjXI9I9hcXNslK3AKhw9Rc4Lqo6qgnd52/f2CV/Q1VuQN1tUyFOMlB1zkZPW4D8TLvynzhPBqdYDYGweL7SnB5DZGfGEV3Z2VwiKq2j9VQN70hwGOTzK9G7PC2I76ifnLGCKeyevIL2Siq6+j708KH8aTn31SvQEAtiSjKT+kp78cfSl5mgvZIt1WpU8bZxtHA3Z8ccB3xopuroa+52z+xkPweTk0/pmluNszKOBNMMSPXsNnMts0l9fhPJpL2+4wKoXpA0gvn2j/uq6/iZH05rFfXNrUZ7F6dElNqqdvG51JOwy5xuxtcBLae3QgjaG8Y7PjOZ0fb39BaiEU6yPtBD5YsRncGYOueG/ZGd+7MCi72+z1VYesg+6bLVa9qU7q3ekCz7arsjJLqx2XUgcQVJ7uPKXLR1eyqrUpK+yoBZ6aMWwOJOzvJmysdX6VDfSopTJ4lECf7RA2FxROCBvU8pzd1qxauxZ7amSeJ2APhOi2HHpH2758bb5gH2SDlW1RtP9NT+7PD6p2v7BffOnKfR8J5rEqjMFyVUkDtIGcQOV/6Os+dETImoti3ofxMPgRN6be5AB2KDggEFaj085GfSRh75Fr3VRDh7K5x8+mEqr/A+3/DAw2+olkv6mmw+mm0fEmShqZY8raj+7T8pgoabotn9I6Y3EVadWlg/bQDkfCbG2rbfmVVf6rq3wMCFU1Lsj/laB+wF94mNdV7NP8rs45od3uxN0BVHP3CewavYvv8Azga620ZbDcrOvqLv8GOJL/w5OTsPun8J7emx86mpkd7U8kI9ufwgajSOpNOpVW4p16lGsv6ykArN9bkeHt55nR2jXCKFeolUgecy7DH1nZ6ue4CRFtWnsUHHM+JgbRb1vSp/dYH44mZbscww7xn3rkTUKjjnMyM/MeEDbJVVuBB7jMk1WzkcM9/Ge1dhwJ7uI9/CBsokNbvHnD2j8pJVgRkHIMD3ERAREQEREDT6SpLVqeTYZARWI5YLHcfao8JKSzEyjG0zHlu9g/uTPPy1NrZ2l2vm7Q2vDjBobdc8Jgo6ORGLAbz3YX6o5TLVeRnrmBN2BPu6aw3U+fKvXA2haaqutUvs7KMh9MoMAc8jOSfjBup9+VQJ9PcAM5/56yZ6LCa75TPvyiBNOJ4amp5SL5ePLwMzWq8pkWiRwZvvGYEq58RJ9M7smB4Ct87PeB+UE+oSLpDS1Kipao6Io9J2CjxJmpt9cLOowRLqiWO4DbUEnsGTvMDf4U8RPopLMCVczOpgaW8L0GTYbqDaIQgFXUAsUB4qy7yuDjZzu6s2tC8R0FRTlWGe7fg5HIg5yOWDPt3bq6FWyOBBHFWG9WU9oO+cfcLe2jlqVLbVmy6gFkbltKo3o2MZGcfWxOdvKcpe5fpuScpnV/Xqzqvtv5QZZSMu1NnXG/ZIZQSoIyckY4Y45nirUpPUZXWmcBTkYqLnZ3kdUDPAcMyPX1mXhWsip+i/WznkuyCN+TgGQBpe2YkijcpntKH4ge9puc58Hp8vbWxtaJR8pWr012f2pZMjsRiVz7BnHCbGnfXK5ZbilUTGdhqY2wOeXRxnt83lI9nUTK+S23YghkZNplVgRt9QnY3ZwSDneAd5kBdE1VK58thBhc0mzgAAbTKCW3DnNdsXw3g1qZMeUoqc/s6ikn17Lhd3tmwo6x0GV3baRaYBdnQhUBGQS4yuMc8znER13BGdmGwitRqABm4uzugAUYG/djB45AmDXq7NvYimtTY8pVRHq7G0NrrVMlQDuJphQOQ3coHSjXLR5/zlv+8T857Gt2j/APW2371PzlHf47VHC/oH69qf/GafU09XP+esT9a1X8bSMF5DWvR/+stv3qf1SNe6fp1sU7O5olzlnqrs1Ut6aAszuAwG/AUAkecT6JlNrpyt/qtG+22T/wAabHR+mgwZLu+thbHDVKNpR2Xr7O9EJWio2drGcn1c4Hfat6+0arPTrMn6PP6dN1NlHpupJNHODvJKn528CdCdabD/AFtt++T+qULp7XBrmv5Vk2VXdTCFkq014DZqAbmxxAGDJtvp+oR1buyC8vLWiirj6YS3dc8shjnEYLrGs9gxCi8tiTuAFVCSfUAZn0dpRCrEqyDaIw4xuzhW7iN/tlK09PVScf4nap/9diW8MWw+M3Opuk6lWs9sazV0qIzq4QoEcYBwhUbIOcleG7PExguqJB0S5NJM5yoCnPHI3SdIEREBERA4fpD1kazsy1M/parbFP1M2cv7Bk9+JRdOwds1SKzsDtPVXabZbjtFsZznmTmd/wBJztVuLWkMkBHbA+cxAzjuBmwo2iJaUWVNlttadRVOC6llqbLHjnapsQeWcSjadHGs73NJqNZtqtRAIf8AaUzuVz9IEbJ7wec6i4eVLb3aW99QuaYCU6rslRF81Cz+TqKufQDbDjsGBylu0yrHfgd8ggO5njaM3Bs0PD3GYn0bA1e1Pu3JzaPMxNZsOUCPtz75Se2oEcp4NOB9FSfRUmMoZ8xAnW75I75F1s1iSyoNUbfs7lXmzngo/wCds92z4OeyVJ0r6QatdJbg9Wku03ZtNvJ7wvxgcnpPSNxfVDUqsW445IgPoqOAkf8Awv159onU6vatNcqWIdaSKW2U2QxRfOfrct3EBieznNpd6rW7GkbZ3RKtFqwqVDlVVRnL7gQCCOzG/ulGs1Q10rWLrTqlntzgbJ3tTHDapnsHzeHZgy9bC9SoiujBldQysN4ZTvBE/PN5o9gz0qq7Lp2bwRxDqfSUjeDzE6/on08yM9k54bT0s8iN7oO/O0PtRRcatM6Ga9KkkJUkEwqDxHjIdfRFB/OoU29ZRc+OJ9e/RdxO/wBQJ+E8HSadviCPiIGe2tEprsIoRd5wowMnie+emEjf4gh4MPGeHuoH2s6cwfZIFzb0ailHIKtxV12lPZkEERcPmR9jdmBpbzo/0fU3+RRT202KH7qnHumjr9EluTla9dR80lW8Dsj8Z3CLjiD7pMpuIHBjotsF8+vWz63VfwntOjrRY41qv70D8Jv9IAGsx9S/7RMgbZXIHZ8ccpRoP/T7RP7Sr+/H5QOj3RXz6v7/APtN4bqpv6h4jG5jkc+HZ+PjlWu+QNg7zg8dw63W2uBG4buO/MDm6vRvoojdUrL6/KAj3rOu1e1ctLRcUEVTje53ufb+Uw3XmN3H4T69xiQb6gAG6vA7j6zvIPuPjJs0ei7gvkdhQ/xDPuzN5AREQERECn9bKeNJUSDs7FNyC24bSl/dnZ8ZkvdIrUp5G52qDbphg5dwpVGptnGzjOeY9s3Wu9kBe2rkZWotemQMAltgMoBO4ZI5+ucpq5b0XqFNhEJbIqAlmBBXzyCNvzT1u0nAA40c3ptgaeztAlGwdk52NtT1dxwD1BuHDtO+WxoC+8tbUap4vTRj9YgbXvzKv1y20GyxVhtsFfGHzTyjpUxuJRiRkcdqdb0c3+3Youd9JnQ+xtpR911gd1TKHzkHw+EkLbpyZ1+q5mlB7G8d09q7Dhv7t/wkG4Ns3o1n+1hoNKsODo3eMfCav5W44zMmkTAlM9UcaanuMwtcr6VNh756TSczLpFTxgRQyNwbB7DumOrSxJzvSfiB7JHdANwbK8u0f2gRkG+UfpKmbnSFcDjUuPJgjiApCt4ADwl38DKc0Kn/ALi+TgC4rkns6z7/AAgddb6TS1u1o8PJKiunIJVVVZceoimPttIF2/kbZ0zkU7ZKKnt2nqfHySD7U1OkatO5uS/XSqGYEPxqJnGQd2crvwcEHhmTrwtgoch6Yz116u0uWpuAPO3uhC8iwzKjVNalLdVd9qvbBXZcE+ToOwUUS3MqzBgOQL8pp3uzbXNK4TijK2BzA84e1SR7ZutD1lcvR2mz+kR88XeojqXJPE58MDlOZ0hU2kX1YlV+kLeqGAZTkMAQe0HeJJDbszk9QbvylhbtzVNg/wD5kp8FE3Wmbs07as/zKTuPsoT+EyM1DTtopKNXolwSGBdcg8xx4ydTv7duGyfqkH4Gfnyze12dmrRVmA3NvBJ5ZIPbzm71n1JpW9FalA9YEjaDklzlRgLvwdpiMA8Fz2iXBdDCg3LExNa0uTY90/O1tVulOFua1Mjltv4Y2ptbPXHSFuw26oqr81wDkc+sAGB8YwXe6Y3ZB9YnF6+6y17EUzTpo6PtKzOSMON6gYI5Z8JvNXNOJeURVTdv2XQ7yjjip7eIIPMERrLolbu3qUTjLDKE8A671Pdnd7ZBW9PpSr87em3c+PwkgdKtUcbMeyof6JX95atTdkdEDoSrKX2SCOOQWkdkHzU9jg/zSiwqnSa7MW+RHJxn9IeW79nPQ6UKg4Wi+2of6ZW+yPmr98fnPRUfNX7/APeBYbdKVxytqQ73J/ETE/SjdHhRtx3sT/POBCjsTxb859yO1PBj+EDtW6TL0+jbD7LH+eQLjXW7cf8AyQufRpUxn2lgMewzm6YBIAK5JwAEySfVkTeW+iq1VkpBquarKiglUUbRAzsKzZAGSeG4GBcfRutTyFIu7O1RRUZmJJO2obieQyBjulgzRav2yoWUegqgDsViSN32R4TeyBERAREQOR6R7NntPK0xl7V1rqMZBVMhwRzGwzHHPZnBXDBwLi2QKjmmvVA6mC7VAQOGyWUesDdul0MoIIIyDuIPOUjrpqJc27s1pTatQqEkIgYvS+gyjz0HI7zjceGSHJa6X6VLh3TOyzljk5y53uQRuxtEgEcQoMj6s611LLaVEV0chirZBDAYypHq9R4CRLjQV5nrWlyO+jUH8swpoWvtDbt64Xn+jfPdvG6UXnqTVq6QtvlBQUgXZUBJcOFwC4OBgbW0v2TN42g6w4FD3Ej4iVQmvt9SRKdNDSRFCoopgBVAwBvEhV9fNIt+ucd274CQW8dHVx6B+ywPwMwtTqDjTfvKE+/EpetrdftxuKv3mkGprBdHjXqffb84F4eW7R8R8J6FUev2H8wZQj6XrnjVf7xhNNXK+bXqDudvzgX4HH/Bn8p6D+v4j4ZlGUtbL1eFw/2grf7lMnUdfrxeLU3+tT/pIgXMXzxIP/PWJWdvQCaWqI3mtVbhkbnTaG/vIkSh0k1x59Gm31S6fEtIdxrILi5SsKXk3ULnD7QbYOUPmjB5eEDdaTt2S4JqXLikWxTpjDs5z1iA3mU1HnMTyIElXihWNVajddFc7eWAxsrtsU35Zd5x5uDx4SHpLQ711NRQVRjTQVGILOrsMvu81QDuG7HPhJBvCHoMAcVfLYTiGw7uKePWm2o9ZWVC2uKlIbXyRGUkYqI5ZQh9Pic4yTke6V7cnq+EsbTFq9klR6LA2V1RJpqSCUq1MhlUHhs9Y9mCOcra5eIq7Oiiqg0emSSdurn1dY7vDB9s7O6o0Lim1FtrYqoyNy3OpU7+R3ymOivTIRqlsxxt9dPWwGGXwCn7JlmC6xzkHIXfQ/XBPk7imy8ttWRsesrtDMw3OoelyqqaiOqY2cVjkY4bygO7vncDTGx6ePtR/wBTAfrR4iXRWlxqDpPnbq/PIennPeSDNfV1H0kONpV+/Tb4OZbq6z54PnuXP4TKusLngrnupsfgsaOL6NdAX1vVq+VoOlN0GdsrvcN1dkA9hbJ7pYDUHHonwkUaec+hU/dP/TPo0xVP6qr+5f8ApkGk1m1MpXh2yDTrYxthSQ4HAOMb8dvGcfW6L7tThfIOO0ts+4rLOXSdc8KNX202X/cBOM1l6TWt6rUGoVFZcbQKqp3jIxv3jB4iXRyJ6K7/ADuW3A5Zq53TJT6Kb88TbD7YP4SY3Sgx82gfa4HwEh1elKtwFFfvk/ywJNPoju/Sr2y92/8AlklOiWoPPvqS91Mn8RNFU6Tbk8KdMd+0fxmbQ+tmkLyulvSWntVGxuRsKPSY5bcoG8wOltei6ghBe/dtkg9QKAcb+DEzrtBavWVCoHDl3UEK1Rh1doYJUDcCQSMjG4kc5jo6l3R8/SGB2U7dFPi7N8JvrbVqmigM9RyBvZioLeshVAHsEgk2oQVDskEtvbB2sgZIJ7ME49s2kj21qlMYVQB4k95O8yRAREQEREBERAREQMVSkp85VPeAfjINbQVs/nUKZ+yB8Js4gcxc6i2L/qAv1SRNPddFtq3ms6+BnfxAqa76IvmVlP1gR8MzSXfRTcjzQjdzD8ZekQPzhd6gXacaL+wZ+E01xq9VTzkYd4M/VExVKKtxVT3gGB+T30a45GY1oMpBxwn6juNXrZ/OoJ7Bj4TTXnR/ZvwQqfUYFT6vaw7CeRdiKbMN4GSmT1t3HHPv750RtLB6Kbd2ym3rF6bIVZmUEsg4ccvg890y6xdGDqpa1JLjgMjDeogn3zgbzRF/TyHtLhfWKTEfeUEe+UZNZtMeUIRchEzsJncpY5bA5DPAchgTlKj5ki4o1AcMjg9hVh8RI4t3PonwlHhSc7uPaJL+VP8APf2s35zytsw9E+E9fJn+afCSj4LlvnHxmVNIOvB2HcTMfyV/mmPkr/NMgn0dYLhPNquO5j+c2FDXe9ThcVPvGaH5I/zTHyR+wwOvodJl+v64nvAPxE2FHpbvBx2G71H4TgRZv2T0LF+yBZVLplrjzqKHxH4zndc9c6WkVU1LULVQYSsrdYLx2WB3OueR4ZOMZOeZGj2mRdGt2QNPiJvF0S3YZIp6FY+gfCXRo7ajtMA2QpIyQu0QOZC5Ge7Il7dHT6LtExSqE1XAD1KqFGP0RxCrnkD3k4ErS30FU5IfCbez0BcckbwkF9UbhHGUZWH0SDM8qTRmgrwY2Q48ROz0XaXi42nOPpHMDqImKltY6xBPqmWAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgeSM8ZhazpnjTQ96qfwkiIEB9D27caFP7i/lI9TVy1bjb0/YMfCbeIHPvqfZn9SB3EyO+o1mf1ZHt/tOoiByLdH9oeTD2j8p4PR5a/S907GIHHDo8tfpe6e11AtBybxH5Trogcumo1oPQPj/AGkhNULQfq/EzoIgadNW7VeFFffJKaHoLwpL4SfEDAtog4Io+yJlCgcAJ6iAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiIH//Z"),)),
                       Positioned(
                           top: 180,
                           left: 12,

                           child: Text("C4",style: TextStyle(fontSize: 15),)),
                       Positioned(
                           top: 200,
                           left: 12,
                           child: Text("Alpha Romeo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                       Positioned(top: 220,
                           left: 12,
                           child: Text("per week",style: TextStyle(color: Colors.grey[700]),))
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 250,
                   width: 200,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                   child: Stack(
                     children: [

                       Padding(
                         padding: const EdgeInsets.only(top: 15,left: 110),
                         child: Container(
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey[200]),
                           height: 20,
                           width: 70,
                           child: Center(child: Text("weekly",style: (TextStyle(color: Colors.blue)),)),
                         ),
                       ),
                       Positioned(
                           top: 10,
                           left: 10,
                           bottom: 10,
                           right: 10,

                           child: Image(image: NetworkImage("https://imgd.aeplcdn.com/664x374/n/cw/ec/20865/amg-gt-exterior-right-front-three-quarter-60800.jpeg?q=75&q=75"),)),
                       Positioned(
                           top: 180,
                           left: 12,

                           child: Text("Benz",style: TextStyle(fontSize: 15),)),
                       Positioned(
                           top: 200,
                           left: 12,
                           child: Text("Mercedes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                       Positioned(top: 220,
                           left: 12,
                           child: Text("per week",style: TextStyle(color: Colors.grey[700]),))
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 250,
                   width: 200,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                   child: Stack(
                     children: [

                       Padding(
                         padding: const EdgeInsets.only(top: 10,left: 130),
                         child: Container(
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey[200]),
                           height: 20,
                           width: 50,
                           child: Center(child: Text("weekly",style: (TextStyle(color: Colors.blue)),)),
                         ),
                       ),
                       Positioned(
                           top: 10,
                           left: 10,
                           bottom: 10,
                           right: 10,

                           child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4fxUKoEJOefcq6OyILTch2Nl9ez9KNIvM0w&usqp=CAU"),)),
                       Positioned(
                           top: 180,
                           left: 12,

                           child: Text("Discovery",style: TextStyle(fontSize: 15),)),
                       Positioned(
                           top: 200,
                           left: 12,
                           child: Text("Land Rover",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                       Positioned(top: 220,
                           left: 12,
                           child: Text("per week",style: TextStyle(color: Colors.grey[700]),))
                     ],
                   ),
                 ),
               ),


             ],
           ) ,
           
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("TOP DEALERS",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)),
         ),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 180,
                   width: 180,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                   child: Stack(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 20,left: 50,right: 50),
                         child: Column(
                           children: [
                             Container(
                               height: 80,
                               width: 80,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow),
                               child: Center(child: Text("Hertz",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,fontStyle:FontStyle.italic),)),
                               
                               
                             ),
                             SizedBox(height: 10,),
                             Text("Hertz",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                             SizedBox(height: 5,),
                             Text("174 offers",style: TextStyle(color: Colors.grey[700],fontSize: 12)),

                           ],
                         ),
                       )
                     ],

                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 180,
                   width: 180,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                   child: Stack(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 20,left: 50,right: 50),
                         child: Column(
                           children: [
                             Container(
                               height: 80,
                               width: 80,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                               child: Center(child: Text("Avis",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)),


                             ),
                             SizedBox(height: 10,),
                             Text("Avis",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                             SizedBox(height: 5,),
                             Text("126 offers",style: TextStyle(color: Colors.grey[700],fontSize: 12)),

                           ],
                         ),
                       )
                     ],

                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 180,
                   width: 180,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                   child: Stack(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 20,left: 50,right: 50),
                         child: Column(
                           children: [
                             Container(
                               height: 80,
                               width: 80,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.teal[900]),
                               child: Center(child: Text("TESLA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)),


                             ),
                             SizedBox(height: 10,),
                             Text("Telsa",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                             SizedBox(height: 5,),
                             Text("184 offers",style: TextStyle(color: Colors.grey[700],fontSize: 12)),

                           ],
                         ),
                       )
                     ],

                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 180,
                   width: 180,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                   child: Stack(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 20,left: 50,right: 50),
                         child: Column(
                           children: [
                             Container(
                               height: 80,
                               width: 80,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepPurple[800]),
                               child: Center(child: Text("TOYOTA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)),


                             ),
                             SizedBox(height: 10,),
                             Text("Toyota",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                             SizedBox(height: 5,),
                             Text("116 offers",style: TextStyle(color: Colors.grey[700],fontSize: 12)),

                           ],
                         ),
                       )
                     ],

                   ),
                 ),
               ),

               
             ],
           ),
           
         )
       ],
     ),


     bottomNavigationBar: Container(
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
       child: SalomonBottomBar(
         currentIndex: _currentIndex,
         onTap: (i) => setState(() => _currentIndex = i),
         items: [
           /// Home
           SalomonBottomBarItem(
             icon: Icon(Icons.home),
             title: Text("Home"),
             selectedColor: Colors.blue,
           ),

           /// Likes
           SalomonBottomBarItem(
             icon: Icon(Icons.search),
             title: Text("Search"),
             selectedColor: Colors.pink,
           ),

           /// Search
           SalomonBottomBarItem(
             icon: Icon(Icons.notification_add_outlined),
             title: Text("Notification"),
             selectedColor: Colors.orange,
           ),

           /// Profile
           SalomonBottomBarItem(
             icon: Icon(Icons.person_outline_outlined),
             title: Text("Profile"),
             selectedColor: Colors.teal,
           ),
         ],
       ),
     ),



   );


  }
}
