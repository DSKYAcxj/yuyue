package bean;
public class teacher {
		private String name;
		private String psword;
		private String fabu;
		private String beiyuyue ;
				
		
		
		public teacher(){
			this.name = null;
			this.fabu = null;
			this.beiyuyue = null;
			this.psword = null;
		}
		
		public teacher(String name,String psword){
			this.name=name;
			this.psword=psword;
			this.fabu = null;
			this.beiyuyue = null;
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

		public void setFabu(String fabu) {
			this.fabu = fabu;
		}

		public String getFabu() {
			return fabu;
		}

		public void setBeiyuyue(String beiyuyue) {
			this.beiyuyue = beiyuyue;
		}

		public String  getBeiyuyue() {
			return beiyuyue;
		}


}
