package com.teaching.web.controller.user;



import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.teaching.enums.CommonStatus;
import com.teaching.enums.CourseCommentStatus;
import com.teaching.enums.CourseStatus;
import com.teaching.mapper.CourseCommentMapper;
import com.teaching.mapper.CourseMapper;
import com.teaching.mapper.CourseSectionMapper;
import com.teaching.pojo.AuthUser;
import com.teaching.pojo.Course;
import com.teaching.pojo.CourseComment;
import com.teaching.pojo.CourseSection;
import com.teaching.utils.ApiResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;

/**
 * @Author： XO
 * @Description：
 * @Date： 2019/11/03 11:06
 */

@Controller
public class MineController {

    @Autowired
    private CourseCommentMapper courseCommentMapper;
    @Autowired
    private CourseSectionMapper courseSectionMapper;
    @Autowired
    private CourseMapper courseMapper;


    /**
     * 主页
     * @return
     */
    @GetMapping("/user/home")
    public ModelAndView index(Map<String, Object> map,Model model) {

        model.addAttribute("msg","fads");

        return new ModelAndView("user/home", map);
    }

    /**
     * 我的课程
     * @return
     */
    @GetMapping("/user/joinCourse")
    public ModelAndView joinCourse(Map<String, Object> map,
                                   @RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum,
                                   @RequestParam(value = "pageSize",defaultValue = "9")Integer pageSize) {


        PageHelper.startPage(pageNum, pageSize);

        Example example=new Example(Course.class);
        example.createCriteria().andEqualTo("status",CourseStatus.STATUS_VERIFY_SUCC.getValue())//审核成功
                .andEqualTo("onsale",CourseStatus.ONSALE_YES.getValue())//上架了
                .andEqualTo("del",CommonStatus.DEL_NO);
        example.orderBy("weight").desc();
        example.orderBy("studyCount").asc();
        List<Course> courseList=courseMapper.selectByExample(example);

        PageInfo<Course> newsPage = new PageInfo<>(courseList);

        map.put("page", newsPage);
        map.put("currentPage", pageNum);
        map.put("pageSize", pageSize);


        return new ModelAndView("user/joinCourse", map);
    }

    /**
     * 我创建的课程
     * @return
     */
    @GetMapping("/user/createCourse")
    public ModelAndView createCourse(Map<String, Object> map,Model model) {

        model.addAttribute("msg","fads");

        return new ModelAndView("user/createCourse", map);
    }

    /**
     * 我的收藏
     * @return
     */
    @GetMapping("/user/collect")
    public ModelAndView collection(Map<String, Object> map,Model model) {

        model.addAttribute("msg","fads");

        return new ModelAndView("user/collect", map);
    }

    /**
     * 我的关注
     * @return
     */
    @GetMapping("/user/follow")
    public ModelAndView follow(Map<String, Object> map,Model model) {

        model.addAttribute("msg","fads");

        return new ModelAndView("user/follow", map);
    }

    /**
     * 我的答疑
     * @return
     */
    @GetMapping("/user/answer")
    public ModelAndView answer(Map<String, Object> map,Model model) {

        model.addAttribute("msg","fads");

        return new ModelAndView("user/answer", map);
    }
    /**
     * 我的设置
     * @return
     */
    @GetMapping("/user/setting")
    public ModelAndView setting(Map<String, Object> map,Model model) {

        model.addAttribute("msg","fads");

        return new ModelAndView("user/setting", map);
    }




}
