package com.dao;

import com.entity.FangwufenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FangwufenleiVO;
import com.entity.view.FangwufenleiView;


/**
 * 房屋分类
 * 
 * @author 
 * @email 
 * @date 2020-10-14 08:19:55
 */
public interface FangwufenleiDao extends BaseMapper<FangwufenleiEntity> {
	
	List<FangwufenleiVO> selectListVO(@Param("ew") Wrapper<FangwufenleiEntity> wrapper);
	
	FangwufenleiVO selectVO(@Param("ew") Wrapper<FangwufenleiEntity> wrapper);
	
	List<FangwufenleiView> selectListView(@Param("ew") Wrapper<FangwufenleiEntity> wrapper);

	List<FangwufenleiView> selectListView(Pagination page,@Param("ew") Wrapper<FangwufenleiEntity> wrapper);
	
	FangwufenleiView selectView(@Param("ew") Wrapper<FangwufenleiEntity> wrapper);
	
}
