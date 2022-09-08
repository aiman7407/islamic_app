import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamic_app/core/components/space.dart';
import 'package:islamic_app/core/utils/naviagtion.dart';
import 'package:islamic_app/core/utils/size_config.dart';
import 'package:islamic_app/views/quraan/parts_view.dart';
import 'package:islamic_app/models/quraan.dart';
import 'package:islamic_app/views/quraan/quraan_view.dart';
import 'package:islamic_app/src/colors.dart';


class QuraanListView extends StatefulWidget {

  @override
  State<QuraanListView> createState() => _QuraanListViewState();
}

class _QuraanListViewState extends State<QuraanListView> {
  bool isSura=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              VerticalSpace(value: 6),
              SvgPicture.string(
                '<svg viewBox="175.1 39.4 78.2 53.8" ><defs><filter id="shadow"><feDropShadow dx="-3" dy="3" stdDeviation="6"/></filter><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.134775"><stop offset="0.0" stop-color="#fffa7131"  /><stop offset="1.0" stop-color="#ffed3727"  /></linearGradient></defs><path transform="translate(172.63, 145.73)" d="M 28.01786804199219 -81.24101257324219 L 23.841552734375 -85.39105987548828 L 19.61271095275879 -81.24101257324219 L 23.841552734375 -77.06470489501953 L 28.01786804199219 -81.24101257324219 Z M 26.62575912475586 -76.56565856933594 L 26.62575912475586 -63.56394958496094 L 8.003086090087891 -63.56394958496094 L 8.003086090087891 -65.45512390136719 L 21.05734443664551 -65.45512390136719 L 21.05734443664551 -76.56565856933594 L 7.556563854217529 -74.149169921875 C 6.164459705352783 -73.86024475097656 4.956218242645264 -73.072265625 3.95810604095459 -71.78521728515625 C 2.959993362426758 -70.49818420410156 2.4609375 -69.13236236572266 2.4609375 -67.66146850585938 L 2.4609375 -61.38388061523438 C 2.4609375 -59.93924713134766 2.959993362426758 -58.62593841552734 3.95810604095459 -57.41770172119141 C 4.956218242645264 -56.20946502685547 6.164459705352783 -55.50028991699219 7.609096050262451 -55.29015731811523 C 9.526520729064941 -55.05377197265625 13.12497997283936 -54.65976715087891 18.40446662902832 -54.13444519042969 C 23.68395614624023 -53.609130859375 26.54696273803711 -53.32019805908203 26.99348640441895 -53.26767349243164 C 28.46438980102539 -53.13633728027344 29.69889450073242 -53.47779083251953 30.67074012756348 -54.29204940795898 C 31.64258575439453 -55.10629653930664 32.14164352416992 -56.23573303222656 32.14164352416992 -57.68035888671875 L 32.14164352416992 -78.37800598144531 L 26.62575912475586 -76.56565856933594 Z M 40.54680252075195 -106.1674957275391 C 39.83761978149414 -105.6684494018555 38.99710083007812 -105.379508972168 38.0252571105957 -105.3269958496094 C 37.05340957641602 -105.2744598388672 36.23915481567383 -105.3007125854492 35.5825080871582 -105.4057769775391 C 34.92584991455078 -105.5108337402344 34.34799957275391 -105.3269958496094 33.87520599365234 -104.8541946411133 C 33.40241622924805 -104.3814086914062 33.16602325439453 -103.4883575439453 33.16602325439453 -102.1750411987305 L 33.16602325439453 -98.94432830810547 C 33.42868423461914 -99.49592590332031 33.82266998291016 -99.86363983154297 34.32173156738281 -100.0475082397461 C 34.82078552246094 -100.2313537597656 35.34610748291016 -100.2839050292969 35.89769744873047 -100.2051010131836 C 36.44928741455078 -100.1263122558594 37.00087356567383 -100.1263122558594 37.57872772216797 -100.2051010131836 C 38.15658569335938 -100.2839050292969 38.6556396484375 -100.4414978027344 39.10216903686523 -100.7041702270508 C 39.54868698120117 -100.9668197631836 39.91641235351562 -101.5709381103516 40.20534515380859 -102.5165176391602 C 40.49426651000977 -103.4620895385742 40.6255989074707 -104.7228622436523 40.6255989074707 -106.2988433837891 L 40.54680252075195 -106.1674957275391 Z M 34.13786697387695 -97.18450164794922 L 34.13786697387695 -65.58644866943359 L 39.68001937866211 -65.58644866943359 L 39.68001937866211 -99.02313232421875 L 34.13786697387695 -97.18450164794922 Z M 34.08533477783203 -52.45341873168945 C 34.21666717529297 -52.47968673706055 34.40053176879883 -52.5322265625 34.63692474365234 -52.58475494384766 C 39.83761978149414 -54.08191299438477 43.19968032836914 -55.29015731811523 44.74938201904297 -56.20946502685547 C 46.29907989501953 -57.12876892089844 47.06079483032227 -58.65219879150391 47.06079483032227 -60.80602264404297 L 47.06079483032227 -85.86383819580078 L 41.46611022949219 -84.02520751953125 L 41.46611022949219 -63.59022521972656 L 34.0590705871582 -63.59022521972656 L 34.08533477783203 -52.45341873168945 Z M 59.30080032348633 -91.90502166748047 L 63.05686187744141 -88.14897918701172 L 67.23316192626953 -92.35155487060547 L 63.05686187744141 -96.52784729003906 L 59.30080032348633 -92.79807281494141 L 55.51848602294922 -96.52784729003906 L 51.3421745300293 -92.35155487060547 L 55.51848602294922 -88.14897918701172 L 59.30080032348633 -91.90502166748047 Z M 52.78680419921875 -80.66315460205078 L 52.78680419921875 -74.72703552246094 L 44.32912445068359 -74.72703552246094 L 44.32912445068359 -65.45512390136719 L 65.78853607177734 -65.45512390136719 L 65.78853607177734 -85.89010620117188 L 58.04003524780273 -85.89010620117188 C 56.56912612915039 -85.89010620117188 55.33462142944336 -85.39105987548828 54.31024551391602 -84.39293670654297 C 53.28586578369141 -83.39482116699219 52.78680419921875 -82.16033172607422 52.78680419921875 -80.68943023681641 Z M 58.35522842407227 -76.64443969726562 L 60.22011566162109 -76.64443969726562 L 60.22011566162109 -74.75330352783203 L 58.35522842407227 -74.75330352783203 L 58.35522842407227 -76.64443969726562 Z M 67.6796875 -97.05319213867188 L 67.6796875 -74.72703552246094 L 62.66286468505859 -74.72703552246094 L 62.66286468505859 -65.45512390136719 L 73.22184753417969 -65.45512390136719 L 73.22184753417969 -98.89179992675781 L 67.6796875 -97.05319213867188 Z M 75.11300659179688 -97.05319213867188 L 75.11300659179688 -65.45512390136719 L 80.6551513671875 -65.45512390136719 L 80.6551513671875 -98.89179992675781 L 75.11300659179688 -97.05319213867188 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>',
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
              VerticalSpace(value: 3),
              Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(20),
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black,
                      width: 1
                      )
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      textDirection: TextDirection.rtl,
                      children: [
                        InkWell(

                          onTap: (){
                            setState(() {
                              isSura=true;
                            });
                          },child: Text('السور',
                          style: TextStyle(
                            fontSize: 30,
                            color: isSura? AppColors.kPrimaryColor:Colors.black
                          ),
                          ),
                        ),
                        Padding(

                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: VerticalDivider(thickness:1,
                          color: Colors.black,),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              isSura=false;
                            });
                          },
                          child: Text('الاجزاء',
                            style: TextStyle(
                                fontSize: 30,
                              color: isSura?Colors.black:AppColors.kPrimaryColor
                            ),
                          ),
                        ),
                    ],),
                  ),
                ),
              ),

              Expanded(
                child:
                isSura ?ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Divider(
                          thickness: 2,
                        ),
                      );
                    },
                    itemCount: isSura?114:30,
                    itemBuilder: (context, index) {
                      return
                         buildSurahName(index, context);
                    }):PartsView()
                ,
              ),
            ],
          ),
        ));
  }
}

Widget buildSurahName(int index, context, ) => InkWell(
      onTap: () {
        String content = "";
        for (int i = 0; i < Quraan.quranData.length; i++) {
          if (Quraan.quranData[i].name == surahName[index]) {
            content += Quraan.quranData[i].content!;
          }
        }
        AppNavigator.customNavigator(
            screen: Directionality(
              textDirection: TextDirection.rtl,
              child: QuranView(
                quran: content,
                header: surahName[index],
              ),
            ),
            finish: false,
            context: context);
      },
      child: Container(

        padding: const EdgeInsets.all(20.0),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            CircleAvatar(
              backgroundColor:  Colors.black,
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),

            Text(
              'سورة '+'${surahName[index]}',
              style: TextStyle(
                color: Colors.black,
                  fontSize:SizeConfig.defaultSize!*3
              )
            ),
            Spacer(),
            Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );


