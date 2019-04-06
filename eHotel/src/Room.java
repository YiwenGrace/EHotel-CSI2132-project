
public class Room {
		
		private int room_no;
		private String hotel_chain;
		private String hotel;
		private String view;
		private float price;
		private String amenities;
		private String extend;
		private String problem;
		private int capacity;
		private String room_status;
		private String customer_ssn;
		private String city;
		
		public Room() {
			
		}
		
		public Room(int room_no, String room_status) {
			this.room_no = room_no;
			this.room_status = room_status;
		}

		public int getRoom_no() {
			return room_no;
		}

		public String getRoom_status() {
			return room_status;
		}

		public void setRoom_status(String room_status) {
			this.room_status = room_status;
		}

		public String getCustomer_ssn() {
			return customer_ssn;
		}

		public void setCustomer_ssn(String customer_ssn) {
			this.customer_ssn = customer_ssn;
		}
		
		public String getHotelChainAdd() {
			return hotel_chain;
		}

		public void setHotelChainAdd(String hotel_chain) {
			this.hotel_chain = hotel_chain;
		}
		
		public String getHotelAdd() {
			return hotel;
		}

		public void sethotel(String hotel) {
			this.hotel = hotel;
		}
		
		public String getview() {
			return view;
		}

		public void setview(String view) {
			this.view = view;
		}
		
		public float getprice() {
			return price;
		}

		public void setprice(float price) {
			this.price = price;
		}
		
		public String getamenities() {
			return amenities;
		}

		public void setamenities(String amenities) {
			this.amenities = amenities;
		}
		
		public String getextend() {
			return extend;
		}

		public void setextend(String extend) {
			this.extend = extend;
		}
		
		public String getproblem() {
			return problem;
		}

		public void setproblem(String problem) {
			this.problem = problem;
		}
		
		public int getcapacity() {
			return capacity;
		}

		public void setcapacity(int capacity) {
			this.capacity = capacity;
		}
		
		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}
		

	

}
