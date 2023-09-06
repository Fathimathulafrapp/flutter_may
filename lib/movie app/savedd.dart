import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: savedd(),
    debugShowCheckedModeBanner: false,));
}
class savedd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text('Saved',style: TextStyle(color: Colors.white,fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.only(left: 320,),
                  child: Text('Delete',style: TextStyle(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 15,
                            left: 25,
                            right: 25,
                            child: Container(
                              height: 130,
                              width: 100,

                              decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  borderRadius: BorderRadius.circular(20)
                              ),
                            )),
                        Positioned(
                            top: 20,
                            left: 30,
                            child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              child: Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpeW79HAXXcYsBjSBF8IennzdyN4C7WVl3nQ&usqp=CAU") )

                                ),
                              ),
                            )),
                        Positioned(top: 30,
                            left: 160,
                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 150,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Captain America : The",style: TextStyle(fontSize: 17,color: Colors.white),),
                                          SizedBox(width: 110,),
                                          Icon(Icons.more_vert,color: Colors.white,)
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 193),
                                        child: Text( "Winter Soldier",style: TextStyle(fontSize: 17,color: Colors.white),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 195),
                                        child: Text('Action, Adventure',style: TextStyle(color: Colors.white60,fontSize: 12)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                            top: 95,
                            left: 150,
                            child: Container(
                              height: 30,
                              width: 120,
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.redAccent[700]
                              ),
                              child: Center(
                                  child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 15,
                          left: 25,
                          right: 25,
                          child: Container(
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: BorderRadius.circular(20)
                            ),
                          )),
                      Positioned(
                          top: 20,
                          left: 30,
                          child: Card(
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTExMWFhUXGR0aGBgXGBkaGBgaHyAYGBgaGh8aHSggGh0lIBsYIjEhJSkrLi4uGCAzODMtNygtLisBCgoKDg0OGxAQGy8mICUtLS81LS0vLS0tLy0vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAREAuAMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAFBgAEAgMHAQj/xABBEAABAgMFBQUGBQMCBgMAAAABAhEAAyEEBRIxQVFhcYGRBhMiMqFCUrHB0fAHFGJy4SOC8RWSFjNTorLCF5PS/8QAGwEAAgMBAQEAAAAAAAAAAAAAAwQCBQYBAAf/xAA6EQABBAAEAgcHAgUEAwAAAAABAAIDEQQSITFBUQUTYXGBkfAiMqGxwdHhFCMGQlKi8WJygrIVktL/2gAMAwEAAhEDEQA/AOIx7Hkb7NKxFsQTQlyQA4BIDnazc4cOijS0xlDALokBDG0SiutQrfTMgO2/6xTN2J70IE+WpJTiKw+FOYYvXQdRA2YiN3PyPr78FIsIQyMgIPf6bZ3bvpY343HlJfg4CdrnIipq2u7paSgJny1BZYtXu8g6mcNU5E5GCMxDHGhfkVFzCELAjZhgzLuWWS35qTUPR860Dts1Y1EXv+HUKfDMQAGqDifyuA5DHpyrEv1MV8fI/UBeEL3bBLaZcbBKMHrTc6JYdM1KzsDvoNQ2vpFuTcyHLzUKq2ZHOtacODx04llX9D9lMYZ2xQCXYitsI8Ro206QSXKHeYR5AO7B2jVfEqdfEwzWC4QHWlaXyFSznLOtA54gb4yTciC+0ZCoBzqCAdg6xS4/Gtc4MGw7OJ+w271oei8HlYZTufp9+Pckv8qUltQfURjaZbmG223UMSCCGUcJOgIpUvqGMajdcn30/wC4g6bRo/oabUxiRunH4cAUNkmzJceCXDEm7UFawVpAGRJYF3PEgM2T1y2WZlxICMYWgJOrqL8HFTwg3XtGiUMBzUlTu4xKIZUXfJKXM1G5JJSQ1Ks+fPKKtrsMpKSUzZZIcsCSaaVLV3Od2zombdfQoTmAGkAIjAwZsdglqPinJSB7wwvQkHN2yyeMrZd0oJdE1BIBNFA4iGoA+Z+jPVida0Gku5qBER4RBixWKUrzTEAV8xKSGA0zLuw/aYpW2SlK1JSoLSMlJdjrR60y5QQPBNIZCqCJGzDHkStcyqrHoiNGQEWoCqlukgJV40kgZh2P+c4I/kEzEhUtaAa/0yWUCNnvA7d8CwItWbEC6c4M29ghu52ttruubKVhmIKVbCKxoTKOTGG2xrtKwEzQpQIp3mIuNviL83i+btkpLywSQHJOSTsG2C9W4CyKXIqk0BvuS5ZbFgo3iOf0H1gtJsKj95RblWUCubZxdsspSwUjN35boWkeBoPNWsMJAt+3AD1r9VSkXeKAkqMMVz9nu9UGFeEF+zXZpSlJUoDC9aiHuVZUWaWSGS3tH5RWYjFNZdHVMl7QMoGvr7qvYez9mkpCVJClavUkxnOs1mSR/SS53D7EJvaa+1lJKHBOSiW3ZQnXZ2mtsibiMzGk0UgvhI+ur7opTLLLbgAPiUcYZwHtPN8roevBdXt3Z2zTBROAnIgOOUJt9dhpqKowqByqPmxflDbdHaJExCVJyPmQrQ7NnA5aUhrlkMMwCPvgYjC0P94169airXBi8RhavUdt/wCVwr/hSc7zEd0h6rWQE8tVHcAYyv2zy1qSiTjUmWgIQ+QTqd5JqdOMdTv26ZAJmrSsq/uWDxBPoCI57fM0q8KUqSnekJfY4HwciJvtppW2GnbiKfR8qH1s+I7t0nWmxITmok6hI+ZPyiubFKWkkEoIzDAwWtNlrUHJ9nyihabOlqYnggf2ozohvQQhMiRqZvRLH1pGM2zpUyUBTk5Eg/AQWkSUYCCnxPQ7o32lBlyhhSmWWPjNFKBphSBU/uy3wQP1Sr4gG3olSdKwlo0mLU2NByhgFV720VraPY8Jj2JISpARsQmMkS3i1Z5TxoGsWfe8ALGRIJ+/jsjonZi6LMmSZkwAsxCqlatWSk0SMmKthcQl2SyKnzUyJNDqrhmaaD1LbYcrSLOlQEtBmzUAJBJc4k+0oDwy6jj6x4uPuxnxCC6nH2vL7o/aJ6VoB7tAltUoS6lZgAHPPgAxgDa1BBKEVDZswGVBt4xdm2tUiQsTVJE6YQUgByzg1BHhAA6tFKwWWZNViNSTprE2uDGEE+vH6IkJPWAgbeuCuSLt8Acs7Fm3HPrDN2Z7NBRxFXhGf04xZsVxFsa2SC2IKo1AARrDZd8tCJIEsmpABI1r984psS97WOcFdukBAAW6TYh4RkkZDQb1b90BrxtJtVsl2dJ/pJ8S94H1MWL3mqkoYKJUuj6sM24n4QI7NnDbMLeLArEdBuHCgJ2gxRXb8hG517eQ5euykxGwiMy3sDl7OZVHt9YwFgpACcmEIk9CRmQOJAjLt9abV+dKHnYSrwpUohwSwZO+KHam7lBYCQ7HCqjs2cNxjQKGw7kVue2qStpaweBy6Q63H28WCmXODpcpJ1cVzO4gNujm/Z9U8KTjSkAZFmPBtkOlgu0TFKSWdZxo/cHBHMEiFp7Y+28Qn4WslhPWC658PqurSFpmIBBdJyIhc7Q3VhSShCeLCPLhnmSAly2w/ecMSpgWl8wYkyVkjKO4VWA7DS2NQuNXhYluSQXOsCDYypWFIZzmchxOyOwXndJW7BxsGXSFW8LoTLBUU0To9DAyMuoWhw2OZIK4pNRdyUeJagwzY57Qdnx2NmF++baqbMZKTokAVO4DfXIU0Ahit9ln2hbBOeSQMtm6PbY12ynZMy2qogUUmSmoUpW1RbCBxzDweBpeULGPELczjrWg+3Lv34ICOycyWjvbWfy8s0SCMU6YfdlywXfepgM9DAG3lGIiWCE6YjiPMgAPwDccyYve8p06YVzlYpiqE5BIPsIGifi0ACIa02Cr8r6zO0vhy7+35fLWREjMJJLAOY8iQBOwQyWjdaJYghZnZgWfP+N8UZcXrLSNMwDZZeUo1Y56AlSQjuhhZKkq8W1yWc58OkWbNeYljDLQSdqlU30DesC5YpBEpkImJChMAISqmEguH3NVxkcoHPNFhw3Npeg0J+AH0XMNhpsSXdWLrWrq/PT4opY7OFPPtC8KXqTUqPupHtHcPQQRs3alCEvJSJYchyxWdhJyBOwZbVQm3ii0T14u8llIolKFYcKdEpTMw8yHJOZjFBmJDLlFI/Uk15nMnbC0U0UxsOBPLj5b+YVl+lkioSNI8689viuq9m+0M1ZBzxHIijatHQZEpHd0cOQWzAqCGjjdzWkBSUqISWo7MNW2jlHWZVvQmUkYiaOWHxMVmOflaTzVpNGPZa3fsW+eEYsQSVqDs/lBzcwt3VMKbfhVTEFJchnLOAnYkNTiSc4YbHO7xJwBhC3bp6JE9Mxecqrk5BTgDiQSW2YYpmv1zDZSjaadHxqu3byQa8Mf54nuzMWkkpG8AlFTkHasK0xc3vFBSQanxPUmruP5jqnaKyKKVKlqwJUg4loDzFZMlByS/vMW0rUcrRdUxJJUVpP7nPNw0MMPDkpx09trZLNRFu8LeZeBSCQpBBpsc09YrpThDk8zFG5km12lSU1SCG3tTpnAX/uGzsFYQARsPauk2G+kWuUhZ8EweYsWUabNTDPds4YfMFA7DCBc12LkT12dbhC/KToRVPxKYcZV3d3LxA5V/iFxZdbd0jiI2Bobe+3LXkjSkDbCp2rneEjC7sz5PlB2Ta1LYlNCPvKKl8JC5eFQqNufIw4yTMdQlIczHArkVqvecjvEyy0xynGKYE1fAwoo+85IDs2YAptU5RTiWoy5bUJowJIHUmmrniGztFZAFqwkJB8z/b/M7hSFe1LSfCHwjPR953mG+sDW6J9uEMj8xv7+vghlrmOpwGiomSTXICpJyH3sgoLJTEuiTk2avoP1GnHKKNomFRZmSMgMh9TvNYi1ob73l64IkpLzp+PDt+XFaZiwBhTlqTn/AAN0eRrWI9iWYlL5AFWliLUkxXQItyhGoaFknlX5CcTD7G2MvzaZ0tKk0CFGWNpT5kE7z/U6RRvGf3cphmun9o83Wg6xr7OzCe9ln2khQ4oL/wDiVxXdLuuKh/LTj8vgCSn+gxlxOY7G2j5/9gAPFFrJIUrJJLbA8F7MSgUKgRo5HUQOs8gkKS3mSQOIZSfVI6xplWqclCSiaCCSMKjiZmqpJcAVz3RVYXo1+MY4scLB2I020N69v8p2vitLi+lG4F7WyMJDtiCLviKPZrdpjRawVYlJBO0Bj1DH4w/9kLVLmoUg4nIYAV+Osc7uO0gq/qpSNhFBvJZxTY0OlzWtMuYrCslmwk8c/sRGbA46IFjgS3sJcPAWD5BSdicHiY88eju6jfbX1TxJWmzpqHVoPr/EKt+3PNtUylBixH9ROvADKGVFolzMJVQjZUQasoSagCFGYSUjUU0Kt6/qiXVbjula47HaJcpclRxBKfAFbK0fYNI5ne1tmpWtOrmO72hQSCo7PSOG9tlCTPWKEqUpSdmHN/Vhz2RF8ZY4DvTOClErnEga1+fuk++LZMLhSjXTKGH8KpuGcCSGeFpYxEkpcqBAfTVx96we7IS1SVJJSWxpcgVGfi3igpuiUjg2MgJ1sVye1tR/C7NfVlEwpUPMkOCPaGvSCslZKBv1HLOBN1WqWUpStQr5TkNnL+IMC1SUjCFNvgeFGYl90qibMAIyCa204LVZClILCg3b4H33eUoYUpAUTTmaQXmJDKKS4Y9chCfbbEsqLUdyTkBnmRlxixZhi4UKXoOrLi9/D1rxSN2klrUvIgHyirvkRvP1gUbGJYKlgKXk2YH7t9PLlt2Q0XmoS/CmqmrMOZepw7BVnzO7KFu2yqQBxyGtzz/HqlpI4zIwOdoK24+PLu3PGtQQs5RUSVEknUxRtGwQUnyeXxPKKFoRsjmXW3IMo0oKgeDxI2KREieetqSZj1VFEW5MVUCLcjSNa1YiTZVL2JVMbRICfmfjGV0TAidLUcgplftPhV/2kxFl1K/efjHolCB9SyQnNsbHnp8kaKZ0TRl4UfHf5pylysKt6VfAwKvCxYZykJyAcHa9fgRBaUvEEr95APMeFXwMX59m8k0AOpBQQQ9QPD6ERSdASOhxb4X8QR/yYdv+/itR/EoEuDjxMfAjyePvlQ26LFNcBjXTOHW67ExGJjwOuwxVuqW8skBlKccANOZfpDTd11EAEl6DIU3ekaHEyXvoqOCcRUOJ4b6f4Ri6bIkAABzxpBeSpjToIpWdAloKlFgKk/wIA9pe0hElZstD7avaQNu7edIpJXgE8U3Gx85046XwWH4hdrBIwolKBUXCmYtuO+hjiF42tUxZWpRdRJKlVJ+6Ruvm9ytRJL79f8mBE0k4eFBrCDzmCfw7Wx3kN1pfPmjd3SVEEhlgDzJIoT4a+7QnPbBi4rSqr0OFWZq4BakBLrsVoly5i+7UErCQTUVcM2/KmdeMbLnQfzLKWSkqIc7C4f1eADDmYurgnIsc2J2u5058+aZJV8mUoFSXZiATRyxdhn1hyky5k1cqaThlLQlalZBOivXLa4jlV8zAFkAksaE/eUdVuG0gWaVIWcSDLSS1VIKwFBYOoBVhbdvjjsI+MW4fZexOOZI4FhF6g8/LbT12lZd54VgpV4XYHdo8HrXZhNluKAioEIE+zLllaVFyMJQQfCpJo43MRDV2ctym7tWop0cekWEThk03CUxcAaBJGfW6Xr8u8MFO30OTQqW5AHl6a/xHQr6kghTvoAeFawnW67VbGG00/k8oC6PX2Vb4ee4/aSjaEV55xRmyq5fWD1qkoS5JxHp/J9ID2icchQdOpzPOAPja024+CkXucNB6+aprszZnrn0iR6UxIHnby+f4Q+rv1/lBEGLMjMRnIu0j/mKCf0p8SugLDmQYJSMKf+WivvL8R6eUdDxjQy9JwR7HMez77eVnsWRh6GxM3DKOZ38t/Oh2odKu+YtRIT4XPiVROe00PAQZsV3Sg2I4zsT4U9TU9BHiBMWrVR5n7EWkLlo8y3Puo8R5nyjqeEVn/kMVO7JCK7G6nxPDvAb3q6Z0TgMK0PxLr/3aDwaN+7XuRWzSxQAAAZAafMwbNheWAQXcEP0LekLEu9FmiEhA2+ZXU0HICGG5wSQouTqczzh3BdFTxSNnldRButz22duJ4lJdKdPYaeF2Fw7LbQFmgBVEU3fQi9a15pnuO7iuWlLMRl8SYawpMiW5GnhG1hrFW4UJIS2etPhFm+lJdzkkM3390iHSGJcAa5qswMYkIc5cq7U9o5hKhiLk9PvTZAayT1oQVqcpIIUnU4kqSBFu9ZQXaCycVTkWO1zpRnMbpc4SEqnGYh0jJlHArJ9ADsIJ3Rnf1DrHNazETMEeRuiRLPYStTqISgGqlZPqwzUdwBhlu6VZ5SndMse/NGKYf2Sw7bipxwhWtF44iSgnNgdg0wj2RuEXbnswWpyeJi3hwjpTchrsWfxOOyDLGmW87xlTAyEzJisu8nKOWwIBZPByNwgGmzkOobGPox+90G5shCRTOBU4tzzi0GHjhb7I3Vfh55JJLPC0MvyeWBPmbOGHsHfiycKjRCSUnY3yah3QvXjJK5mAVfLfoILXFd4ly5SlFj3pTNbSWQH9AYWnkDabzCtooi8ucefxHr0LXW7vkpngIIoScB9xWZlnak5j/MFLZZTLWlSfYwgbWSwfm0L/AOFveEKC38A5HPD003QdvK1KRPxEApev04xWzRmInJr9kaGZ7nZSdhtzP5W2/lEeUMNuv8Qj3qs1cx0u8EJmSgoagGOeX3ICVEOOdPXKDHMW38k/0ZMzLTtO/wC6TLdKOcDZiIPW2QQagwJmytsIvN6q+MYCHqEexdTZHrHkLl4C4IXFBbNKcsGHEt/ngKxjPvRMslIQpSh74KAP7fMeojdLlOHSy06lNW4p8w5gRuDKASoBSdig4H7dU8mhxjmNf+62+y6PrssKreyV8f7L6PPceu3VC13hMmUUo4fdAZPQUPExZsyYs/6RLNUKKDsVVPUVHQ8Yn5KYhioU94VT1FOUabAYjDyUyIgf6ao+Wl94tY3pPA4uIl8wJH9Wrh58PGkcuqUGqpjpSHW4pXDjCRdMxJId46H2em4cgBy+sWOIsNWaY0l51TfdEnBrUxznt12y7u2mT7KSx3n2vpyjqdhKZnjG5w2Rjg343XZ3drM1PtFzzrGXxVPkbmWtwQ6tprXRYWu8DIUss/ekATNAgkFk/uZj02wC7WXse+my0t3Z8JpXiK0y+MU7BfRXLFnmeJCiw95BydJ04RrvixlMwuQpKq4h68IEzCsbJ1gH+fwAmJZC9umxVCxCrZuIMWCYfZzYnkM4DoQpJ5ddH6QXuu2pAAAxF26trplpWG2ykH2Ne3ggjDCv3dOzj+O9Epc0mqj1+3PKJOnpBAeuzXkNOJiiolLlamO1PzOfMNw1HsxnBQlhmA7jfXaYJIXO31+Xl97U8O+OIewK+fn9gEYs0szLQkMGwpIDjQhKuesXbfZ1S5SrNLSSuZNBUQMhol99Iz7FSSq0S1YSAFOXDsRX72x1u6bmlMQUh5mIqOrCmfEg8oSJAlAdqnXS1GSEn2ftJLssuTZ5agVBhMUNVMKDcHI6wSvG0iZ3a/01YtUOHL5l45x2wsKpM9TZy1qK+tDwo/OGNN7d7YgtAcpOKmYyCxvHlP8AfDE7WEEDb7/lLROcxzX8SunXMs/lkhRyo52Cum6EbtRNStSiNtM8oO9hrwlzpCpSleMVKRmAW+mUAb/lSypQQSc82bq8ewQAbZO3HguySVIWAG3HgPHgEjTbeqWWSS2w1T0PxjD/AFqWs4TKUlWhlut/7S5HJ9YvT7qSS61YtyaDmTXoBxjOXLSkYUJSgHNixPE5nmYhjsZhSCA3MeY0+O58iORCtei+jOkWHMX5G8ne1/bsPMFVFSDlu1+b1B3GPY3qlkByyRtLh+Gp5RIo2YeeYZo2Fw5gEj4ArQy4zCQOyTTNa7kXNB8iVz2zkguCQRkRQjhBiRby7TEYv1eVXVq8wYDS1CLctddvGNrJh4phUgB+ncdx4FfM48TNAc0TiPXLY+ITBKwq8igTsV4T9D15RvkqUk1xJOzLqIEWYvQjnB+7gpmzGgIBHLZFdJ0AXgmE+DvuPse9W0H8V9XpiWWObd/EE0fMdgRWyIQQklISdVIABfVxl0bOGS7EkZHF8en0heshSxZOHLg+7Ua7YL3MSVD7rp6tC8eJxmGk/TymzyJvfajv8eyk9N0Z0X0jAcZCK39poLbre2kUTdgmtTsaTzcFpId8mJPIOYR/xE7ufZsftA8d8MdsnmVZZqpZq2Dg/mPQGBfZW5RPss1cyo04/wCPjAukBnmyjgkejv2ohIedfdfPrMpTaZdR8nhluaUmYma+ktxxwgfAnpGXbS5xJWSBR1DqxHwVFa6lNiA90P0A+cFafZUA2pgDsT81RtCApSn9nCCz5AJSqnrG+yWFQOxjXdv4ffG3YrGFKWTkVkciSPnFmQZtpTLQgFwrADuOQL6MPQw0xo4JFwPvO3K1XhhVhAU5VTn83ixcdgWianF5X+/8Rsk3aibOmIQKIpi9kgeEEE7SNdsb5lrMhQluFJDauQczxERlOhtHgabFc/PuXRuxkxCVrQkAhTCnsn6R0KySQlRVuCW2M5PUn0jmn4a2NYXMtB8pqNh2ND/OtvdqCdgrvOZ+cVuHbnkNJ/ENs01Jf4l3GDORaK4Jg7ua20DwniRT+2EDsvOTJnrkLdUhSiN7BxTYWJDbW2R2622YT5a5KvKvI7CGKT1jgCLZ3NpUVoCnWoF3Yl3enH0hlxp2U8VBseZhbeyfuxt1/kfzFoUolL92AMlPXFyAcRpvGRMMwhyWPXhFm8b9MuzpdH9JSgG3NQ7jo/6YP3nIlT7N38imJOW9qpMLMhM8mRzq7d9e78hNwY84CN0jWZjW1gbdvC+4pImywmqlNuGfwaB1ovJvKgg7SxP8RLclTgLCU/uUH6CpjRJR7qX3r+SQfiYsXN6MwXvfuOH/AC+HuDxJcEm2bp/pf3R1UZ728tzrIf8AjTSq5M2YSQAdpJYDiTlEggEDWuzYOAyESFZP4lnzewwAdtk+YLfKtE9F/BEGX92V2bjWUD+5rj4krnMgxckK3QPlGLctUX7HUFl5Aj9ingNR/vfBuy2vkYVbJNMGbG6iBtPpnD8eI01qlUYiDMaAspoVMGFGRep02gZdecG7jWkTZbkAKJeoO4ENo59IWAQomtMhwenpDNcF1YpqVTFMmmFA86moo1yS+sY3Au/VY187zQ9p3b/S0d4G3LLZK+k4/DHAdFw4SM6+y09wOZ58Tp3uRztjJ/K3dOUogk5byafB4Ffhnapk2xrCKjX1aFX8Te1wti12OQp0YkJDZEpxAnhG/wDBO8VpnKkoJMtQ12bfvbEqMz3PO6qKMcQbQ9cPBAPxAWfGg5iYf/FbQvXetif2p/8ASHT8TbOEzF7ST8gPi0JVkPj5JPqiDMbRI7EGY6teOz6LfJtYEpR1OXMv8jF3s7aliTNCVEO+R1FOrEh95hclLeUATlX4D5wfupOGSCPaq+6GorsJOQh2tqhPlqLhyxz37Is3bYVqWjE5S4BOvDfBQlATUgK2Dxq5JSW6kRYuozFKR/SUEYgxUGHJg3qYBixQ0R8Bq63evFdj7NWHupaR7IGLc+kS8Ja1NhDqUotuEGqGUkDLCAPSAF9XsqX4JXhI8ymc7wH038YHgGEN9nU2nhJbieP0ClsvLBMRLcslnI1UPoQ3KFrtR2WkzHnoT52UGyCnIUPjTeItzLws6e7cFawDiVUMSVHmavBuROCLGTmCokPoQ33zieJjGQEbheEntgN7u9LQTIMg2e0EuSknCkEgh6VIrUw12CRJRISiWXTMDJ0Ljhq/xhDvJLrUMiCekZdlrwWq1SZJJwiYC28s/wABFW8usWrSXAM6kSsJvc+V6fRCL2sTTVEuz0ikZoGUHu16cVpmHQqJH+4wANlrU03B4Tl945lo4XExhzRuAfNaZtoiRvXYR+rmGj2BZmqREhXNUGLUoxVRF2RmGjcsXyt63pcmDtyuHXmoBhxNPg55QIlzGySB6wVlEiUilVEqVn+1P/uYB0hL1WGdR1d7Pnv/AG2mOiIOuxjLGjfa8tv7qTJdUslWIhwkOQNSMk8yw6nSGm1JVYrFNtVoHjmDChIzAY9Bl03xs7B9n0mQmdMNMasQr5UBJ+OLrG/tzakWhCUTlpQknE3tYTkG4RRYdpiYRz+X2Wn6Rm/UTtY3hp4357j4LjXZ2SlMu02xYUyUqQkDMrmApAB0YEl46D+EpTJlTbUsBJNEJGnXQD4wdscq65FmnWcoxso+E0eZpV8/COW2NtjutNlu6YZiQFKDpJyAo3WDCYNsqrcwmmkfklcz7eXqJ0xLHWYDxBSr0FYWrArwvrgHopI+Ubr5s6vzRkqUMXeZgE+cAKprpsirZgcBmMc+73VxLFdtIK2VoFk+ilJY3mSgNiqqFsg8hyqT8BB2XanlJlp4dIDSbONawXsRYinxif6xrOFqbOipJaGYD4rqPYzsuJaZVpQmYpRCVeJMrCQQ7B15b6GGbtJZO8SlYRgUVMolaHbMAVoIRrNbXsSVTMeILMtCiTV/HUnMVMG7hrZFgrSVYgtsQdKQcFdnmNIrJ53SbaHn6CtsL0eGNLidA7LVHnveb6dne3XDbceKWWxOSk4gcmpSFK/LUtMxacWR+xF27ZqApK3AKVaH2T4FZasx5b4IW+5xaEd6zTR4JgzBUKYm3wOIykhsbqd314WjtEGHlLpRbe0XR7tdO7ilWx2Lv5kpIVhxKAI3E1brDhaZ4mSSkBk4sAALhIIGD1SPWF9dzT5aklCgGYjSoLj5QTlIWmzTioeHEkkNUZinAkEcItmGcD97Xw+o0Skn6B782GcM2mgd4e6TY0IqgNkDTYFTDXzjMbWcU3hsucedn7rUi8JJ0d+j/SDlygTZyFhqEktkW8bji8GbLYglRmZqALasWVT0iX6dntWpPxjhBkvh90g9p1FKwUoCs3FdpUMiNPhCzaJs7E3drTr4QSADUan4wyTkpIWVKUHJJIDmjndpAS0WiVkDNVxLfNUV/S+HMOMcALv2tjx37PetH/hfH/q+jIyDRbbCO73f7S1UjOL1fm/zj2PJs0PQFPEufgIkVtdi0Yc5ISExalCNgkRdlWZ2+UbtsZXyd8wCxs8ow3WCWhRR4MykOVO2WxoH2CycoduxVwi0TKlghid8Tnw0LmZphYHPby4pSDpHEskLMM6i7eqvTtqx4J+s1jTKs4kDNeLZns5lkxxuTYp8+eZk4LV/USFlsgS2EaCgPSOh9tO0YlTMEtzMQtByowct/uw+sZIXIttnUtDIXjBmpT73iBUP3eLpGeIZK/I7v/C2eHMmHj60i82xOpvnz12BSqns7Pn2t8SRL7zFhSoFyWrQl4ZPxVvHu7OiUhjQqUdyWbrXpDRd13hCUkAAlIDbB9SwrHKfxAv8TFzMJBSAzbUeUkbX1EAnbXj91yIiSQH+n5rl1ovIrtInOxCkqeuaWrTWkbBeDialRWQteIFhm5qX2gxRVhctlHmKsHELTRKrXTvDjXNbwtTaCMphUfaPVvhGjG9I3vTwmuxTehgwaxupCgZJX6Bx7rV+47aoHuyot7LkkDcNkdV7PINoklMsf1UIIISPPLpszUktxG8V5FYpWPFRjlwOYP3shp7MXtNlgLIU6aOASFUBrhyoawliMPrmYLB5fPRXfRuPaI+qkcGuGxOg7jqN+/XvAT1Js01CFJUhQcKzSrZwgz2DvQrC5aqlqPq23l8IR5na2WsstBIOZQhCSP8AcC8MPY6wqmTFrs+IyxRyySxGoB45QmI5W04iq7/qnsRiYp2OaXNN8QQQPIn8o7ab0BUxcHeKRdQrHInIDeJL9KiPbdcbqKnGesEJNgT3SgFJJZqRbxY4yAxO+RVBJgMGyRs8JIN7bj46jzKB9irIpCJhPL5wQuiaRMU5GGue2uUYfmUJaWFEN5iNpYfQRpkWIpmBQXiQApfIjDxBplDFjUc1MmwbS12gSlMzFLDILsOJq+/5NCxMtK5RKUolgA5lCVEjioEwwXzaZeRXkSXyFdM90Jt9W9XhZnOZS24s++AdLtixETC0glpIIO9GyCQddCOW5Qv4abicFiJo8RE4MeA4GrbmGhAOosg3V7NHJS2z1LUVqLqOZ/xHkAF2pW0xIpRCQKC1ZxbeS1ybEf8ArSv90z/8RYRdcwqYTZb7O8mPvbwRZky1+7L/ANg+UFbBiDUQN4AjdNY08F8olnkbs7/r/wDKqXbYpgUAZgr7Qx4H2KcBnqeRjqvZNP5KzTLQou4ASNpMKVhlTVMkMXaobnHUrdcmOxiTiYgPlmQIVxr2sYGcymuigZpxK9wyjQ1rv4DguOX5eBXMVNUaqUwIrU5kbWGW8w5fhpcypNmmTVg/1VJwpP6SWfr6QIuHsgqfaQVFpcup1pmw0cmOkzcGEIDBKcgN2Q5ZmKKGI5i929rbdI4loqJnZ4Df1+VvmuuUoBTEpIfkQ46x899t7CuUqaipwKodoOkdwtd5CTKUrYPh4j6AxwTtVeakqUgnxzPGs6eJ1H/1Y7HiT2W+lXMkLGuHA+vqlLKIpUeLU5JjEwUJFE03La2cWeb/APWrI65RE3LasWHuJoUzsUkFqBw/EdY6NZvxmWmWiWLGk4EJS/eFyEgAP4dj9YEX1+I4tKwtUgoIl4KLxAnEFAt4f1a68XEHPsWPXmm5G4cNJY743ev+0IDd932kKrKWU0L0ydQBzyzyhh7N2wJE1CqJBJD7DX5iPf8A5ASU4RKUyy7OHoEozxZMkf8AcdwG3TOGbgnbvh3D24UqzEaGzxWVqmhycg+WpjrH4XWihG0fCORWkOS5aOk/hdaw4TqIWxjToe1M4RwyuHYmy1lJmYVYi5I0YN9YKWGzBIwILvmdh2RptCP6ijsrzzjXd9vEt+8zGb0aOwh5FEdysZ5QIs18lQtV34VlauLatA3s+mapcwOapV8KR72q7UJHhSHB2Zxl2TtwWSrykJru0hmRlNzOQYMQ57SQQdNb1St2ksYSoJWptutd8KVslyypkBSq8H4CGntHbcE4lBBU5BcYt3A5wo2mf4lKYDwkAHx1bCzGo1YnIxXyMA1Ho9ysm4hx0ICrTZculeXyiRRMtSjiOtd8SFSBe6bDydcit2a2zcZxpGE5MFOPSDFltVasx44oW5ClFwVHkWbpWL1iQtJcF/vN41LJCvnc8LTvS6d2LWDNTmwqeAEdMs0zEtWoFAI492UtyUFQWWxJKcWbb84e7kvWaFkLYoUaKSXS/wAuBhXGW598K/Kd6JawQkN960YTIMqiaJZRI2ls/vZAC1z8NHoaHjm8W7xvlWJRCSEpScJqAT5c+fpCHL7RlcxpjBJLBT0caF8ju10hZsrW+9x9fVWrmOe4HkBfjdHv0K0dub9fvJCSxRLf+4kPxbwesLl1yU93NtLYpg8pOgBQhIDFwwqWYkMHiheFsQqbMmKxErUdQ7bMssoJXXMTLllQTMZwcJKdh8TgeEsMtRnpFZiJC7Stz6CtIMO1pzEi6PbWm9dhr8bqjPWu14ErlpSQT40ufD4XzJyagdiVZakvetwAqkqSnCUFIIZvCCABXNjR9QUxbsF6S5gwhCgBUEkFicncM1Acm8Ll4P2CfJ8JKMtglpOxjhQN4aEZMQWa0QNU5+na4OvUnjx8z36+CoGzrWopUgKknDQ41ElkmoxEYan2RuLxYNin4Ww+M1AeYzOn9bvVWrQy3VeliT4TjApQ4NGG3dB5NrsRSVpxEoSQQGxAH2mPKoygQzHgB3qUrnRusxu1J1147Dw4DhrW9DkV5XEVImFfnUtytiwUlkpD18KQyKl6rNY8u2zlEmSkhsOJxynvQ0jos2XYVoJSimVUy8QbexOWu+AFvFiRpN08qkknzAZgZ4lF/wBPUnXOLcnj8KXGwx5rychVDX2gdr1J1vsNbBKsuxCXMJBYFgGJaikvhOyhcGo3wS7AFUua4y1jba51ndxLngFlMe74v5qGMLHekmzpVhlza5n+m7CreaHI8T7RzWbrWuSE7o9xiHVsrfa615abJwvu9lImAgZgbYxVbZUyW8x+ILHhvhZvm+0rwoCFjOvhw0xau+mzWBFpvPwsDFth5WSAuB2VZPE8RtYRunRf5OhUkimbv8oX78vYJcSPAk5tmo7zmYAzb3UUs8CptvrXWOyvvcrkMbWn2BXgsbbbSS71gTOn1i7PmIw0zPwijMQnaOVYRdKnOpI4hZyrwUAzBtaVbURI0jCHapIasSAENOtIzZJGisywkGLsq1kZCAyJhEbZU9tYv2upZN8WbdMNmtCyaktDLZr8VKT4VEbWLQiSbRtMW13gwDZ5OawUyANSowmaQHauSdZ9+TVgKqRtipMlCrsakMdaqOWrMTSozhVkXlMWtKXJJLBP8ZQXvedhlqJdJCnBNKgLZopOkDbmDv27wtT0Q5sMUp32346rEXOjHjUSQBQFmGrnad+VH3CzfCsEhTVOQbay+sJ9rvqbMRgLAakUKuOnINDoEYkpcHMHI76+vwhORrmkF5Vjh5o5WSRQNqwNTvZcOPIfS1ru5IkyklZAJUAd6laDo39rwSXaBLLKPhJFdhO3j8QYC2jtFIlrKViY6aHCAQDqKrFRlF6x2xFolkoClJBYgjxDI1AJrkc65bYC+MkW4aJjrYnsMMbwS0eyKddge1Zqjm333Aq+DNc1u7sqGIpcPQtkw2jbHi7yHf40lgxxGmE0IPEEkDeYVL+vIyFyVMSCClQNC3hLh9QQPhrGdqR38p5aiQahYc1yZQFW2jMZjeLqP5zx0tGknZ1kwbq4DbmCBZvY1y04FHxa8KjgU4O9+AO/NPN4oW+2pQkrmHjvUaBPoB/aowqXRa5kmaqROBBJDP7zUbcoMOOGKfaW8StYQnyofmrI9Muu2GocNcgB23vsSUvSTepMw9/3a/1f1d+X46p4MzvJYZSgVJ8yT4gS7kNrFYXZNDHvp6mrUqc7s4qSLL31mSlyykM4D5vlA7/hCWkvjmkivlECblBIzVqdKBRJmF7I3CHP7DRefLz0pME4f01VyEypzJBmD5QtzrXBuXKPc4B+tLgfqWkwGnXQkAlSlgDM4QwGpg0EmQEXxUZ2ktjfWzBy7e2+PJU12iKkxYiuqb0jBS4ZzOVeS3ktuJsjGKpkaiuNZVHKUC+tlvxxIrYokdyqHWrUFRklRjXGyUpiCzw4HlV1K7ZpKlpKsWRb5xYmWJTBiHzrTd9IiLQln7oMRujyyyyUh0pyByalN2cRMzuaYbEzavn9lYuqWUkqdzhUE7QScJPRxzj287KZntZAeuUYLlnMISPF6Fw2UWJiP0J5tpplvgD3kmyjNiaBQHzQv/Si7Yhk+XEfKJKsKyl8ZGe3QtFwsCR3adPU8I8kyGZ0pJGf3hjmY0o9Sw8PmqZuo+8OnH6Rmm7Fh2W1d9WpFhABDhKct30jAtiCcAFGejE03Zx7MVwxs5fNal3coFitztrv+kbbHd6vfYZ0cRtmyncBCQdPlpEs6SD5A9dlaDdHS4kLoibeyrLu5bqJW5GtX0NIxF2KJAxDPOLfdALUe7DM+jZDKn28eWiSMJdCQwz5cN46R4OIXjE3etu9aJNjUAWVs3Zxgm75nvkdYtSUAhwhJFK056R7NlP7ADF9K0O6OukJ3KiIIxqB81rFnmYWxajbtaNSLKVP43YkHPSLCUOCO7G40q/LRxHkuyhLnAKh2fTpEERra2Hz+yrmxGviFA8eSrCou5apHSLMyUzJwAlxUNSrNltMQgBL4E7dHIFSMt4jy7XP18FStNlKEBRObU1Dh4plUXxb5f8A0/hFGeoFRIDCJgID3D+UrHFEjCJHaQsxUiRIkTUVIvWKcA+I7GcEjfSKURMcOqk00bRaZakFJAVUs1CGOIEno8axaEBLKKiQ+SjrxilZ0+IRgs1MRyhTMh3WRmqckE9Tyi4idKZLqnP7TENub+YGxI8Rag15H5RJSpA8q5rOM28tHy1zj0zJWEnFNxOcLkNufV4HoS5j0noI9Sn1nYE0Wi8ruVjwyp6HSsJ8WJlEjAvzCiWPgr5szG2ZfNgJJTIWkeChBU4Cl4wP6owEp7vxVyIbUp0ZqhX9I3+p3/sV7rTyHkmeXeli7yaTJmd2ZITLS7lMxgConEHrr6QI72TgPim4m2jDibqz+kDxGEGZCGnQnhub29arvXHkEXEyzDJU8c07tnPqNladoneI4FLw6YjXm0VoxggbS4+UuFUB3aIlZ7akBlgk7via5xtNtlO7K0Dab9YERI5lC4JXBXrTagWwYhm9eDRW75XvHqY1RIkAolxJtSJEiR5RUiRIkeXl7EiRIkvKRIkSOLytWbTnFSJEiKkdgpEiRI6ordJ14RqiRI4ur0RDEiR1e4LyIYkSPLygjyJEjy4pEiRI8vKRIkSPLykSJEjy8pEiRI8vL//Z") )

                              ),
                            ),
                          )),
                      Positioned(top: 30,
                          left: 160,
                          child:
                          Row(

                            children: [
                              Container(
                                height: 150,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right:10),
                                          child: Text("Captain Marvel",style: TextStyle(fontSize: 17,color: Colors.white),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 150),
                                          child: Icon(Icons.more_vert,color: Colors.white,),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 200),
                                      child: Text('Action, Adventure',style: TextStyle(color: Colors.white60,fontSize: 12)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 90,
                          left: 150,
                          child: Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.redAccent[700]
                            ),
                            child: Center(
                                child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                          )),
                    ],
                  ),
                ), Container(
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 15,
                          left: 25,
                          right: 25,
                          child: Container(
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: BorderRadius.circular(20)
                            ),
                          )),
                      Positioned(
                          top: 20,
                          left: 30,
                          child: Card(
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-IOXRjPR9HDcyVM9n50-xoaiNDKAGWSphKA&usqp=CAU") )

                              ),
                            ),
                          )),
                      Positioned(top: 30,
                          left: 160,
                          child:
                          Row(
                            children: [
                              Container(
                                height: 150,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 80),
                                          child: Text("The Ice Age : Adventures",style: TextStyle(fontSize: 17,color: Colors.white),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 180),
                                          child: Icon(Icons.more_vert,color: Colors.white,),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right:380),
                                      child: Text( "of Buck Wild",style: TextStyle(fontSize: 17,color: Colors.white),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 360),
                                      child: Text('Adventure, Animation',style: TextStyle(color: Colors.white60,fontSize: 12)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 95,
                          left: 150,
                          child: Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.redAccent[700]
                            ),
                            child: Center(
                                child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                          )),
                    ],
                  ),
                ), Container(
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 15,
                          left: 25,
                          right: 25,
                          child: Container(
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: BorderRadius.circular(20)
                            ),
                          )),
                      Positioned(
                          top: 20,
                          left: 30,
                          child: Card(
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage("data:image/jpeg;base64,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") )
                              ),
                            ),
                          )),
                      Positioned(top: 30,
                          left: 160,
                          child:
                          Row(
                            children: [
                              Container(
                                height: 150,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 160),
                                          child: Text("Encanto 2021",style: TextStyle(fontSize: 17,color: Colors.white),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 230),
                                          child: Icon(Icons.more_vert,color: Colors.white,),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 420),
                                      child: Text('Animation, Comedy',style: TextStyle(color: Colors.white60,fontSize: 12)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 90,
                          left: 150,
                          child: Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.redAccent[700]
                            ),
                            child: Center(
                                child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                          )),
                    ],
                  ),
                ),Container(
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 15,
                          left: 25,
                          right: 25,
                          child: Container(
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: BorderRadius.circular(20)
                            ),
                          )),
                      Positioned(
                          top: 20,
                          left: 30,
                          child: Card(
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6U5RVigxqmgD89Anjijkj1ssVzoULcmNrWA&usqp=CAU"))
                              ),
                            ),
                          )),
                      Positioned(top: 30,
                          left: 160,
                          child:
                          Row(
                            children: [
                              Container(
                                height: 150,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 200),
                                          child: Text("Friday Cat",style: TextStyle(fontSize: 17,color: Colors.white),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 190),
                                          child: Icon(Icons.more_vert,color: Colors.white,),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 410),
                                      child: Text('Cartoon, Horror',style: TextStyle(color: Colors.white60,fontSize: 12)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 90,
                          left: 150,
                          child: Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.redAccent[700]
                            ),
                            child: Center(
                                child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                          )),
                    ],
                  ),
                ),Container(
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 15,
                          left: 25,
                          right: 25,
                          child: Container(
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: BorderRadius.circular(20)
                            ),
                          )),
                      Positioned(
                          top: 20,
                          left: 30,
                          child: Card(
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                    image: NetworkImage("https://lumiere-a.akamaihd.net/v1/images/p_soul_disneyplus_v2_20907_764da65d.jpeg"))

                              ),
                            ),
                          )),
                      Positioned(top: 30,
                          left: 160,
                          child:
                          Row(
                            children: [
                              Container(
                                height: 150,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 240),
                                          child: Text("Soul",style: TextStyle(fontSize: 17,color: Colors.white),),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(right: 220),
                                          child: Icon(Icons.more_vert,color: Colors.white,),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 410),
                                      child: Text('Animation, Adventure',style: TextStyle(color: Colors.white60,fontSize: 12)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 90,
                          left: 150,
                          child: Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.redAccent[700]
                            ),
                            child: Center(
                                child: Text("Watch Now",style: TextStyle(color: Colors.white),)),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )

        ],
      ),

    );
  }

}