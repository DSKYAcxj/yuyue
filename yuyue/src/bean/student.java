package bean;
public class student {
		private String name;
		private String psword;
		private String yuyue ;
				
		
		
		public student(){
			this.name = null;
			this.yuyue = null;
			this.psword = null;
		}
		
		public student(String name,String psword){
			this.name=name;
			this.psword=psword;
			this.yuyue = null;
		}
		public void setName(String name) {
			this.name = name;
		}

		public String getName() {
			return name;
		}

		public void setPsword(String psword) {
			this.psword = psword;
		}

		public String getPsword() {
			return psword;
		}


		public void setYuyue(String yuyue) {
			this.yuyue = yuyue;
		}

		public String getYuyue() {
			return yuyue;
		}


}
