<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Kost App</title>
	<link href="<c:url value='/resources/css/common.css' />" rel="stylesheet">
</head>

<body>
	<table class="main">
		<tr class="header">
			<td height="80px">
				<!-- HEADER  --> <jsp:include page="include/header.jsp" />
			</td>
		</tr>
		<tr class="upperMenu">
			<td height="25px">
				<!-- Upper Menu  --> <jsp:include page="include/upperMenu.jsp" />
			</td>
		</tr>
		<tr>
			<td height="350px">
				<!-- Page content table --> <!-- //<div style="overflow-x: auto;"> -->
				<table class="content">
					<tr>
						<td width="100px">
							<!--Left Side Menu  --> <%-- <jsp:include page="include/guestLeftMenu.jsp" /> --%>
						</td>
						<td>
							<!--Main content  --> <!--table with guests  --> <!-- <div class="description">Hotel status:</div> <br> -->
							<!--internal table  -->
							<table style="vertical-align: top;" align="center">
								<tr>
									<td colspan="4"><div class="description">Hotel
											status:</div></td>
								</tr>
								<tr>
									<!--internal table cell one  -->
									<td class="statusTable">
										<!--status table  -->
										<table class="billTable">
											<!-- Heading  -->
											<tr>
												<th>Rooms:</th>
												<th></th>
											</tr>
											<!-- First row  -->
											<tr>
												<td>Number of rooms:</td>
												<td><div style="font-weight: bold">
														 ${jumlahKamar}</div></td>


											</tr>
											<tr>
												<td>Occupied rooms:</td>
												<td><div style="font-weight: bold">
														 ${jumlahOccupiedRooms}</div></td>


											</tr>

											<tr>
												<td>Free rooms:</td>
												<td><div style="font-weight: bold">
														 ${jumlahKamarKosong}</div></td>


											</tr>
											<tr>
												<td>Free standard rooms:</td>
												<td><div style="font-weight: bold">
														 ${jumlahKamarStandardKosong}</div></td>


											</tr>
											<tr>
												<td>Free business rooms:</td>
												<td><div style="font-weight: bold">
														 ${jumlahKamarBisnisKosong}</div></td>


											</tr>

											<tr>
												<td>Free premium rooms:</td>
												<td><div style="font-weight: bold">
														 ${jumlahKamarPremiumKosong}</div></td>


											</tr>

										</table>
									</td>

									<!--internal table cell two  -->
									<td>
									<th> </th>
									</td>

									<!--internal table cell three  -->
									<td class="statusTable">
										<table class="statusRight">
											<tr>
												<th>Guests:</th>
												<th></th>
											</tr>
											<tr>
												<td>Number of Guests:</td>
												<td><div style="font-weight: bold">
														 ${jumlahPenghuni}</div></td>
											</tr>
											<tr>
												<td>Upcoming checkouts:</td>
												<td><div style="font-weight: bold">
														 ${upcommingCheckOuts}</div></td>
											</tr>
										</table>
									</td>
							</table>
							<div class="error"> <b>${noAdminLoggedIn}</b></div>
						</td>
					</tr>
				</table> <!-- </div> -->
			</td>
		</tr>
		<tr>
			<td height="25px">
				<!-- Footer  --> <jsp:include page="include/footer.jsp" />
			</td>
		<tr>
	</table>


</body>
</html>