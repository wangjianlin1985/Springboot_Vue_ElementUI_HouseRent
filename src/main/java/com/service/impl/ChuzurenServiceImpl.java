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


import com.dao.ChuzurenDao;
import com.entity.ChuzurenEntity;
import com.service.ChuzurenService;
import com.entity.vo.ChuzurenVO;
import com.entity.view.ChuzurenView;

@Service("chuzurenService")
public class ChuzurenServiceImpl extends ServiceImpl<ChuzurenDao, ChuzurenEntity> implements ChuzurenService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChuzurenEntity> page = this.selectPage(
                new Query<ChuzurenEntity>(params).getPage(),
                new EntityWrapper<ChuzurenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChuzurenEntity> wrapper) {
		  Page<ChuzurenView> page =new Query<ChuzurenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChuzurenVO> selectListVO(Wrapper<ChuzurenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChuzurenVO selectVO(Wrapper<ChuzurenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChuzurenView> selectListView(Wrapper<ChuzurenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChuzurenView selectView(Wrapper<ChuzurenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
