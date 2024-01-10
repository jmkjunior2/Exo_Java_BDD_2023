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

<%-- Récupération de la chaîne de caractères --%>
<% String chaine = request.getParameter("chaine"); %>

<%-- Vérification de l'existence de la chaîne --%>
<% if (chaine != null && !chaine.isEmpty()) { %>

    <%-- Initialisation du compteur --%>
    <% int compteurE = 0; %>

    <%-- Boucle for pour compter le nombre de 'e' --%>
    <% for (int i = 0; i < chaine.length(); i++) { %>
        <% if (chaine.charAt(i) == 'e' || chaine.charAt(i) == 'E') { %>
            <% compteurE++; %>
        <% } %>
    <% } %>

    <p>Le nombre de 'e' dans la chaîne est : <%= compteurE %></p>

<% } %>

<h2>Exercice 2 : Affichage verticale</h2>

<%-- Récupération du texte --%>
<% String texte = request.getParameter("texte"); %>

<%-- Vérification de l'existence du texte --%>
<% if (texte != null && !texte.isEmpty()) { %>

    <%-- Boucle for pour afficher le texte en vertical --%>
    <p>
    <% for (int i = 0; i < texte.length(); i++) { %>
        <%= texte.charAt(i) %></br>
    <% } %>
    </p>

<% } %>


<h2>Exercice 3 : Retour à la ligne</h2>

<%-- Récupération de la phrase --%>
<% String phrase = request.getParameter("phrase"); %>

<%-- Vérification de l'existence de la phrase --%>
<% if (phrase != null && !phrase.isEmpty()) { %>

    <%-- Split de la phrase en mots --%>
    <% String[] mots = phrase.split(" "); %>

    <%-- Boucle for pour afficher les mots en colonne --%>
    <p>
    <% for (String mot : mots) { %>
        <%= mot %></br>
    <% } %>
    </p>

<% } %>


<h2>Exercice 4 : Afficher une lettre sur deux</h2>

<%-- Récupération du texte --%>
<% String texte = request.getParameter("texte"); %>

<%-- Vérification de l'existence du texte --%>
<% if (texte != null && !texte.isEmpty()) { %>

    <%-- Boucle for pour afficher une lettre sur deux --%>
    <p>
    <% for (int i = 0; i < texte.length(); i += 2) { %>
        <%= texte.charAt(i) %>
    <% } %>
    </p>

<% } %>

<h2>Exercice 5 : La phrase en verlant</h2>

<%-- Récupération de la phrase --%>
<% String phrase = request.getParameter("phrase"); %>

<%-- Vérification de l'existence de la phrase --%>
<% if (phrase != null && !phrase.isEmpty()) { %>

    <%-- Split de la phrase en mots --%>
    <% String[] mots = phrase.split(" "); %>

    <%-- Boucle for pour afficher la phrase en verlan --%>
    <p>
    <% for (String mot : mots) { %>
        <% for (int i = mot.length() - 1; i >= 0; i--) { %>
            <%= mot.charAt(i) %>
        <% } %>
        <%= " " %>
    <% } %>
    </p>

<% } %>

<h2>Exercice 6 : Consonnes et voyelles</h2>

<%-- Récupération de la phrase --%>
<% String phrase = request.getParameter("phrase"); %>

<%-- Vérification de l'existence de la phrase --%>
<% if (phrase != null && !phrase.isEmpty()) { %>

    <%-- Initialisation des compteurs --%>
    <% int compteurConsonnes = 0; %>
    <% int compteurVoyelles = 0; %>

    <%-- Conversion de la phrase en minuscules --%>
    <% phrase = phrase.toLowerCase(); %>

    <%-- Boucle for pour compter les consonnes et les voyelles --%>
    <% for (int i = 0; i < phrase.length(); i++) { %>
        <% char lettre = phrase.charAt(i); %>
        <% if (lettre >= 'a' && lettre <= 'z') { %>
            <% if (lettre == 'a' || lettre == 'e' || lettre == 'i' || lettre == 'o' || lettre == 'u') { %>
                <% compteurVoyelles++; %>
            <% } else { %>
                <% compteurConsonnes++; %>
            <% } %>
        <% } %>
    <% } %>

    <p>Nombre de consonnes : <%= compteurConsonnes %></p>
    <p>Nombre de voyelles : <%= compteurVoyelles %></p>

<% } %>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
