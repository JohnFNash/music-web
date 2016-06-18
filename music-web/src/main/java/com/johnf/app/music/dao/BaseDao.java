package com.johnf.app.music.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

@SuppressWarnings("rawtypes")
public interface BaseDao {
	/**
	 * 新增
	 * @param statementName 
	 * @param obj
	 * @throws DataAccessException
	 */
	void addObject(String statementName, Object obj) throws DataAccessException;
	
	/**
	 * 按主键ID删除记录
	 * @param statementName
	 * @param objId
	 * @return
	 * @throws DataAccessException
	 */
	int deleteObject(String statementName,String objId) throws DataAccessException;
	
	/**
	 * 删除满足条件的所有记录
	 * @param statementName
	 * @param map 条件map
	 * @return
	 * @throws DataAccessException
	 */
	int deleteForMap(String statementName,Map<String, Object> map) throws DataAccessException;
	
	/**
	 * 按主键ID进行查找
	 * @param statementName
	 * @param objId 主键ID
	 * @return
	 * @throws DataAccessException
	 */
	Object findObject(String statementName,String objId) throws DataAccessException;
	
	/**
	 * 更新对象
	 * @param statementName
	 * @param obj 要更新的对象
	 * @return
	 * @throws DataAccessException
	 */
	int updateObject(String statementName,Object obj) throws DataAccessException;
	
	/**
	 * 更改对象启用/停用状态
	 * @param statementName
	 * @param map
	 * @return
	 * @throws DataAccessException
	 */
	int updateObjectState(String statementName,Map<String, Object> map) throws DataAccessException;
	
	/**
	 * 统计符合条件的记录的数目
	 * @param statementName
	 * @param filter sql过滤语句
	 * @return
	 */
	int getObjectCount(String statementName, String filter);
	
	/**
	 * 统计符合条件的记录的数目
	 * @param statementName
	 * @param map 过滤条件map
	 * @return
	 */
	int getObjectCount(String statementName, Map<String, Object> map);
	
	/**
	 * 查找符合条件的对象
	 * @param statementName
	 * @param map 过滤条件map
	 * @return
	 */
	Object findObject(String statementName, Map<String, Object> map);
	
	/**
	 *分页查询满足给定条件的对象列表 
	 * @param statementName
	 * @param map 过滤条件map
	 * @param skipResults 跳过的记录
	 * @param pageSize 一页的记录条数
	 * @return
	 */
	List listByPage(String statementName, Map<String, Object> map, int skipResults, int pageSize);
	
	/**
	 * 分页查询满足给定条件的对象列表 
	 * @param statementName
	 * @param filter sql过滤语句
	 * @param skipResults 跳过的记录
	 * @param pageSize 一页的记录条数
	 * @return
	 */
	List listByPage(String statementName, String filter, int skipResults, int pageSize);
	
	/**
	 * 查询所有满足给定条件的对象列表 
	 * @param statementName
	 * @param filter sql过滤语句
	 * @param skipResults 跳过的记录
	 * @param pageSize 一页的记录条数
	 * @return
	 */
	List list(String statementName, String filter);
	
	/**
	 * 查询所有满足给定条件的对象列表 
	 * @param statementName
	 * @param map 过滤条件map
	 * @param skipResults 跳过的记录
	 * @param pageSize 一页的记录条数
	 * @return
	 */
	List list(String statementName, Map<String, Object> map);
	
}
