package bean;
public class teacher {
		private String name;
		private String psword;
		private String truename;
				
		
		
		public teacher(){
			this.name = null;
			this.truename = null;
			this.psword = null;
		}
		
		public teacher(String name,String psword){
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

		public void settruename(String fabu) {
			this.truename = fabu;
		}

		public String gettruename() {
			return truename;
		}

}
