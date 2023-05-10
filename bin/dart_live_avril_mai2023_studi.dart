import 'dart:math';

import 'package:dart_live_avril_mai2023_studi/dart_live_avril_mai2023_studi.dart' as dart_live_avril_mai2023_studi;
import 'dart:io';
import 'dart:ffi';

// LIVE 2 
/*
pour déclarer une variable : mot clé var 
Dart il va deviner le type de la variable - implicitement 
Possibilité de déclarer explicitement des variables avec un type 
- int -> entier
- double -> nombre à virgule
- bool  -> true ou false
- String  -> chaine
Pour déclarer des constantes 
const : au moment de la compilation
final : au moment de l'exécution du programme

? déclaration d'une variable qui peut etre null 
// unwrapping 

int? maVariable;

le mot clé late va permettre de définir une variable  
le mot clé runTimeType : méthode = > retourne le type de la variable

print  

*/


void main(List<String> arguments) {
  var maPremierVariable = 1;
  print(maPremierVariable.runtimeType);
  var maSecondeVariable = 14.5;  // définition implicite d'une variable
  print(maSecondeVariable.runtimeType);

  int maTroisiemeVariable = 3; // definition explicite du type de la variable
  print(maTroisiemeVariable.runtimeType);


  String maChaineDeCaractere = "Bienvenue sur ce cours sur Dart";
  print(maChaineDeCaractere);
  print(maChaineDeCaractere.length);

  var maMoyenne1 = 16.5;
  int maMoyenne2 = 17;
  var maMoyenne3 = 18;

  var somme =   maMoyenne2 + maMoyenne3;
  print(somme);
  print(somme.runtimeType);

   // swift 32bits (float) et 64bits (double)  
  var maNouvelleVariable = 1.0;
  print(maNouvelleVariable.runtimeType);
 
  
  // les opérateurs arithmétiques + , - , / , * , %
  var nouvelleVariable = 4; // affectation 
  nouvelleVariable++; 
  nouvelleVariable +=2;
  print(nouvelleVariable); 

  nouvelleVariable *=2;
  print(nouvelleVariable);
  nouvelleVariable++;
  print(nouvelleVariable%2);

  // opérateur unaire : !, :, = 
  bool monEtat = false;
  monEtat = !monEtat;
  print(monEtat);

  print("mon etat est $monEtat");

  // opérateur logique 
  // && : et logique || : ou logique , &| : xor (ou exclusif)
  bool digicode = false;
  bool badge = false;
  //une variable booleen : 2 états : vrai ou faux 

  if (digicode|| badge){ // ou logique 
    print("Nous pouvons rentrer");
  }else {
    print("nous  ne pouvez pas rentré");
  }


  // les boucles 
  // while => tant qu'une condition est vérifié 
  var i = 0;
  while(i<=5){
    print("$i bonjour tout le monde");
    i++;
  }

  // do while
  var j = 5;
  do {
    print("bonjour avec un do while");
    j++;
  }while (j<4);    // tant que j<4

  var t= 0;
  while(t<10){
    t++;
    var s=0;
    print("$t");
    while(s<10){
      s++;
      print("$s");
    }

    // les mots clé break et continue : permet de sortir de la boucle (break) ou de passer à l'interation suivante avec le mot clé (continue)
    print("=============================");
    print("* mot clé clé continue");
    var z = 0;
    while(z<10){
      z++;
      // le mot clé if (si) pour faire une condition 
      if (z%2 == 0){
        continue;
      }
      // si on passe dans le bloc avec continue on ne fait pas l'instruction suivante
      print("$z est numbre impaire");
    }


      print("=======================");
      print(" Mot clé : break");
      var p = 0;
      while(p < 20) {
        if (p == 2){
          break; // => sort de la boucle
          
        }
        print("$p");
        p++;
      }

      // le mot clé : for de faire un nombre d'itération on va se spécifié un pas d'itération
      print("=============================");
      print("Boucle FOR");
      print("==============================");
      for (var i=0; i<5; i++){
        print("$i bonjour tout le monde");
      }


      // les chaines de caractères 
      String maChaine1 = "ma première chaine de caractère";
      String maChaine2 = 'ma deuxieme chaine';
      String maChaine3 = 'C\'est le printemps';
      print(maChaine3);

      String multiLigneString = """ bonjour 
        les apprenants
        sur ce live 
        """;
      print(multiLigneString);

      var nom = "Pierre";
      var prenom = "Dupond";
      String chaineConcatene = "$nom $prenom";
      print(chaineConcatene);

      // int, double, string, bool => ce sont des objets , on va pouvoir leur appliquer des méthodes
      print(chaineConcatene.toUpperCase());
      print(chaineConcatene.codeUnits);  // retourne les code de chaque caractere 

      print("La longueur de la chaine de caractère est de ${chaineConcatene.length}");
      


  }


  /*
  print("Saisir un nom");
  var nomAuClavier = stdin.readLineSync(); // ca permet d'attendre la saisie de caractère au clavier et valider par entree ou return 
  if(nomAuClavier!.contains("J")){ // unwrap pour déballer la variable
    print("ton nom contient un j");
  }*/

  //--------------------------------
  // Live 4 : les collections 
  //--------------------------------
  // LES tabeaux : mot clé "List"
  // Les map ou les dictionnaires ("clé","valeur") : mot clé map
  // Les Sets 
  //
  //
  //

  // List<type> nomDuTableau = []   <---------------- création et initialisation d'un tableau vide
  List<String> fruits = ["pommes","bananes","cerises","fraises"];
  print("==================================");
  print("// Lists / Tableaux");
  print("===================================");
  var element1 = fruits[0];  // <<<<<< premier element du tableau est à l'index 0
   print(element1);
  print(fruits.length);
  fruits.add("ananas");
  print(fruits.length);
  print(fruits);
  fruits.insert(1, "Cerises");
  print(fruits);
  print("Les nombre de fruits est de ${fruits.length}");

  var unTableauDeNom = List<String>.filled(10, "A completer");
  print(unTableauDeNom);
  var unTableauEntier = List<int>.filled(10, 0);
  //fruits.clear();
  print(unTableauEntier);
  //unTableauEntier.add(4);
  //unTableauEntier.clear();
  var valeursEntiers = List<int>.generate(10, (index) => index * index);
  print(valeursEntiers);
  valeursEntiers.clear();
  print(valeursEntiers);
 // unTableauEntier.clear();
//print(unTableauDeNom);

  unTableauEntier[0] = 1;
  print(unTableauEntier);
  print(unTableauEntier.length);

  fruits.forEach((element) {
    print("Le fruit courant est ${element}");
  });
   print(fruits);
  //fruits.reversed;
  //Set<String> fruitsInvers = fruits.reversed

  // les maps : collections ou structures de données avec un systeme de clé/valeur
  var words =<int,String> {1:"ciel",2:"mer",3:"soleil"};
  print(words.runtimeType);

  print(words.isEmpty);

  words.putIfAbsent(5, () => "lune");
  print(words);
  print(words);
  final iceGiants = <int, String>{1: 'Uranus', 8: 'Neptune'};
  words.addEntries(iceGiants.entries);
  print(words);
  //words.removeWhere((key,valeur) => valeur.startsWith("l"));

  // 2eme façon de déclarer une map 
  Map <String,double> population = new Map();
  population.putIfAbsent("Paris", () => 4000000);
  print(population);

population.putIfAbsent("Lyon", () => 1500000);
print(population);

var firstSet = <String>{"farine","pate","café"};
var secondSet = <String>{"farine","fromage","riz"};
print(firstSet);
print(secondSet);

print("intersection des 2 sets ${firstSet.intersection(secondSet)}");
print("l'union des 2 sets ${firstSet.union(secondSet)}");

disBonjour(2);
disMessageNbFois("Bonjour", "Julien", 2);
print(calculAire(500, 50));
  List<double> mesNotes = [16,18, 14,19];
  double moy = calculMoyenne("Salomon",mesNotes);

print(AireCercle(10));
double largeurRectange = 100;
var longeurRectange = 200;
var perimetre = calculPerimetreRectangle(largeurRectange, longeurRectange.toDouble());
print("Le perimètre est de ${perimetre}");
print(multiplication(2,3));

var triple = applyMultiplication(3);
print(triple(3));




var auteur2 = Realisateur('Besson', "Jean Luc", ["5eme element","Jean Darc"]);
print(auteur2.toString());
Materiel el1 = Materiel.newMat("Fer", EtatPhysique.solid);
var el2 = Materiel.newMat("Mecure", EtatPhysique.liquid);
var el3 = Materiel.newMat("Méthane", EtatPhysique.gazeux);
var el4 = Materiel.newMat("Buthane", EtatPhysique.gazeux);

print(Materiel.metaCount);

var rectangle1 = Rectangle(10, 5);
print(rectangle1.aire());
print(rectangle1.perimetre());



}

var multiplication = (int a1, int b1) => a1 * b1;

Function applyMultiplication(num multi){
  return (num value){
    return value * multi;
  };
}


/*

typeDeLaValeur de Retour + nomDeLaFonction(argument){ le bloc d'instruction}



*/
// des fonctions sans valeurs de retours
void disBonjour(int nbFois){
  for(int i=0; i<= nbFois; i++){
    print("disBOnjour");
  }



}

void disMessageNbFois(String msg, String prenom, int nbFois){
  for(int i=0;i<nbFois; i++){
    print("${msg} ${prenom}");
  }
}

// fonctions avec valeurs de retour  
double calculAire(double longueur, double largeur){
  return longueur*largeur;
}

double calculMoyenne(String NomEleve, List<double> notes){
  double moyenne =0;
  double cumul = 0;
  notes.forEach((note) {
    cumul = cumul + note;
   });
   moyenne = cumul/notes.length;
   print("La moyenne de ${NomEleve} est de ${moyenne}");
  return moyenne;
}

double AireCercle(double rayon){
  double aire = 2 * pi * rayon;
  return aire;
}


double calculPerimetreRectangle(double longueur, double largeur){
  return 2 * (largeur+longueur);
}

// LIVE 6 
// POO : programmation orientée objet
// concept central dans le développement informarTIQU
// OBJETS : Int, String, Bool, List, map
// Voiture -  etudiant - une fenentre
// voiture : volant - roues - carosserie - roule - demarer 

// ----> class 


class Realisateur {
  String nom ="";
  late String prenom = "";
  var filmographie = <String>[];

  Realisateur(this.nom, this.prenom, this.filmographie);

 @override
  String toString() {
    // TODO: implement toString
    var realisateur = "$nom $prenom";
    for (var film in filmographie){
      realisateur += '- $film';
    }
    return realisateur;


  }
  
  void ajouterUnFilm(String nomDeFilm){
    filmographie.add(nomDeFilm);
  }

}


class Materiel {
  late String nom;
  late EtatPhysique etat;

  // définition d'une variable static, elle va être partager par tous les objets
  static int metaCount = 0;

  Materiel._inter(this.nom, this.etat);

  static Materiel newMat(String nom, EtatPhysique etat){
    metaCount++;
    return Materiel._inter(nom, etat);
    
  }


}



enum EtatPhysique {
  gazeux,
  solid,
  liquid
}


/*
Une Class Rectangle 
2 propriétés : longueur, largeur
- 1 constructor
- 2 méthodes : périmiètre, aire 
*/

class Rectangle {
  // propriétés 
  int? longueur;
  int? largeur;
  // constructeur
  Rectangle(this.longueur, this.largeur);

  int aire(){
    int surface = 0;
    if (this.largeur != null && this.longueur !=null){
      surface = this.largeur! * this.longueur!;
    }
    return surface;
  }

  int perimetre(){
    return 2 * (this.largeur! + this.longueur!);
  }



}