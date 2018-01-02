package sm.dao;

import sm.pojo.NoveBack;

public interface NoveBackMapper {
	NoveBack selectByPrimaryKey(String backId);
	int insertSelective(NoveBack noveBack);
	
	int deleteByPrimaryKey(String backId);
	
	
}
