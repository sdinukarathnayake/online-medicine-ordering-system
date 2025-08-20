<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/registeredUser/ru-index.css">
    <title>OMOS - Home</title>
</head>
<body>
    <jsp:include page="ru-header.jsp"></jsp:include>

    <main>
    <c:forEach var="cus" items="${userDetails}">
		<input type="hidden" value="${cus.id}" name="indexId"/>		
	</c:forEach>
    
    
        <div class="main-text">
            <h1>
                Online Medicine Ordering System
            </h1>
            <p>
                Our online store offers a wide variety of prescription medications, non-prescription medications and 
                health supplies delivered directly to your door. Browse trusted brands and find what you need to 
                feel your best, all from the comfort of home.
            </p>
        </div>
        <img class="main-image" src="ROOT/medicine.png">
    </main>

    <section class="top-items">
        <div class="top-item">
            <a href=""></a>
        </div>
    </section>

    <jsp:include page="ru-footer.jsp"></jsp:include>
    
</body>
</html>