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

<%-- Récupération des valeurs A, B et C --%>
<% String valeurA = request.getParameter("a"); %>
<% String valeurB = request.getParameter("b"); %>
<% String valeurC = request.getParameter("c"); %>

<%-- Vérification de l'existence des valeurs --%>
<% if (valeurA != null && !valeurA.isEmpty() &&
     valeurB != null && !valeurB.isEmpty() &&
     valeurC != null && !valeurC.isEmpty()) { %>

    <%-- Conversion des valeurs en entiers --%>
    <% int a = Integer.parseInt(valeurA); %>
    <% int b = Integer.parseInt(valeurB); %>
    <% int c = Integer.parseInt(valeurC); %>

    <%-- Vérification de la condition et affichage du résultat --%>
    <% if (c > a && c < b) { %>
        <p>Oui, C est compris entre A et B.</p>
    <% } else { %>
        <p>Non, C n'est pas compris entre A et B.</p>
    <% } %>

<% } %>


<h2>Exercice 2 : Pair ou Impair ?</h2>

<%-- Récupération du nombre --%>
<% String valeurNombre = request.getParameter("nombre"); %>

<%-- Vérification de l'existence du nombre --%>
<% if (valeurNombre != null && !valeurNombre.isEmpty()) { %>

    <%-- Conversion du nombre en entier --%>
    <% int nombre = Integer.parseInt(valeurNombre); %>

    <%-- Vérification de la parité et affichage du résultat --%>
    <% if (nombre % 2 == 0) { %>
        <p>Le nombre est pair.</p>
    <% } else { %>
        <p>Le nombre est impair.</p>
    <% } %>

<% } %>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
