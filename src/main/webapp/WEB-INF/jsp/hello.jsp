<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>

  <body>
    <h2>Nom du serveur : <%= request.getServerName() %></h2>
    <h2>Port d'écoute du serveur : <%= request.getServerPort() %></h2>
    <h2>IP du client : <%= request.getRemoteHost() %></h2>
    <h2>Méthode http : <%= request.getMethod() %></h2>
  </body>
</html>
