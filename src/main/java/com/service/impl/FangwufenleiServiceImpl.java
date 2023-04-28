package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.FangwufenleiDao;
import com.entity.FangwufenleiEntity;
import com.service.FangwufenleiService;
import com.entity.vo.FangwufenleiVO;
import com.entity.view.FangwufenleiView;

@Service("fangwufenleiService")
public class FangwufenleiServiceImpl extends ServiceImpl<FangwufenleiDao, FangwufenleiEntity> implements FangwufenleiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FangwufenleiEntity> page = this.selectPage(
                new Query<FangwufenleiEntity>(params).getPage(),
                new EntityWrapper<FangwufenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FangwufenleiEntity> wrapper) {
		  Page<FangwufenleiView> page =new Query<FangwufenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FangwufenleiVO> selectListVO(Wrapper<FangwufenleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FangwufenleiVO selectVO(Wrapper<FangwufenleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FangwufenleiView> selectListView(Wrapper<FangwufenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FangwufenleiView selectView(Wrapper<FangwufenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
