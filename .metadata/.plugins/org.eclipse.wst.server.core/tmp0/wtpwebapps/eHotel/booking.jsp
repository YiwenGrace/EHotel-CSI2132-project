<%@page import="java.util.ArrayList"%>
<%@page import="eHotel.entities.Room"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Start Booking</title>
</head>
<body>
	<%
		String CusName = (String) request.getAttribute("CusName");
	%>
	<form method="post" action="roombook">
		<h3>
			Welcome,
			<%=CusName%></h3>
			<br>
				<h4>Here are the room(s) you booked</h4>
				<ul>
					<%
						Object obj1 = request.getAttribute("bookedRooms");
						ArrayList<Room> broomList = null;
						if (obj1 instanceof ArrayList) {
							broomList = (ArrayList<Room>) obj1;
						}
						if (broomList != null) {
							for (Room room : broomList) {
								String roominfo = room.getRoom_no() + "---" + room.getRoom_status();
					%>
					<li><%=roominfo%></li>
					<%
						}
						}
					%>
				</ul>
				<input type="hidden" name="cusName" value="<%=CusName%>" />
				
				<h4>Start booking a new room:</h4>
				
				<br>
				<h4>Select city: </h4>
				
				<select name = "City">
					<%
						Object obj2 = request.getAttribute("allCity");
						ArrayList<Room> cityList = null;
						if (obj2 instanceof ArrayList) {
							cityList = (ArrayList<Room>) obj2;
						}
						if (cityList != null) {
							for (Room city : cityList) {
								
					%>					
						<option>----</option>
						<option><%=city.getCity()%></option>

					<%
						}
						}
					%>
				</select>
				
				
				<br>
				<h4>Select hotel chain: </h4>
				
				<select name = "HotelChain">
					<%
						Object obj3 = request.getAttribute("allHotelChain");
						ArrayList<Room> hotelchList = null;
						if (obj3 instanceof ArrayList) {
							hotelchList = (ArrayList<Room>) obj3;
						}
						if (hotelchList != null) {
							for (Room hotelch : hotelchList) {
								
					%>					
						<option>----</option>
						<option><%=hotelch.getHotelChainAdd()%></option>

					<%
						}
						}
					%>
				</select>
				
				<br>
				<h4>Select hotel category: </h4>
				
				<select name = "HotelCategory">
					<%
						Object obj4 = request.getAttribute("allHotelCategory");
						ArrayList<Room> hotelcateList = null;
						if (obj4 instanceof ArrayList) {
							hotelcateList = (ArrayList<Room>) obj4;
						}
						if (hotelcateList != null) {
							for (Room hotelcate : hotelcateList) {
								
					%>					
						<option>----</option>
						<option><%=hotelcate.getHotelCategory()%></option>

					<%
						}
						}
					%>
				</select>
				
				<br>
				<h4>Select hotel: </h4>
				
				<select name = "Hotel">
					<%
						Object obj5 = request.getAttribute("allHotel");
						ArrayList<Room> hotelList = null;
						if (obj5 instanceof ArrayList) {
							hotelList = (ArrayList<Room>) obj5;
						}
						if (hotelList != null) {
							for (Room hotel : hotelList) {
								
					%>					
						<option>----</option>
						<option><%=hotel.getHotelAdd()%></option>

					<%
						}
						}
					%>
				</select>
				
				<br>
				<form method="get">
					<label>Check in date: </label>
					<input type="date" id="checkInDate" />
				</form>
				
				<br>
				<form method="get">
					<label>Check out date: </label>
					<input type="date" id="checkOutDate" />
				</form>
				
				<br>
				<h4>Select number of people: </h4>
				
				<select name = "capacity">
					<%
						Object obj6 = request.getAttribute("allRoomCap");
						ArrayList<Room> roomcapList = null;
						if (obj6 instanceof ArrayList) {
							roomcapList = (ArrayList<Room>) obj6;
						}
						if (roomcapList != null) {
							for (Room capacity : roomcapList) {
								
					%>					
						<option>----</option>
						<option><%=capacity.getRoomcap()%></option>

					<%
						}
						}
					%>
				</select>
				
				<br>
				<h4>Select price range: </h4>
				
				<select name = "price">
										
						<option>----</option>
						<option>less than 100</option>
						<option>100-300</option>
						<option>301-600</option>
						<option>greater than 600</option>

					<%
							}
						}
					%>
				</select>
				
				<br>
				<h4>Here are avaiable rooms</h4>

				<select name = "roomno">
					<%
						Object obj = request.getAttribute("allRooms");
						ArrayList<Room> roomList = null;
						if (obj instanceof ArrayList) {
							roomList = (ArrayList<Room>) obj;
						}
						if (roomList != null) {
							for (Room room : roomList) {
								/* String roominfo = room.getRoom_no() + "---" + room.getRoom_status(); */
					%>					
						<option><%=room.getRoom_no()%></option>

					<%
							}
						}
					%>
				</select>
				
				<button type="submit" onclick="return confirm('book?');">book</button>
	</form>
</body>
</html>