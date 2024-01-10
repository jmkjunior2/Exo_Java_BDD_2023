<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimu 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
    <p>La tableau contient <%= tableauDeChiffres.length %> valeurs</br>
    Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></br>
    Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></br>
    Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>
    
<h2>Exercice 1 : La carré de la première valeur</h2>

<%-- Récupération de la première valeur --%>
<% String valeur1 = request.getParameter("valeur1"); %>

<%-- Vérification de l'existence de la première valeur --%>
<% if (valeur1 != null && !valeur1.isEmpty()) { %>

    <%-- Conversion de la première valeur en double --%>
    <% double valeurCarre = Double.parseDouble(valeur1); %>

    <%-- Calcul et affichage du carré de la première valeur --%>
    <p>Le carré de la première valeur est : <%= valeurCarre * valeurCarre %></p>

<% } %>


<h2>Exercice 2 : La somme des 2 premières valeurs</h2>

<%-- Récupération des deux premières valeurs --%>
<% String valeur2_1 = request.getParameter("valeur2_1"); %>
<% String valeur2_2 = request.getParameter("valeur2_2"); %>

<%-- Vérification de l'existence des deux premières valeurs --%>
<% if (valeur2_1 != null && !valeur2_1.isEmpty() &&
     valeur2_2 != null && !valeur2_2.isEmpty()) { %>

    <%-- Conversion des deux premières valeurs en double --%>
    <% double valeurSomme1 = Double.parseDouble(valeur2_1); %>
    <% double valeurSomme2 = Double.parseDouble(valeur2_2); %>

    <%-- Calcul et affichage de la somme des deux premières valeurs --%>
    <p>La somme des deux premières valeurs est : <%= valeurSomme1 + valeurSomme2 %></p>

<% } %>


<h2>Exercice 3 : La somme de toutes les valeurs</h2>

<%-- Récupération de toutes les valeurs --%>
<% String[] toutesLesValeurs = request.getParameterValues("toutesLesValeurs"); %>

<%-- Vérification de l'existence d'au moins une valeur --%>
<% if (toutesLesValeurs != null && toutesLesValeurs.length > 0) { %>

    <%-- Initialisation de la somme --%>
    <% double sommeToutesLesValeurs = 0; %>

    <%-- Boucle for pour calculer la somme de toutes les valeurs --%>
    <% for (String valeur : toutesLesValeurs) { %>
        <% double valeurDouble = Double.parseDouble(valeur); %>
        <% sommeToutesLesValeurs += valeurDouble; %>
    <% } %>

    <%-- Affichage de la somme de toutes les valeurs --%>
    <p>La somme de toutes les valeurs est : <%= sommeToutesLesValeurs %></p>

<% } %>


<h2>Exercice 4 : La valeur maximum</h2>

<%-- Récupération de toutes les valeurs --%>
<% String[] toutesLesValeurs4 = request.getParameterValues("toutesLesValeurs4"); %>

<%-- Vérification de l'existence d'au moins une valeur --%>
<% if (toutesLesValeurs4 != null && toutesLesValeurs4.length > 0) { %>

    <%-- Initialisation de la valeur maximale --%>
    <% double valeurMax = Double.MIN_VALUE; %>

    <%-- Boucle for pour trouver la valeur maximale --%>
    <% for (String valeur : toutesLesValeurs4) { %>
        <% double valeurDouble = Double.parseDouble(valeur); %>
        <% if (valeurDouble > valeurMax) { %>
            <% valeurMax = valeurDouble; %>
        <% } %>
    <% } %>

    <%-- Affichage de la valeur maximale --%>
    <p>La valeur maximale est : <%= valeurMax %></p>

<% } %>

<h2>Exercice 5 : La valeur minimale</h2>

<%-- Récupération de toutes les valeurs --%>
<% String[] toutesLesValeurs5 = request.getParameterValues("toutesLesValeurs5"); %>

<%-- Vérification de l'existence d'au moins une valeur --%>
<% if (toutesLesValeurs5 != null && toutesLesValeurs5.length > 0) { %>

    <%-- Initialisation de la valeur minimale --%>
    <% double valeurMin = Double.MAX_VALUE; %>

    <%-- Boucle for pour trouver la valeur minimale --%>
    <% for (String valeur : toutesLesValeurs5) { %>
        <% double valeurDouble = Double.parseDouble(valeur); %>
        <% if (valeurDouble < valeurMin) { %>
            <% valeurMin = valeurDouble; %>
        <% } %>
    <% } %>

    <%-- Affichage de la valeur minimale --%>
    <p>La valeur minimale est : <%= valeurMin %></p>

<% } %>


<h2>Exercice 6 : La valeur le plus proche de 0</h2>

<%-- Récupération de toutes les valeurs --%>
<% String[] toutesLesValeurs6 = request.getParameterValues("toutesLesValeurs6"); %>

<%-- Vérification de l'existence d'au moins une valeur --%>
<% if (toutesLesValeurs6 != null && toutesLesValeurs6.length > 0) { %>

    <%-- Initialisation de la valeur la plus proche de 0 --%>
    <% double valeurPlusProcheDe0 = Double.parseDouble(toutesLesValeurs6[0]); %>

    <%-- Boucle for pour trouver la valeur la plus proche de 0 --%>
    <% for (String valeur : toutesLesValeurs6) { %>
        <% double valeurDouble = Double.parseDouble(valeur); %>
        <% if (Math.abs(valeurDouble) < Math.abs(valeurPlusProcheDe0)) { %>
            <% valeurPlusProcheDe0 = valeurDouble; %>
        <% } %>
    <% } %>

    <%-- Affichage de la valeur la plus proche de 0 --%>
    <p>La valeur la plus proche de 0 est : <%= valeurPlusProcheDe0 %></p>

<% } %>


<h2>Exercice 7 : La valeur le plus proche de 0 (2° version)</h2>

<%-- Récupération de toutes les valeurs --%>
<% String[] toutesLesValeurs7 = request.getParameterValues("toutesLesValeurs7"); %>

<%-- Vérification de l'existence d'au moins une valeur --%>
<% if (toutesLesValeurs7 != null && toutesLesValeurs7.length > 0) { %>

    <%-- Initialisation des valeurs positive et négative les plus proches de 0 --%>
    <% double valeurPlusProchePositif = Double.MAX_VALUE; %>
    <% double valeurPlusProcheNegatif = -Double.MAX_VALUE; %>

    <%-- Boucle for pour trouver les valeurs les plus proches de 0 --%>
    <% for (String valeur : toutesLesValeurs7) { %>
        <% double valeurDouble = Double.parseDouble(valeur); %>
        <% if (valeurDouble > 0 && valeurDouble < valeurPlusProchePositif) { %>
            <% valeurPlusProchePositif = valeurDouble; %>
        <% } else if (valeurDouble < 0 && valeurDouble > valeurPlusProcheNegatif) { %>
            <% valeurPlusProcheNegatif = valeurDouble; %>
        <% } %>
    <% } %>

    <%-- Comparaison et affichage de la valeur la plus proche de 0 --%>
    <% if (Math.abs(valeurPlusProchePositif) < Math.abs(valeurPlusProcheNegatif)) { %>
        <p>La valeur la plus proche de 0 est : <%= valeurPlusProchePositif %></p>
    <% } else { %>
        <p>La valeur la plus proche de 0 est : <%= valeurPlusProcheNegatif %></p>
    <% } %>

<% } %>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
