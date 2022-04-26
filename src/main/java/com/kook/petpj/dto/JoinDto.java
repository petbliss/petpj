package com.kook.petpj.dto;

public class JoinDto {
	
		private String pid;
		private String ppw;
		private String pname;
		private String pbirth;
		private String pmail;
		
		public JoinDto() {
			
		}

		public String getPid() {
			return pid;
		}

		public void setPid(String pid) {
			this.pid = pid;
		}

		public String getPpw() {
			return ppw;
		}

		public void setPpw(String ppw) {
			this.ppw = ppw;
		}

		public String getPname() {
			return pname;
		}

		public void setPname(String pname) {
			this.pname = pname;
		}

		public String getPbirth() {
			return pbirth;
		}

		public void setPbirth(String pbirth) {
			this.pbirth = pbirth;
		}

		public String getPmail() {
			return pmail;
		}

		public void setPmail(String pmail) {
			this.pmail = pmail;
		}
		
		public JoinDto(String pmail) {
			this.pmail = pmail;
		}

		public JoinDto(String pid, String ppw, String pname, String pbirth, String pmail) {
			super();
			this.pid = pid;
			this.ppw = ppw;
			this.pname = pname;
			this.pbirth = pbirth;
			this.pmail = pmail;
		}
}