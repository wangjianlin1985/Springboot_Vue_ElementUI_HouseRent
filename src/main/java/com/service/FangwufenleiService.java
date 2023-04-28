package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FangwufenleiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FangwufenleiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FangwufenleiView;


/**
 * 房屋分类
 *
 * @author 
 * @email 
 * @date 2020-10-14 08:19:55
 */
public interface FangwufenleiService extends IService<FangwufenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FangwufenleiVO> selectListVO(Wrapper<FangwufenleiEntity> wrapper);
   	
   	FangwufenleiVO selectVO(@Param("ew") Wrapper<FangwufenleiEntity> wrapper);
   	
   	List<FangwufenleiView> selectListView(Wrapper<FangwufenleiEntity> wrapper);
   	
   	FangwufenleiView selectView(@Param("ew") Wrapper<FangwufenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FangwufenleiEntity> wrapper);
   	
}

