package bookings;

public class bookingDetails {
		
		private String name;  
		private String address;  
		private int age;
		private String mobile;
		private String email;
		private String identity;
		private String country;
		private String flightNo;
		private int people;

		public bookingDetails(){}

		public String getname() {
			return name;
		}

		public void setname(String name) {
			this.name = name;
		}
		public int getpeople() {
			return people;
		}

		public void setpeople(int people) {
			this.people = people;
		}
		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}
		public int getAge() {
			return age;
		}

		public void setAge(int age) {
			this.age = age;
		}
		public String getmobile() {
			return mobile;
		}

		public void setmobile(String mobile) {
			this.mobile = mobile;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}

		public void setIdentity(String identity) {
			this.identity = identity;
		}
		public String getIdentity() {
			return identity;
		}
		public void setCountry(String country) {
			this.country = country;
		}
		public String getCountry() {
			return country;
		}
		public void setFlightNo(String flightNo) {
			this.flightNo = flightNo;
		}
		public String getFlightNo() {
			return flightNo;
		}
		
}
