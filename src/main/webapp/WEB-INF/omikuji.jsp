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
						<title>Omikuji</title>
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
							<h2 class="text-success text-center">Send an Omikuji!</h2>
							<br />

							<p class="w-100"></p>

							<!-- My snippet form -->

							<p class="w-100"></p>
							<!-- == form == -->
							<div class="container bg-secondary text-light rounded-3 w-50">
								<form action="/omikuji/process" method="post">

									<div class="mb-3">
										<label for="number" class="form-label">Pick any number from 5 to 25.</label>
										<input type="number" name="number" class="form-control w-25" placeholder="5">
									</div>

									<div class="mb-3">
										<label for="city" class="form-label">Enter the name of a city.</label>
										<input type="text" name="city" class="form-control" placeholder="city">
									</div>

									<div class="mb-3">
										<label for="person" class="form-label">Enter the name of any real
											person.</label>
										<input type="text" name="person" class="form-control" placeholder="person">
									</div>

									<div class="mb-3">
										<label for="hobby" class="form-label">Enter professional endeavor or
											hobby.</label>
										<input type="text" name="hobby" class="form-control" placeholder="hobby">
									</div>

									<div class="mb-3">
										<label for="thing" class="form-label">Enter any type of living thing.</label>
										<input type="text" name="thing" class="form-control" placeholder="thing">
									</div>

									<div class="mb-3">
										<label for="nice" class="form-label">Say something nice to someone.</label>
										<textarea name="nice" id="" cols="30" rows="5"
											placeholder="say something nice to someone"></textarea>
									</div>

									<h4 class="text-success text-center">Send and show a friend!</h4>

									<button type="submit" class="btn btn-warning float-end">Send</button>

								</form>
							</div>

							<p class="w-100"></p>


							<p class="w-100"></p>

						</div>
						<!-- End of Container -->
						<script src="/js/app.js"></script>
					</body>

					</html>