package com.dao;

import com.entity.ChuzurenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChuzurenVO;
import com.entity.view.ChuzurenView;


/**
 * 出租人
 * 
 * @author 
 * @email 
 * @date 2020-10-14 08:19:55
 */
public interface ChuzurenDao extends BaseMapper<ChuzurenEntity> {
	
	List<ChuzurenVO> selectListVO(@Param("ew") Wrapper<ChuzurenEntity> wrapper);
	
	ChuzurenVO selectVO(@Param("ew") Wrapper<ChuzurenEntity> wrapper);
	
	List<ChuzurenView> selectListView(@Param("ew") Wrapper<ChuzurenEntity> wrapper);

	List<ChuzurenView> selectListView(Pagination page,@Param("ew") Wrapper<ChuzurenEntity> wrapper);
	
	ChuzurenView selectView(@Param("ew") Wrapper<ChuzurenEntity> wrapper);
	
}
