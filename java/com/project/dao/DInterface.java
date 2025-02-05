package com.project.dao;

import com.project.model.Loginmodel;
import com.project.model.Model;
import com.project.model.SelectModel;
import com.project.model.updateModel;

public interface DInterface {
	
	public String insertData(Model l);
	public String selectData(Loginmodel lm, Model l);
	public String updateData(Model l);
	public String getUserDetails(SelectModel sm);
	public String deleteData(Model l);
}
