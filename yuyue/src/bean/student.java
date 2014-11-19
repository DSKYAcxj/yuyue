package bean;
public class student {
		private String name;
		private String psword;
		private String truename;
		private String mail;		
		
		
		public student(){
			this.name = null;
			this.truename = null;
			this.psword = null;
		}
		
		public student(String name,String psword){
			this.name=name;
			this.psword=psword;
			this.truename = null;
		}
		public void setname(String name) {
			this.name = name;
		}

		public String getname() {
			return name;
		}

		public void setpsword(String psword) {
			this.psword = psword;
		}

		public String getpsword() {
			return psword;
		}


		public void settruename(String yuyue) {
			this.truename = yuyue;
		}

		public String gettruename() {
			return truename;
		}

		public void setmail(String mail) {
			this.mail = mail;
		}

		public String getmail() {
			return mail;
		}

}
