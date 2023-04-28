package com.entity.view;

import com.entity.FangwufenleiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 房屋分类
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-10-14 08:19:55
 */
@TableName("fangwufenlei")
public class FangwufenleiView  extends FangwufenleiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public FangwufenleiView(){
	}
 
 	public FangwufenleiView(FangwufenleiEntity fangwufenleiEntity){
 	try {
			BeanUtils.copyProperties(this, fangwufenleiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
