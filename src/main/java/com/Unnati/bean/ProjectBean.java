package com.Unnati.bean;

public class ProjectBean {
	private Integer projectId;
	private String title;
	private String description;
	private Integer technologyId;
	private Integer estimatedHours;
	private String startDate;
	private String complitionDate;
	private Integer utilizedHours;
	private Integer statusId;
	private boolean deleted;
	public Integer getProjectId() {
		return projectId;
	}
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	public Integer getTechnologyId() {
		return technologyId;
	}
	public void setTechnologyId(Integer technologyId) {
		this.technologyId = technologyId;
	}
	public Integer getEstimatedHours() {
		return estimatedHours;
	}
	public void setEstimatedHours(Integer estimatedHours) {
		this.estimatedHours = estimatedHours;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getComplitionDate() {
		return complitionDate;
	}
	public void setComplitionDate(String complitionDate) {
		this.complitionDate = complitionDate;
	}
	public Integer getUtilizedHours() {
		return utilizedHours;
	}
	public void setUtilizedHours(Integer utilizedHours) {
		this.utilizedHours = utilizedHours;
	}
	public Integer getStatusId() {
		return statusId;
	}
	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}
	public boolean isDeleted() {
		return deleted;
	}
	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}
	
	
	
}
