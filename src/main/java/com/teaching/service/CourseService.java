package com.teaching.service;


import com.teaching.pojo.Course;
import javafx.util.converter.IntegerStringConverter;

import java.util.List;

/**
 * @Author： XO
 * @Description：
 * @Date： 2019/4/5 16:31
 */

public interface CourseService {

    /**
     * 通过课程id查找一门课程
     * @param id
     * @return
     */
    public Course findCourseById(Integer id);

    /**
     * 查询所有免费课程 free-1，del-0 ,status-申请成功
     * @return
     */
    public List<Course> findAllCourseFree();

    /**
     * 查询所有要钱的课程 free-0，del-0,,status-申请成功
     * @return
     */
    public List<Course> findAllCourseMoney();

    /**
     * 查询所有被删除的课程 del-1,status-申请成功
     * @return
     */
    public List<Course> findAllCourseDelete();

    /**
     * 查询所有被删除的课程 del-0 status-待审核
     * @return
     */
    public List<Course> findAllCheckCourse();

    /**
     * 根据类目id查询所有课程
     * @param id
     * @return
     */
    public  List<Course> findCourseByClassify(Integer id);

    /**
     * 根据条件查询
     * @param startTime
     * @param endTime
     * @param name
     * @param Classify
     * @return
     */
    public List<Course> findCourseByTimeAndNameAndClassify(String startTime,String endTime,String name,Integer Classify);

    /**
     * 学习人数加一
     * @param id
     * @return
     */
    public Integer updateStudyCountById(Integer id);









}
