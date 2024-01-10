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

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurCarre = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurCarre != null && !valeurCarre.isEmpty()) { %>

<%-- Conversion de la valeur en entier --%>
<% int nombreCarre = Integer.parseInt(valeurCarre); %>

<%-- Boucle for pour afficher le carré d'étoiles --%>
<p>
<% for (int i = 0; i < nombreCarre; i++) { %>
    <% for (int j = 0; j < 5; j++) { %>
        <%= "*" %>
    <% } %>
    </br>
<% } %>
</p>

<% } %>


<h2>Exercice 2 : Triangle rectangle gauche</h2>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurTriangle = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurTriangle != null && !valeurTriangle.isEmpty()) { %>

<%-- Conversion de la valeur en entier --%>
<% int nombreTriangle = Integer.parseInt(valeurTriangle); %>

<%-- Boucle for pour afficher le triangle rectangle gauche --%>
<p>
<% for (int i = 1; i <= nombreTriangle; i++) { %>
    <% for (int j = 1; j <= i; j++) { %>
        <%= "*" %>
    <% } %>
    </br>
<% } %>
</p>

<% } %>



<h2>Exercice 3 : Triangle rectangle inversé</h2>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurTriangleGauche = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurTriangleGauche != null && !valeurTriangleGauche.isEmpty()) { %>

<%-- Conversion de la valeur en entier --%>
<% int nombreTriangleGauche = Integer.parseInt(valeurTriangleGauche); %>

<%-- Boucle for pour afficher le triangle rectangle inversé --%>
<p>
<% for (int i = 1; i <= nombreTriangleGauche; i++) { %>
    <% for (int j = 1; j <= nombreTriangleGauche - i; j++) { %>
        <%= "&nbsp;" %>
    <% } %>
    <% for (int k = 1; k <= i; k++) { %>
        <%= "*" %>
    <% } %>
    </br>
<% } %>
</p>

<% } %>


<h2>Exercice 4 : Triangle rectangle 2</h2>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurTriangleDroite = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurTriangleDroite != null && !valeurTriangleDroite.isEmpty()) { %>

<%-- Conversion de la valeur en entier --%>
<% int nombreTriangleDroite = Integer.parseInt(valeurTriangleDroite); %>

<%-- Boucle for pour afficher le triangle rectangle 2 --%>
<p>
<% for (int i = 1; i <= nombreTriangleDroite; i++) { %>
    <% for (int j = 1; j <= nombreTriangleDroite - i; j++) { %>
        <%= "&nbsp;" %>
    <% } %>
    <% for (int k = 1; k <= i; k++) { %>
        <%= "*" %>
    <% } %>
    </br>
<% } %>
</p>

<% } %>



<h2>Exercice 5 : Triangle isocele</h2>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurTriangleIsocele = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurTriangleIsocele != null && !valeurTriangleIsocele.isEmpty()) { %>

<%-- Conversion de la valeur en entier --%>
<% int hauteurTriangleIsocele = Integer.parseInt(valeurTriangleIsocele); %>

<%-- Boucle for pour afficher le triangle isocèle --%>
<p>
<% for (int i = 1; i <= hauteurTriangleIsocele; i++) { %>
    <% for (int j = 1; j <= hauteurTriangleIsocele - i; j++) { %>
        <%= "&nbsp;" %>
    <% } %>
    <% for (int k = 1; k <= 2 * i - 1; k++) { %>
        <%= "*" %>
    <% } %>
    </br>
<% } %>
</p>

<% } %>


<h2>Exercice 6 : Le demi losange</h2>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurDemiLosange = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurDemiLosange != null && !valeurDemiLosange.isEmpty()) { %>

<%-- Conversion de la valeur en entier --%>
<% int tailleDemiLosange = Integer.parseInt(valeurDemiLosange); %>

<%-- Boucle for pour afficher le demi-losange --%>
<p>
<% for (int i = 1; i <= tailleDemiLosange; i++) { %>
    <% for (int j = 1; j <= tailleDemiLosange - i; j++) { %>
        <%= "&nbsp;" %>
    <% } %>
    <% for (int k = 1; k <= i; k++) { %>
        <%= "*" %>
    <% } %>
    </br>
<% } %>

<% for (int i = tailleDemiLosange - 1; i >= 1; i--) { %>
    <p>
    <% for (int j = 1; j <= tailleDemiLosange - i; j++) { %>
        <%= "&nbsp;" %>
    <% } %>
    <% for (int k = 1; k <= i; k++) { %>
        <%= "*" %>
    <% } %>
    </br>
<% } %>

</p>
<% } %>

<h2>Exercice 7 : La table de multiplication</h2>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeurMultiplication = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeurMultiplication != null && !valeurMultiplication.isEmpty()) { %>

<%-- Conversion de la valeur en entier --%>
<% int nombreMultiplication = Integer.parseInt(valeurMultiplication); %>

<%-- Boucle for pour afficher la table de multiplication --%>
<p>
<% for (int i = 1; i <= 5; i++) { %>
    <% int resultatMultiplication = nombreMultiplication * i; %>
    <%= nombreMultiplication + " x " + i + " = " + resultatMultiplication %>
    </br>
<% } %>
</p>

<% } %>



<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
