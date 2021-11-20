import 'package:flutter/material.dart';
import 'package:vervit_app/constants.dart';

class InfoCard extends StatelessWidget {

  final String name;
  final String info;
  final String photo;
  
  InfoCard({ this.name, this.info, this.photo });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width / 5,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage(photo),
                          fit: BoxFit.fitHeight
                        ),
                      ),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 20.0,
                  thickness: 2.0,
                  color: kColorGray,
                ),
                Text(
                  info,
                  style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  ),
                ),
              ],
            )
          ),
        ),
    );
  }
}

var info = [
  {
    'name': 'Šimon Skoumal',
    'info': 'Ahoj, studuji na gymnáziu Nový PORG a jsem zakladatel Vervitu. Kromě koordinace celého týmu, také pomáhám se všemi kroky produkce videí a s vývojem aplikace. Ve škole se zajímám hlavně o matematiku, fyziku a chemii. V budoucnu bych se rád věnoval strojnímu inženýrství. Kromě školy také dělám atletiku, jsem členem školního robotického a investičního týmu a píšu články na několik zpravodajských serverů.',
    'photo': 'assets/photos/Simon_Skoumal.jpg'
  },
  {
    'name': 'Kryštof Latka',
    'info': 'Ahoj, jsem v oktávě na gymnáziu Nový PORG a ve škole mě nejvíc baví matematika s fyzikou. V dalším studiu bych se ale chtěl ubírat spíš cestou informatiky (computer science), zajímá mě zejména strojové učení. Mimo školu rád řeším různé programovací úlohy, učím se na elektrickou kytaru a zapojuji se do dalších aktivit se spolužáky, jako je tým robotiky nebo investiční klub. V rámci Vervitu vedu programování mobilní aplikace a občas taky stříhám videa nebo vymýšlím scénáře.',
    'photo': 'assets/photos/Krystof_Latka.jpg'
  },
  {
    'name': 'Sára Pavlínková',
    'info': 'Ahoj, jsem v maturitním ročníku na Novém PORGu a moje oblíbené předměty jsou matika, computer science a biologie. Ve volném čase se zajímám o programování aplikací a her, bioinformatiku a ráda lezu na lezecké stěně. V budoucnosti chci studovat computer science a umělou inteligenci. Ve Vervitu se podílím na vývoji aplikace.',
    'photo': 'assets/photos/Sara_Pavlinkova.jpg'
  },
  {
    'name': 'Ivan Geisler',
    'info': 'Ahoj, původně pocházím z města Kroměříž, ale v současné době studuji na gymnáziu Nový PORG. V rámci školy se hlavně zaměřuji na ekonomii a business management. Mimo Vervit jsem taktéž součástí školního investičního spolku Investment Society. Ve volném čase se převážně věnuji tréninku triatlonu a čtení. V rámci Vervitu mám na starost psaní scénářů a střih videí.',
    'photo': 'assets/photos/Ivan_Geisler.jpg'
  },
  {
    'name': 'Adam Bortlík',
    'info': 'Ahoj, studuji na PORGu Libeň a v rámci Vervitu se starám především o publikování videí na Youtube. Každé video tak musí projít mýma rukama, než se dostane k Vám. Ve volném čase rád sportuji, mým velkým koníčkem je lezení nebo míčové hry.',
    'photo': 'assets/photos/Adam_Bortlik.jpg'
  },
  {
    'name': 'Adam Hrehovčík',
    'info': 'Ahoj, studuji na Novém PORGu a mezi mé hlavní zájmy patří business, ekonomie a karetní magie. Hodně času také věnuji sportu, konkrétně běhu, street workoutu a karate, ve kterém jsem nedávno získal černý pás. V rámci Vervitu se specializuji především na psaní scénářů a nahrávání videí.',
    'photo': 'assets/photos/Adam_Hrehovcik.jpg'
  },
  {
    'name': 'Nela Uhlířová',
    'info': 'Ahoj, chodím na gymnázium Nový PORG a ve volném čase se věnuji grafickému designu a občas golfu. Také trávím čas na kurzech zaměřených na IT, ať už jako účastník, nebo organizátor. V rámci Vervitu nahrávám a stříhám zvuk.',
    'photo': 'assets/photos/Nela_Uhlirova.jpg'
  },
  {
    'name': 'Sára Bystrovová',
    'info': 'Ahoj, v rámci projektu mám na starost nahrávání a střih zvuku a design. Mimo studium se věnuji choreografii, výuce rétoriky, herectví a hudby. Do budoucna se chci věnovat studiu umění a kreativní reklamy.',
    'photo': 'assets/photos/Sara_Bystrovova.jpg'
  },
  {
    'name': 'Jakub Douša',
    'info': 'Ahoj, studuji na PORGu Libeň a zajímá mě historie, zeměpis. Mimo školu se věnuji golfu. V rámci Vervitu píši scénáře a natáčím videa.',
    'photo': 'assets/photos/Jakub_Dousa.jpg'
  },
  {
    'name': 'Vojtěch Farský',
    'info': 'Ahoj, chodím na gymnázium Nový PORG v Praze a velice se zajímám o kvantovou fyziku a astrofyziku, takže je asi jasný, že můj nejoblíbenější předmět ve škole je fyzika. Mimo školu se rád věnuji MUNům (Model United Nations), baví mě vaření a pečení a sem tam chodím do posilovny. Ve Vervitu se specializuji na střih a finalizaci videí, která poté putují k Vám.',
    'photo': 'assets/photos/Vojtech_Farsky.jpg'
  },
  {
    'name': 'Jakub Seidl',
    'info': 'Ahoj, chodím na gymnázium Nový PORG v Praze a velice se zajímám o kvantovou fyziku a astrofyziku, takže je asi jasný, že můj nejoblíbenější předmět ve škole je fyzika. Mimo školu se rád věnuji MUNům (Model United Nations), baví mě vaření a pečení a sem tam chodím do posilovny. Ve Vervitu se specializuji na střih a finalizaci videí, která poté putují k Vám.',
    'photo': 'assets/photos/Jakub_Seidl.jpg'
  },
  {
    'name': 'Ellen Wdówková',
    'info': 'Ahoj, studuji na gymnáziu Nový PORG a v rámci Vervitu mám na starosti střih videí, správu YouTube kanálu a sem tam opravím i nějakou tu pravopisnou či stylistickou chybičku. Mám ráda matematiku a humanitní vědy, ale mimo školu se nejčastěji věnuji dalšímu vzdělávání, studiu korejštiny, střihu vlastních videí, grafickému designu a fitness či jiným sportům.',
    'photo': 'assets/photos/Ellen_Wdowkova.jpg'
  },
  {
    'name': 'Mai Lan Dang',
    'info': 'Zdravím, jmenuji se Lenka (Mai Lan) a ve Vervitu se věnuji převážně stříhání videí. Mimo školu se věnuji hudbě (tanec, produkce hudby, hra na nástroje) a hraní videoher. Rozhodla jsem se pomoct Vervitu, protože jsem chtěla svůj čas online využít v prospěch někoho jiného, než jsem já.',
    'photo': 'assets/photos/Mai_Lan_Dang.jpg'
  },
  {
    'name': 'Kryštof Píštěk',
    'info': 'Ahoj, studuji na gymnáziu Nový PORG a zaměřuji se hlavně na matematiku, fyziku, chemii a ekonomii. Mimo školu rád programuji hraji hry (jak počítačové, tak stolní), chodím na procházky a jezdím na kole. V rámci Vervitu mám na starost vývoj webových stránek.',
    'photo': 'assets/photos/Krystof_Pistek.jpg'
  }
];