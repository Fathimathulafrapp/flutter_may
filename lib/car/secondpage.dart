import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../casoseual_slider.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: secondpage(),));
}
class secondpage extends StatefulWidget{
  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  var _currentindex=0;
  @override
  final List<String>imgList=[
    "https://media.istockphoto.com/id/949396376/photo/3d-illustration-of-generic-red-sports-car-on-white.webp?b=1&s=170667a&w=0&k=20&c=LYw07JCZDqOvUlAkRswX44LS10eCr0MRIl46Nc9-KHM=",
    "https://cdni.autocarindia.com/Utils/ImageResizer.ashx?n=https://cdni.autocarindia.com/ExtraImages/20141117023139_20141086205.jpg",
    "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBESEhgREhIYGBIYGBgYGBgYGBgYGBgZGBgZGRgYGRgcIS4lHB4rIRgYJjgmKy80NTU1GiQ7QD00Py40NTEBDAwMEA8QGBERGDQhGCE2NDQ0NDQxMTQxND8xMTQxNDQxNDE0ND80MT80MTo+MTE/NDQxNDY0MTQ0NDFANDQ0Mf/AABEIAKgBLAMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYDBAcCAQj/xABDEAACAQIDBAYGCAUDAwUAAAABAgADEQQSIQUxQVEGImFxgZEHEzJCobFSU2KCksHR8BQVQ3LhFjOiNMLSFyNzsvH/xAAXAQEBAQEAAAAAAAAAAAAAAAAAAQID/8QAHBEBAQEAAgMBAAAAAAAAAAAAABEBAjEhQVES/9oADAMBAAIRAxEAPwDssREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREhtt9JMLgx/71TrkXFNes5HPL7o7WsO2BMxOS7Y9LOUkUaaqOGZszeNtB4HxlSxnpQx1S4VgB2A/mTA/QjVFG9gO8gTCcbS+mPn8Z+an6bY9zYVCTyVbnyh9vbSbVqpUfaKj4b4H6TbaFEb6izydqUPrFn5pbbOL97E69gv8wIG26+412J7EUfmYH6WG06H1iz2NoUfrF85+ck2xibf1D90/kJ9PSHEj3XPer/kRFH6MG0KJ3VFmRcRTO518xPzonSysvtU28M6/O8ksH0xbTNnS+7UOPiF0jwO/A8p9nKcLtjEdVvXn1bIHBW40JsBbQ3vpaSdDpPiU1Cu69oDHy3+UDocSr7M6ZYeowpuclQ+6wKse3KwBt2yy03VhmUgg8RA9xEQEREBERAREQEREBERAREQEREBERAREjtr7Wp4Wnne5ubKo3k/p2wJGY6tVUUu7BVUEliQAAN5JO4TnGJ9KK06yIaAFMsM5zFmWnezNYDhwHEgjSUPpv05xG0GNNb08KD1aYOrW3NUI9o8cu4dpF4Fu6YelEC9HAGw1DVyNT/8AEp4faYdw3GcoxO0K1ZicxJY3ZmJLE82Y6k9p1mFMO9Q3IIXnz7pKYDZtSoctNLKN7H2R3niZFR9LCi+vXc7hv8AOMsez9gMbNV6q/QG/xPDuHwkng8DSwy3Gr8WO893ITS2ptYqpI0HDtJ3CBg25iaNNRRpoobeSBqo5X33P73ytVaxPGY3ZmJJNydSZ5CwPLXMy4Sq1Nw4tcc92u+eDMbvAt+C2jTqi3sv9Enf3HjPVZZSjUm4u2KwFs17cWFz58ZIVYSJHbWrWCLxJJ8hb8x5SO/nFX7P4f8zPs92xGIpK9rBxewt1QczfAGWDo2CQqqUzvREU/dS5/wCT/CTWGfSRWznFQsfePWtxAdj/AOIm3icXToLmqE2JsABck9gjTEs9NKi5aiK6/RYBh5GZMCa+Ha+Hqm2/1dQlkI5BvaX/AJAC1gJA0ukOHPvOO9DJfCYynUT1lNswU6776bxbugXHZW2krH1bA06w1KNbUc1O5h2j5yXlExiB6bEEB0BdH+g4BswPAcDzBIm9gtq4qtRp1Kb00JUF1q02bhr7LAjW/OVFtiQa1NpWBC4WoDqCHqpccwcjCbmCxrs3q61MU6mXMAHDqyg2JVrA6Ei4IHtCBIREQEREBERAREQERNPaGPpYdDUquFUadpPAKN5PYIG5ErFPb1atrTpinTO5qmrt2hRoD5yH2n0l3pTrMzbi4IAB42C2XxN/HfAvdSqqi7MFHMkAeZke23sLfKtUM3JAWPwnLamPc6sudvpO+fyB0HhMuG2tUQZVpoq9gOvx39pgdQG1UPunxsPleQnSPCJjVQetqUihbVAjE3toc6nlKm23KnAAT3S2jiHNlUm/gPPcJR7X0fYT361VyTclilzy3DcNwFp9f0fYE++3jc/JhMpOLP0R99T+c8lMWOIP3h+ZiDX/ANB4cG6up/uzkeRYibh6LaWFRLDcMrAfAzGtTED2jYdnW+C3mwccyiwFzzctp90L+cQR+I6JAak0j3lxNUdEEqaNTo2vvYv8Bvm3UeoxzNVX46dwy6T7dxvqC/KxvEGg/QOkd1Ol4VKy/MmatfoJTUX9StuYrn/uIlkw9TmxMzvVI9imrH6TEad19flEFBqdFMPfKVcHmrow87kTWq9DaXCo/jkPyE6DVr1iDnpgrbUBlAtx3a/GfcMabLc0qaLa92IB8NbxBzYdA6jgmk9wNDdR5XzCa1XoBjBuCnxA/MzoWJxtBdKagnmHc/nbyJmica9t7HvJv8LSQc8xXQ/GUxmdEA3e2JsbF2PVp1CzKB1SF1B1JAPwvL2XqOLE6cjdh/yJmWlhjv08hLBAUtpDCualUAIwyL1l9y1vz85gx23qmIqD+Gw5qKBb3jZuOqi262+YeklKu1UplcqSMo1KnQDQbiTpJ/o7sdsPSs3tsc7DgpsAAPACSCIRNpNuwSDtLjSWXYWGqUqWVrpUJuxuj87207ZvIkzIhmoPVKmoUB2ZwLWzEWFt2gAE8Pt71b5PVsbfdHn+kwYrFtTdaYpu5bU2sLC5F9TrumfEYPMLsLG3EiB4V6dUZXQEEsbHW2Y3IB0suu6SOxdkYfD1BWoh0YG9g7lDfQ3VidLfLSQQOU2k9sfEZuqd8QXqm4YBhuM9zQ2Y+hTlY+c35kIiICIiAiIgYcTXWmhdvZUX7ewDtlB2jtHPU9a9mcXCA6pTHJBz5tvPYLAXjajKKZDbjpbnKJtXZopoazuBT5MQLdw94d8uCB2vtp2vTV9W0c33A+6O/jIdHA4iatXG0AxvVQXJ94Tz/H0Prk8z+kgkBWXnPQxA5yN/mND61fjw0PCP5rQH9VPP9YFk2TtALdb2G+97a7pKHaCn3ge83lVwm3KCCwqKeeokpT23hG31l8b/AKSiYGKB3AfCff4i00Ex2Fb+oniQPnNlBQb2WT7rD8jKMrYyYGxRPGZP5cp3Fh95vznxtlHhUa/2grL5AA/GBgfFEjKBpxJ3nu5TBc8JkrI9M2YIw+ywVvwPb4EzLR64BVHbMSFApuSSujWAW5txtJRrgtMi1HEiKnS3AgkB2YjflRtPFrCeqvSamjZGplGK5gajAC3OyBjAlXxrqpzWy8bi47rcSeUgsTjnqH7PBRu8bcZ42nicU9RqZpKAhFwHJ9oAhycvEEHdoCJ9pUStg6lSd19x7m3H5wCuZs4a7nKoJPYLwmGLEKN5/d5lx+3aOBtQpUzUrmxKg2tf3nbW3YLXgT2DwJy6ixm2uB5m3hKls/pwRUVMVQ9SrGy1AxKA8muBlHb+Wsvq2YXlGi+HpgC5J1/Uz2tOmPd85kqJemG4krppcbib635jdPipAKyjcg8p79YYFOewkI1q+Fp1GR6iKzoSUJGqk8RNTHp+/ASVyyL2gf38IVHLTLEAcZrYjpPToVDSpUnq5DZ2QqLEe0Fv7bDiNNdL30nrauNOGw1SsP8AcsET+99AfAXbwlSwBp00AZ2zHJoBmIzsFDNcjS5PG5sfGbo7n0exaVkWqjZkdAwYcQbEGTco/owxXrMO67mRyCOWcl7jsJJPjwl4kCIiAiIgIiIHOeneL2mKoTCuqKG6t1VlYW1V2YdU7zw75zLpr0nr4pkwxcEIoVygIVnt1rDlv/d52XbGGqvTqU2BzMrZWG4kg6X4T88bQ2XXSoxFNiuYkEC976wMWLGVkbmig+Ay3v22v+7TK53+PxIt+9x7JjxGZksyMrKbi6kXvv793xmOnXWwvof83J/e/jAzFtd/H5t/jj4GTfRzYdPGELUxaUSzilTRgWZ3K5rWuMo6wALb2awJMr4rr9Lzv2/43eQnvD4s03V6b5XSxVhvB6u79kQLVtboDjsP1namaZfKXzFQoJIV6hZbIvWBuSbdul6tjcN6s5S6PoTdGDC12AubaHS/O2+039r9Ia2JX1buFp5i7Ihyo7tvdhe7NoupJtbQCRDMNdRx/wC79e+AJIvY237vvfpPa13G52HcTzMxsw11/fW/WPEefbx/fjAnNl4/EU0eqK7qFvbXS44eN1EtWxsfhNoAJiDUp1rbxWqBW+6WK38Ld0o20K2VVoDS2Vn7z1reF/gJrCqQQysFYag313QOoJ0KTD1VxOHxLLURldTUVWAZTcXIA00tx46Sx4bpfg0uMSf4eoGZyArNSZ2uXq4eqgYqzFmJVtDc3GpJ53guk16Y/iFd8osFVgFuN1ydSPiOfLXx23GqqUFPJTOhVCFzDkzFSx/FJuYqe6Y4rYOLJqpiTTxdi3rKVF8tRvo1Kei5z9NWsdSeAlGfFNVOXMqiwuAVCk2ym43ajiddBMt6S7qNP72Zj8x8pmoYpwbU1VR9lEHxtf4x6M78rVgcYHOdqiKrBBZFd3yIqoFJW9uqg8zJ18ZTamadOmzZhbM6hVUHfZTr3aSBweZrXJPebyW3L2yZx+6tzrMYcViRhKD4jefYRTxc6KAe/f2AyoYJGN3Zs1RyWZjYXJ1JJ4DQnsA4CTHTSvepSww9mmmd91i76LftChj9+RDZlVVUdV3CPbeEcZdR9Ek2v2W4zSN56NKqrUhUV2WysgBBPVLdQkDOQFJ+V5d/R9jGq4X1bm70SaZP0goBRvFWXynMqKuopOmrsmZADvutLDi+unX9YPMzofQBx/E1SrBkdEcW3EqXVmA4AltByAjEW2onzgJM9cWMwPVUbzNI9ZZ8tNdsYOAmFsUxgbzG0g8U2ZpvpTqNwPjpMNTCMOsQB2Fh+V4VR+nGJu1HDg7r1GHaxyLx5B/ORjJmLsLZ1ChQNSwenVSnw1K1yb9luAmPbtc1Ma9yCFYILaeyNdNeOablc2w9Qmi9ILU1YZmqVA6uPWU8w6oNr9XSzHXWZF19Fle2LxNJWzKyZr2spanUKHLzUBgt+OWdTnG/RZWpHHqtEOqLhqiFHCgqVaidCpOYElmvpq07JAREQEREBERA4ttLp7jaW1KmCypUonFerQFSHUF1ACspGbfuIPfJjaGFQVHsARmNj4ytbYwYw20cbtGoQoSsy0CwuPWMq5qgW4zZQbAcWO8ZSRBYPpA9ZiFxFdLWsWNJgbcSMmhO/fFFxrYNDe6CSWzeheGxNBapYq5LAjKhGjEDhfcBxlMOKxfu4sEfapIfiGEuPRTpXRo4f1WKqH1iuxzJTbLlaxGi3IOpi4MG0PR3hUQvUr00Qb2qUwAL6DrZxIjG9AcMmQevw5aoUCABrtnOVGABY5SSNd0t20+keBrohp4hPWI61FWqlREYqGGViU00Y2OtiAZFGrhWIRauCUPUp1S/rkD4cqwd0S4BdSQ2XdbORawEorz+jNm/26mGa5IFqtQXKmzAWQ6g7+U1anoqxnD1HcKtT86cs1LBU1oqtMYZ6rUaaI616N8NVQsS4ObUEsHuupIIO+XtcTTO6oh7mX9Yg4JtToXVw1VKNXKGdWdCr5lIQgMCctwdRwmH/SdTmn4m/wDGX/0o4laVfBVjqo/iFbLqdRTtp4nyleXpBhvtj7j/AKSCCqdGarG7FSTxLsSfhPKdFalxfKO3MT8LSxHb+F5t+Bp4/wBRYT6y33TAYbZKKUphQ1R3VEBt1mbieQABJ5ATZfooKmKagamqrmBRL0z7Itm0sOtv+y3KQ2LxtWot1FGrSzAhgG0PDMA11aZ8JjKyCxVQu8Kpe1+erWhVi/8AT3DKSXxosD7uTUcbX+UyUeiWy6ZBqY0m179dVW4vbrWtbdK965SSTTS545FufG0q3SKiA4ZVCgjgLC436cN4nP8AHL3y1r9cfjpmPxGzaYWnhKqvWaoiqA4c5N9QsFuAMobluEzUUzVEXtv5ayhdAcHnrPVI0RcoP2m/wD5y/JiadJmYt18jFFAJZiN1lGu/TxnTMmds7tUHaNb12Mq1ObsBu9lCEU+Sie8PnbE02ooXemUSpT1Iem/XDWGtgSQTwIUyOwNxbidN4trz7ZvUsdTFd6a01VmRA9Rmcuyg0mYLZgqdVSb2J6u+B5qq6H+GojNWdBhly9ZUph+tdhcZmfMT9G5l19HbKtXKoYIKbqmZSpIR6fWsQNSWZj2tKxtr+IOLZMIQEDgKAQrkaer624XTJY6HUTe6NtiVr01q4nM7NUByVC5VfV5spe5GpCnQndCOjYypUc9UEC/71mJMKfeYfOQ+L6VUKLGnVdi4JAVFLs1he9h2EechMV09O6lQt21H1HfTS7fKWi9Jh043PfMlSpTprmZkRebEKPMzlGK6UY2p/VKDkiqnkxzN8pq0MFicQ11pu7cWszn8T5iPhFI6Nj+mGDpDq1DUPKmL/wDI2U+BmWrtMvS9Y6ZAFLFc2YgWvqbDW057WwFKjricRSRhvUv6x/wJmI8bSMxu0qDDIj1n3i7EUqZB01QFmYdhZR2cJKRgpVy9QudC7s514scx49snAWam6ByEFQMrXOcPUVncqt7FER0uP7yN8rtJ7fvz4ywOrupemCwemlIZbnIWJpsdOfrG/CZFXP0Zmo+PJqnr08O6MAFAVg9OmbEAXDFC4P251uc59FOFucRiL3BKU0P2Vu1vC4t2WnRpUIiICIiAmpj8alFM77r2/wD2bc8VaasMrAEcjA/NPTPE4vG4l2ak60VZ/Vrla1ixJc6as17nvtIjZuz6oe9NiCNSdAAPtE6CfoPbWxMAAWaolI9pBHkCD8ZyvbxwdPMXxaVyXv6umr01IOpYsDv3fqJFQGN2uKfUpnPU4tayDuAAzfKRIqJYsyt6wnNmtvPLsEsFPbWAQW/g7D7FRueujDxhttbNY2NKsvbZGHzgQCYlvpH8Xffj3fqZlp1araUyzNbcCT9Ece0/5kua+ym/quP7kb8gZkwtfALmFKuq5lN2KstjuAFx2sfLlArpx9QMQzfAHnxt3azK2KY8VPK6r9rs7v0k5i9m7NZQaOIOa/WzshG7hlF9/Oaf8mpH2aynxP6RRoM2cWOVRe/VUA6XHDfoezwmzjcBiKFipzUzqptY662PJuwzYGwFO6oPP9RNjDYOvQJsVq0m9tC63P2ludGHOKIMY4j2kse0foJk/jgeKfiI+YlhxOylIDoC1NtRp1hzDDgRIxtj3PsHyMUYMLi0zXzrTfcGUix+y6nRl75NUMSAwp1VCVOGvUf+xju/tPgTukS2wGPshvwkyS2ZgnA9TiULUfdbKxKi9itrEkW3d3dAkHojhIfb2DLUyQLlSDpv10m9UL0ny0UqVKVvfGVlI3BXOrLbgw04GbCVKjj/AKUns9Yg+GplGfYK08DgfWVTYt125nN7CjmbW8576Ks9c1MZUHWqEKg4KiblHifMGRW2sDi8Wyh0FOknDNvPdoPHhrLNg8XhMLTSm2IpjIoHtAknibDmbxuih4NrP49slqe08TSqlAwKMaNKkhRSCzFCWsfaK5TvvqyyCpP1tNCdOAN+Hbvkkat1o1gzF1b1SA6FWqt7ZtbXKHFxxykboGLE4VqtRjS6ldQa1PLZcylrFRY/7ge69pHbJDYVZBVpuLIXFR2TcFYgIwA4C+YgcAQOEjVqmqlMLo1q43an1xqvT8Q1O/iJr7exRSuhUjOigsbaFz7d7b8xueRzwiw7bwC1anrfW0kQqFc1KgRbqTlOX3jY8AfZka1fZ9HRq71mHu0EyLf++pvHaFlaxuPqVmBqMDbQAKqgDsCiaoEkWrM/SlU/6bB0qf2ql6794LWX/jIzH7exlcZauIdl3ZAcqfgWy/CadLCO25TJPCdHa1Q6KfKVELPasZf9l+jfFVLHIQOZ0lu2d6JF0NWoB2DUyDiy1G5GT+xK2MqD1VGi73uBlB3NvBPLdO6bN9HezqNiaedubfpLNhcDSpDLSpqg+yoEKh+g+zHwuBp0qihavWZ+PWY31PdYdwEsURKhERAREQEhekmGxNSllw75TxtoSOwyaiBxDbHRvEkk1A5PbcyqY3YLD3T5T9MMgO8AzUr7Lw7+3SU+Aki1+Wq2ymHCaj4Bxwn6bxHQ3A1N9K3cZFYj0b4NvZZl+MD86nCPynk4V+U75W9F9P3avmJo1PRc3u1FMDiJwzcp5NBuU7LU9GVcbsp8Zq1PRviR/TB7jA5GaLcoCsN1x5zqVT0e4kf0jNZ+gmIH9JvKKOfYbG16ZulRh43HkdJs/wA9xn1p/Cn6S4P0Krj+k3kZjbofW+rbyMUVM7dxn1rfhX9JjbbOJO+ofwr+ktjdEqv1beRmM9Eqn1beRiiqHa2J+tbwsPlPDbSxB31qn42/WWluiVT6tvIzG3ROr9W34TFFTasxN2Yt3kn5z0Kx+Y8DLI3RGud1J/wmeB0LxZ3UX/CYogkxRk5s7aSLqwBUkZlPPMG/+2o7e60zJ6P9ot7NB/EWkjg/RVtNzqioOZMDVSrhqINRM/spqxXq5FyrksBdyCetwvu5Vr1FSu5YKbsb93IDsA08J13ZHoetY4rEX+ysvmyuhuBwwGSkCRxbWUcH2V0HxNa1qbHwMu2yvRU5sallHbvnYqdNVFlAA7Bae5Iil7M9HmDpWLXY+QllwmycPSFkpqPDWb8Sj4BPsRAREQEREBERAREQEREBERAREQEREBERAT5PsQPlhPmQchPUQPGReQ8o9Wv0R5Ce4gePVr9EeQj1a/RHkJ7iB49WvIeQnrKOU+xAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERA//2Q=="
  ];
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey[300],
    body: ListView(
      children: [
        Container(
          height: 480,
          decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30),),color: Colors.white),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      color: Colors.white,
                      child: FloatingActionButton(backgroundColor: Colors.white,
                        onPressed: (){},child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 15,),

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 330),
                    child: Container(
                      height: 40,
                      width: 40,

                      child: FloatingActionButton(
                        onPressed: (){},child: Icon(Icons.bookmark_border,color: Colors.white,size: 15,),

                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      color: Colors.white,
                      child: FloatingActionButton(backgroundColor: Colors.white,
                        onPressed: (){},child: Icon(Icons.save_alt,color: Colors.black,size: 15,),

                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 390,top: 10),
                child: Text("Camaro",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3,right: 415),
                child: Text("Chevrolet",style: TextStyle(color: Colors.grey[500]),),
              ),
              SizedBox(height: 8,),
              Container(
                height: 200,
                width: 400,
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
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 35),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.white),
                      height: 100,
                      width: 120,
                     child: FloatingActionButton(backgroundColor: Colors.blue, onPressed: () {  },
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))
                       ),
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(right: 16,top: 17),
                             child: Text("12 Month",style: TextStyle(fontSize: 12),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 26,top: 8),
                             child: Text("4.35jt",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 50,top: 3.0,left: 0.0),
                             child: Text("IDR",style: TextStyle(fontSize: 12),),
                           )
                         ],
                       ),
                     ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,left: 15),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.white),
                      height: 100,
                      width: 120,
                      child: FloatingActionButton(backgroundColor: Colors.white, onPressed: () {  },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16,top: 17),
                              child: Text("6 Month",style: TextStyle(fontSize: 12,color: Colors.black),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 26,top: 8),
                              child: Text("4.8jt",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 41,top: 3.0),
                              child: Text("IDR",style: TextStyle(fontSize: 12,color: Colors.black),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 30),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.white),
                      height: 100,
                      width: 120,
                      child: FloatingActionButton(backgroundColor: Colors.white, onPressed: () {  },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16,top: 17),
                              child: Text("1 Month",style: TextStyle(fontSize: 12,color: Colors.black),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 26,top: 8),
                              child: Text("5.1jt",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 41,top: 3.0),
                              child: Text("IDR",style: TextStyle(fontSize: 12,color: Colors.black),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                ],

              )
            ],
          ),
        ),
        SizedBox(height: 3,),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Text("SPECIFICATIONS",style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold)),
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 10),
              child: Container(
                height: 70,
                width: 145,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 80,top: 12),
                      child: Text("Color",style: TextStyle(color: Colors.grey),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 70,top: 5),
                      child: Text("White",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Container(
                height: 70,
                width: 145,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 60,top: 12),
                      child: Text("Gearbox",style: TextStyle(color: Colors.grey),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30,top: 5),
                      child: Text("Automatic",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 10),
              child: Container(
                height: 70,
                width: 145,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 85,top: 12),
                      child: Text("Seat",style: TextStyle(color: Colors.grey),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 95,top: 7),
                      child: Text("4",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                    )
                  ],
                ),
              ),
            )
          ],
        ),


      ],
    ),
    bottomNavigationBar:
    Container(
      height: 90,
      color: Colors.white,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150,top: 16,left: 10),
                child: Text("12 Month",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60,left: 10,top: 5),
                child: Row(
                  children: [
                    Text("IDR 4,35jt ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("per month",style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text("per month",style: TextStyle(color: Colors.grey),),
              // )
            ],
          ),
          SizedBox(width: 140,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 40,width: 120,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue
            ),
            child: Center(child: Text("Select This Car",style: TextStyle(color: Colors.white),)),),
          )
        ],
      ),
    ),
  );
  }
}