<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
import java.util.Scanner;

public class one {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Entrez un nombre : ");
        int nombre = scanner.nextInt();
        
        afficherEtoiles(nombre);
    }
    
    public static void afficherEtoiles(int nombre) {
        for (int i = 0; i < nombre; i++) {
            for (int j = 0; j < 5; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
<h2>Exercice 2 : Triangle rectangle gauche</h2>
import java.util.Scanner;

public class one {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Entrez un nombre : ");
        int nombre = scanner.nextInt();
        
        afficherEtoiles(nombre);
    }
    
    public static void afficherEtoiles(int nombre) {
        for (int i = 0; i < nombre; i++) {
            for (int j = 0; j < 5; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}

<h2>Exercice 3 : Triangle rectangle inversé</h2>
import java.util.Scanner;

public class trois {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Entrez un nombre : ");
        int nombre = scanner.nextInt();
        
        afficherTriangleGauche(nombre);
    }
    
    public static void afficherTriangleGauche(int nombre) {
        for (int i = 1; i <= nombre; i++) {
            for (int j = 1; j <= nombre - i; j++) {
                System.out.print(" ");
            }
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}

<h2>Exercice 4 : Triangle rectangle 2</h2>
import java.util.Scanner;


public class quatre {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Entrez un nombre : ");
        int nombre = scanner.nextInt();
        
        afficherTriangleDroite(nombre);
    }
    
    public static void afficherTriangleDroite(int nombre) {
        for (int i = 1; i <= nombre; i++) {
            for (int j = 1; j <= nombre - i; j++) {
                System.out.print(" ");
            }
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }
            System.out.println();
        }

    }
}

<h2>Exercice 5 : Triangle isocele</h2>

import java.util.Scanner;

public class cinq {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("entrer le nb d'etoile : ");
        int hauteur = scanner.nextInt();
        
        afficherTriangle(hauteur);
    }
    
    public static void afficherTriangle(int hauteur) {
        for (int i = 1; i <= hauteur; i++) {
            for (int j = 1; j <= hauteur - i; j++) {
                System.out.print(" ");
            }
            for (int k = 1; k <= 2 * i - 1; k++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}

<h2>Exercice 6 : Le demi losange</h2>
import java.util.Scanner;

public class DemiLosange {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Veuillez saisir la taille du demi-losange : ");
        int taille = scanner.nextInt();

        // Partie supérieure du demi-losange
        for (int i = 1; i <= taille; i++) {
            for (int j = 1; j <= taille - i; j++) {
                System.out.print("&nbsp;");
            }
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }
            System.out.println();
        }

        // Partie inférieure du demi-losange
        for (int i = taille - 1; i >= 1; i--) {
            for (int j = 1; j <= taille - i; j++) {
                System.out.print("&nbsp;");
            }
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }
            System.out.println();
        }

    }
}

<h2>Exercice 7 : La table de multiplication</h2>
import java.util.Scanner;

public class TableMultiplication {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Veuillez saisir le nombre pour la table de multiplication : ");
        int nombre = scanner.nextInt();

        for (int i = 1; i <= 5; i++) {
            int resultat = nombre * i;
            System.out.println(nombre + " x " + i + " = " + resultat);
        }

    }
}


<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
