<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
   
    
<h2>Exercice 1 : Comparaison 1</h2>
import java.util.Scanner;

public class exo1{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Entrez la valeur de A : ");
        int a = scanner.nextInt();
        
        System.out.print("Entrez la valeur de B : ");
        int b = scanner.nextInt();
        
        System.out.print("Entrez la valeur de C : ");
        int c = scanner.nextInt();
        
        if (c > a && c < b) {
            System.out.println("Oui, C est compris entre A et B.");
        } else {
            System.out.println("Non, C n'est pas compris entre A et B.");
        }
    }
}

<h2>Exercice 2 : Pair ou Impair ?</h2>
import java.util.Scanner;

public class exo2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Entrez un nombre entier : ");
        int nombre = scanner.nextInt();
        
        if (nombre % 2 == 0) {
            System.out.println("Le nombre est pair.");
        } else {
            System.out.println("Le nombre est impair.");
        }
    }
}
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
