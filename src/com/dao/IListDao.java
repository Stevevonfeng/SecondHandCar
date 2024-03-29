package com.dao;

import java.util.List;

import com.model.Car2;
import com.model.Users;

public interface IListDao {
	//展示所有车辆
	public List<Car2> ListShow(int currentPage);
	
	//计算总记录数
	public int carsNum();

	
	public int carsNum(String sql);

	//计算新旧车辆的总记录数
	public int carsNum2(String type);

	//展示车辆详细信息
	public Car2 CarShow(long vid);
	//展示类似车辆
	public List<Car2> SimilarCar(String brand,long vid);
	//传送sql语句
	public List<Car2> SqlInput(String sql);
	//搜索新车
	public List<Car2> NewListShow(int currentPage);
	//搜索二手车
	public List<Car2> UsedListShow(int currentPage);

	public Users userShow(String userid);

}
