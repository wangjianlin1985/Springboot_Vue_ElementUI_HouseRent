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


import com.dao.ZuhuDao;
import com.entity.ZuhuEntity;
import com.service.ZuhuService;
import com.entity.vo.ZuhuVO;
import com.entity.view.ZuhuView;

@Service("zuhuService")
public class ZuhuServiceImpl extends ServiceImpl<ZuhuDao, ZuhuEntity> implements ZuhuService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZuhuEntity> page = this.selectPage(
                new Query<ZuhuEntity>(params).getPage(),
                new EntityWrapper<ZuhuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZuhuEntity> wrapper) {
		  Page<ZuhuView> page =new Query<ZuhuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZuhuVO> selectListVO(Wrapper<ZuhuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZuhuVO selectVO(Wrapper<ZuhuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZuhuView> selectListView(Wrapper<ZuhuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZuhuView selectView(Wrapper<ZuhuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
