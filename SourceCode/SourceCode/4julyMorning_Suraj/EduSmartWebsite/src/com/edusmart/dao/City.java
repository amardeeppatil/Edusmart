package com.edusmart.dao;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import com.edusmart.controller.CommonController;
import com.opensymphony.xwork2.ActionSupport;
@Entity
public class City extends ActionSupport{


//	private static final long serialVersionUID = -1641805891860912137L;

	@Id
	@GeneratedValue
	int CityId;
	String CityName;
	int StateId;
	int CountryID;
	int User_ID;
	int Status;

	public int getCityId() {
		return CityId;
	}
	public void setCityId(int cityId) {
		CityId = cityId;
	}
	public String getCityName() {
		return CityName;
	}
	public void setCityName(String cityName) {
		CityName = cityName;
	}
	public int getStateId() {
		return StateId;
	}
	public void setStateId(int stateId) {
		StateId = stateId;
	}
	public int getCountryID() {
		return CountryID;
	}
	public void setCountryID(int countryID) {
		CountryID = countryID;
	}
	public int getUser_ID() {
		return User_ID;
	}
	public void setUser_ID(int user_ID) {
		User_ID = user_ID;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}


    @Transient
	public Map<Integer, String> _stateMap = new LinkedHashMap<Integer, String>();
    @Transient
	public Map<Integer, String> _cityMap = new LinkedHashMap<Integer, String>();
	public String _countryId;
	public String _stateId;

	public Map<Integer, String> get_stateMap() {
		return _stateMap;
	}
	public void set_stateMap(Map<Integer, String> _stateMap) {
		this._stateMap = _stateMap;
	}
	public String get_countryId() {
		return _countryId;
	}
	public void set_countryId(String _countryId) {
		this._countryId = _countryId;
	}
	public Map<Integer, String> get_cityMap() {
		return _cityMap;
	}
	public void set_cityMap(Map<Integer, String> _cityMap) {
		this._cityMap = _cityMap;
	}
	public String get_stateId() {
		return _stateId;
	}
	public void set_stateId(String _stateId) {
		this._stateId = _stateId;
	}

	public String getStates() {
		List<Class<?>> list;
		if(_countryId != null){
			list = CommonController.getAllObjects(StateTB.class, "Status = 1 and CountryId = " + Integer.parseInt(_countryId));
		} else {
			list = CommonController.getAllObjects(StateTB.class, "Status = 1"); 
		}
		
		for(int i=0; i<list.size(); i++){
			StateTB state = StateTB.class.cast(list.get(i));
			_stateMap.put(state.getStateid(), state.getStateName());
		}
		return "success";
	}

	public String getCities() {
		List<Class<?>> list;
		if(_stateId != null){
			list = CommonController.getAllObjects(City.class, "Status = 1 and StateId = " + Integer.parseInt(_stateId));
		} else {
			list = CommonController.getAllObjects(City.class, "Status = 1"); 
		}
		
		for(int i=0; i<list.size(); i++){
			City city = City.class.cast(list.get(i));
			_cityMap.put(city.getCityId(), city.getCityName());
		}
		return "success";
	}
}
