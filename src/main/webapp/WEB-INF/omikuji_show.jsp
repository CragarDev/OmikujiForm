<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<!-- c:out ; c:forEach ; c:if -->
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!-- Formatting (like dates) -->
		<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
			<!-- form:form -->
			<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
				<!-- for rendering errors on PUT routes -->
				<%@ page isErrorPage="true" %>

					<!DOCTYPE html>

					<html>

					<head>
						<meta charset="UTF-8" />
						<title>Omikuji-show</title>
						<!-- Bootstrap -->
						<!-- CSS only -->
						<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
							rel="stylesheet"
							integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
							crossorigin="anonymous" />
						<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
							integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
							crossorigin="anonymous"></script>
						<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
							integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
							crossorigin="anonymous"></script>
						<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
						<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
						<link rel="stylesheet" href="/css/style.css" />
					</head>

					<body>
						<!-- Beginning of Container -->
						<div class="container w-50">
							<h2 class="text-success text-center">Here is your Omikuji!</h2>
							<br />

							<p class="w-100"></p>

							<p class="w-100"></p>

							<div class="container oki_box w-50">
								<h3 text-center> in <span>
										<c:out value="${omikujiList.number}" />
									</span> years, you will live in
									<span>
										<c:out value="${omikujiList.city}" />
									</span> with <span>
										<c:out value="${omikujiList.person}" />
									</span> as your roommate, selling
									<span>
										<c:out value="${omikujiList.hobby}" />
									</span> for a living.
									The next time you see a <span>
										<c:out value="${omikujiList.thing}" />
									</span>,you will have good luck.
									Also, <span>
										<c:out value="${omikujiList.nice}" />
									</span>
								</h3>
							</div>

							<p class="w-100"></p>
							<!-- == Home button == -->
							<a class="btn btn-primary float-end mb-3" href="/omikuji">Back</a>
							<p class="w-100"></p>
							<p class="w-100"></p>

						</div>
						<!-- End of Container -->
						<script src="/js/app.js"></script>
					</body>

					</html>