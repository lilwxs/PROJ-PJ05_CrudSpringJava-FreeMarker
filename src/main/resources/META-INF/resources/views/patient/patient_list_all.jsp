<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${pageTitle}</title>
</head>
<body>
${pageTitle}
<table border="1">
    <tr>
        <th>ID</th>
        <th>Full Name</th>
        <th>Symptom</th>
        <th>Medical ID</th>
    </tr>
    <c:forEach var="patient" items="${listPatients}">
        <tr>
            <td>${patient.id}</td>
            <td>${patient.fullName}</td>
            <td>${patient.symptom}</td>
            <td>${patient.medicalID}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>