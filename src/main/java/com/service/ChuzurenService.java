package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChuzurenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChuzurenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChuzurenView;


/**
 * 出租人
 *
 * @author 
 * @email 
 * @date 2020-10-14 08:19:55
 */
public interface ChuzurenService extends IService<ChuzurenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChuzurenVO> selectListVO(Wrapper<ChuzurenEntity> wrapper);
   	
   	ChuzurenVO selectVO(@Param("ew") Wrapper<ChuzurenEntity> wrapper);
   	
   	List<ChuzurenView> selectListView(Wrapper<ChuzurenEntity> wrapper);
   	
   	ChuzurenView selectView(@Param("ew") Wrapper<ChuzurenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChuzurenEntity> wrapper);
   	
}

