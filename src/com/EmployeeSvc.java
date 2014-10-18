package com;

import java.util.ArrayList;
import java.util.List;

public class EmployeeSvc {
public List<Employee> getIdleEmployees(){
	
	List<Employee> emplist=new ArrayList<>();
	emplist.add(new Employee(1, "jack"));
	emplist.add(new Employee(2, "robin"));
	emplist.add(new Employee(3, "tom"));
	emplist.add(new Employee(4, "jim"));
	emplist.add(new Employee(5, "alex"));
	return emplist;
}
public List<String> deptList(){
	List<String> deptList=new ArrayList<>();
	deptList.add("sales");
	deptList.add("it");
	deptList.add("hr");
	return deptList;
}

}
