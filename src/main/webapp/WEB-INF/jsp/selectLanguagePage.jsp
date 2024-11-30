<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Select Language</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            text-align: center;
        }
        select {
            padding: 10px;
            font-size: 16px;
            width: 100%;
            margin-top: 20px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            margin-top: 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Select Language</h2>
        <form action="/movieReportLanguage" method="post">
            <label for="languages">Choose a Language:</label>
            <select id="languages" name="languages">
                <c:forEach var="language" items="${languageSet}">
                    <option value="${language}">${language}</option>
                </c:forEach>
            </select>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
