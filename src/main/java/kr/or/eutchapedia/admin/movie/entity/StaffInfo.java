package kr.or.eutchapedia.admin.movie.entity;

public class StaffInfo {
	private int staffIndex;
	private String fkMovieDocid;
	private String staffName;
	private String staffRoleGroup;
	private String staffRole;
	
	public StaffInfo(int staffIndex, String fkMovieDocid, String staffName, String staffRoleGroup, String staffRole) {
		super();
		this.staffIndex = staffIndex;
		this.fkMovieDocid = fkMovieDocid;
		this.staffName = staffName;
		this.staffRoleGroup = staffRoleGroup;
		this.staffRole = staffRole;
	}

	public int getStaffIndex() {
		return staffIndex;
	}

	public void setStaffIndex(int staffIndex) {
		this.staffIndex = staffIndex;
	}

	public String getFkMovieDocid() {
		return fkMovieDocid;
	}

	public void setFkMovieDocid(String fkMovieDocid) {
		this.fkMovieDocid = fkMovieDocid;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getStaffRoleGroup() {
		return staffRoleGroup;
	}

	public void setStaffRoleGroup(String staffRoleGroup) {
		this.staffRoleGroup = staffRoleGroup;
	}

	public String getStaffRole() {
		return staffRole;
	}

	public void setStaffRole(String staffRole) {
		this.staffRole = staffRole;
	}
	
	
	
	
}
