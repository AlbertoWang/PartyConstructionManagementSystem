package cn.edu.cqu.Dao;

import java.util.ArrayList;

import cn.edu.cqu.Model.StudentPermissionMap;
import cn.edu.cqu.Model.StudentStatusMap;

public interface MapMapper {

	ArrayList<StudentStatusMap> select_student_status_map();

	ArrayList<StudentPermissionMap> select_student_permission_map();

}