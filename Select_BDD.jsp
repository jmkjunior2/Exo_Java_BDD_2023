<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Connexion à MariaDB via JSP</title>
</head>
<body>
    <h1>Exemple de connexion à MariaDB avec JSP</h1>
    <% 
    String url = "jdbc:mariadb://localhost:3306/films";
    String user = "mysql";
    String password = "mysql";

        // Charger le pilote JDBC (pilote disponible dans WEB-INF/lib)
        Class.forName("org.mariadb.jdbc.Driver");

        // Établir la connexion
        Connection conn = DriverManager.getConnection(url, user, password);
        // Exemple de requête SQL
        String sql = "SELECT idFilm, titre, année FROM Film WHERE année >= 2000";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();

        // Afficher les résultats (à adapter selon vos besoins)
        while (rs.next()) {
            String colonne1 = rs.getString("idFilm");
            String colonne2 = rs.getString("titre");
            String colonne3 = rs.getString("année");
            // Faites ce que vous voulez avec les données...
            //Exemple d'affichage de 2 colonnes
            out.println("id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</br>");
        }

        // Fermer les ressources 
        rs.close();
        pstmt.close();
        conn.close();
    %>

<h2>Exercice 1 : Les films entre 2000 et 2015</h2>

<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="your.package.Movie" %>
<%@ page import="your.package.MovieDatabase" %>

<%
    List<Movie> moviesBetween2000And2015 = new ArrayList<>();
    List<Movie> allMovies = MovieDatabase.getAllMovies(); // Supposons que MovieDatabase.getAllMovies() renvoie une liste de tous les films

    for (Movie movie : allMovies) {
        if (movie.getYear() > 2000 && movie.getYear() < 2015) {
            moviesBetween2000And2015.add(movie);
        }
    }
%>

<%-- Affichage des films entre 2000 et 2015 --%>
<h3>Films entre 2000 et 2015 :</h3>
<ul>
    <% for (Movie movie : moviesBetween2000And2015) { %>
        <li><%= movie.getTitle() %> - <%= movie.getYear() %></li>
    <% } %>
</ul>


<h2>Exercice 2 : Année de recherche</h2>

<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="your.package.Movie" %>
<%@ page import="your.package.MovieDatabase" %>

<%
    int searchYear = Integer.parseInt(request.getParameter("searchYear"));
    List<Movie> moviesByYear = new ArrayList<>();
    List<Movie> allMovies = MovieDatabase.getAllMovies();

    for (Movie movie : allMovies) {
        if (movie.getYear() == searchYear) {
            moviesByYear.add(movie);
        }
    }
%>

<%-- Affichage des films pour l'année de recherche --%>
<h3>Films pour l'année <%= searchYear %> :</h3>
<ul>
    <% for (Movie movie : moviesByYear) { %>
        <li><%= movie.getTitle() %> - <%= movie.getYear() %></li>
    <% } %>
</ul>

<h2>Exercice 3 : Modification du titre du film</h2>

<%@ page import="your.package.Movie" %>
<%@ page import="your.package.MovieDatabase" %>

<%
    int movieIdToUpdate = Integer.parseInt(request.getParameter("movieIdToUpdate"));
    String newTitle = request.getParameter("newTitle");

    Movie movieToUpdate = MovieDatabase.getMovieById(movieIdToUpdate);

    if (movieToUpdate != null) {
        movieToUpdate.setTitle(newTitle);
        // Vous devrez probablement sauvegarder les modifications dans la base de données ici
    }
%>

<%-- Formulaire pour la modification du titre du film --%>
<form action="updateMovieTitle.jsp" method="post">
    <label for="movieIdToUpdate">ID du film à mettre à jour :</label>
    <input type="text" name="movieIdToUpdate" required>

    <label for="newTitle">Nouveau titre :</label>
    <input type="text" name="newTitle" required>

    <input type="submit" value="Mettre à jour le titre">
</form>

<h2>Exercice 4 : La valeur maximum</h2>

<%@ page import="your.package.Movie" %>
<%@ page import="your.package.MovieDatabase" %>

<%
    String title = request.getParameter("title");
    int year = Integer.parseInt(request.getParameter("year"));

    // Création d'une nouvelle instance de Movie
    Movie newMovie = new Movie();
    newMovie.setTitle(title);
    newMovie.setYear(year);

    // Ajout du nouveau film à la base de données
    MovieDatabase.addMovie(newMovie);
%>

<%-- Formulaire pour l'ajout d'un nouveau film --%>
<form action="addNewMovie.jsp" method="post">
    <label for="title">Titre du film :</label>
    <input type="text" name="title" required>

    <label for="year">Année du film :</label>
    <input type="text" name="year" required>

    <input type="submit" value="Ajouter le film">
</form>


</body>
</html>
