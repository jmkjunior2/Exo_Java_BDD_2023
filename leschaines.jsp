<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de charactères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

    <%-- Extraction du 3° caractère dans votre chaine --%>
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>

    <%-- Obtention d'une sous-chaîne --%>
    <% String sousChaine = chaine.substring(2, 6); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>

    <%-- Recharche de la lettre "e" --%>
    <% char recherche = 'e'; 
       int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>

    
<h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
import java.util.Scanner;

public class CompterLettreE {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Veuillez saisir une chaîne de caractères : ");
        String chaine = scanner.nextLine();

        int compteurE = 0;

        for (int i = 0; i < chaine.length(); i++) {
            if (chaine.charAt(i) == 'e' || chaine.charAt(i) == 'E') {
                compteurE++;
            }
        }

        System.out.println("Le nombre de 'e' dans la chaîne est : " + compteurE);

        scanner.close();
    }
}
<h2>Exercice 2 : Affichage verticale</h2>
import java.util.Scanner;

public class AffichageVertical {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Veuillez saisir un texte : ");
        String texte = scanner.nextLine();

        for (int i = 0; i < texte.length(); i++) {
            System.out.println(texte.charAt(i));
        }

        scanner.close();
    }
}

<h2>Exercice 3 : Retour à la ligne</h2>
import java.util.Scanner;

public class RetourALaLigne {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Veuillez saisir une phrase : ");
        String phrase = scanner.nextLine();

        String[] mots = phrase.split(" ");
        for (String mot : mots) {
            System.out.println(mot);
        }

        scanner.close();
    }
}

<h2>Exercice 4 : Afficher une lettre sur deux</h2>
import java.util.Scanner;

public class LettreSurDeux {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Veuillez saisir un texte : ");
        String texte = scanner.nextLine();

        for (int i = 0; i < texte.length(); i += 2) {
            System.out.print(texte.charAt(i));
        }

        scanner.close();
    }
}
<h2>Exercice 5 : La phrase en verlant</h2>
import java.util.Scanner;

public class Verlan {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Veuillez saisir une phrase : ");
        String phrase = scanner.nextLine();

        String[] mots = phrase.split(" ");
        for (String mot : mots) {
            for (int i = mot.length() - 1; i >= 0; i--) {
                System.out.print(mot.charAt(i));
            }
            System.out.print(" ");
        }

        scanner.close();
    }
}
<h2>Exercice 6 : Consonnes et voyelles</h2>
import java.util.Scanner;

public class ConsonnesVoyelles {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Veuillez saisir une phrase : ");
        String phrase = scanner.nextLine();

        int compteurConsonnes = 0;
        int compteurVoyelles = 0;

        phrase = phrase.toLowerCase(); // Convertir la phrase en minuscules pour simplifier la comparaison

        for (int i = 0; i < phrase.length(); i++) {
            char lettre = phrase.charAt(i);
            if (lettre >= 'a' && lettre <= 'z') {
                if (lettre == 'a' || lettre == 'e' || lettre == 'i' || lettre == 'o' || lettre == 'u') {
                    compteurVoyelles++;
                } else {
                    compteurConsonnes++;
                }
            }
        }

        System.out.println("Nombre de consonnes : " + compteurConsonnes);
        System.out.println("Nombre de voyelles : " + compteurVoyelles);

        scanner.close();
    }
}

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
