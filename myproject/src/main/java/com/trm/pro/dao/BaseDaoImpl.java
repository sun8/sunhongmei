package com.trm.pro.dao;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigInteger;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Repository;
import com.trm.pro.dao.util.HibernateHandler;
import com.trm.pro.dao.util.ObjectUtil;
import com.trm.pro.dao.util.Pagination;

/**
 * @author
 */
@Repository
public class BaseDaoImpl<T> implements BaseDao<T> {

	protected Class<T> entityClazz;

	protected SessionFactory sessionFactory;

	Logger logger = Logger.getLogger(getClass());

	@SuppressWarnings("unchecked")
	public BaseDaoImpl() {
		Type type = getClass().getGenericSuperclass();
		if (type instanceof ParameterizedType) {
			this.entityClazz = (Class<T>) ((ParameterizedType) type)
					.getActualTypeArguments()[0];
		} else {
			this.entityClazz = null;
		}
	}

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession() {
		// return sessionFactory.openSession();
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	public Object save(Object entity) {
		return (T) getSession().save(entity);
	}

	public void delete(Object entity) {
		getSession().delete(entity);
	}

	public void update(Object entity) {
		getSession().update(entity);
	}
	
	public int updateEntity(Map<String, Object> modifyMap,Map<String, Object> conditionMap){
		try{
			return updateEntity(modifyMap, conditionMap, false);
		}catch(Exception e){
			logger.error(e.toString(), e);
		}
		
		return 0;
	}
	
	/**
	 * 修改对象
	 * @param modifyMap 要修改的字段信息
	 * @param conditionMap  条件字段信息
	 * @param conditionMapIsEmpty 条件字段是否生效，为true时 忽略conditionMap
	 * @return
	 * @throws Exception
	 */
	public int updateEntity(Map<String, Object> modifyMap,Map<String, Object> conditionMap,boolean conditionMapIsEmpty) throws Exception{
		if(modifyMap.isEmpty()){
			return 0;
		}
		Map<String, Object> map=new HashMap<String,Object>();
		String hql="update "+entityClazz.getSimpleName()+" set ";
		for(String key:modifyMap.keySet()){
			String _key="_"+key;
			
			hql+=(key+"=:"+_key+",");
			map.put(_key, modifyMap.get(key));
		}
		if(hql.endsWith(",")){
			hql= hql.substring(0, hql.length()-1);
		}
		
		if(!conditionMapIsEmpty){
			if(conditionMap==null||conditionMap.isEmpty()){
				throw new Exception("update条件不能为空,需要为空请修改 conditionMapIsEmpty形参 为 true");
			}
			hql+=" where ";
			for(String key:conditionMap.keySet()){
				String key_=key+"_";
				hql+=(key+"=:"+key_+" and");
				map.put(key_, conditionMap.get(key));
			}	
		}
		if(hql.endsWith("and")){
			hql= hql.substring(0, hql.length()-3);
		}
		return executeUpdate(hql, map);
	}
	

	public void saveOrUpdate(Object entity) {
		getSession().saveOrUpdate(entity);
	}

	public void saveAll(Collection<?> entities) {
		for (@SuppressWarnings("rawtypes")
		Iterator localIterator = entities.iterator(); localIterator.hasNext();) {
			Object entity = localIterator.next();
			getSession().save(entity);
		}
	}

	public void deleteAll(Collection<?> entities) {

		for (@SuppressWarnings("rawtypes")
		Iterator localIterator = entities.iterator(); localIterator.hasNext();) {
			Object entity = localIterator.next();
			getSession().delete(entity);
		}
	}

	public void updateAll(Collection<?> entities) {

		for (@SuppressWarnings("rawtypes")
		Iterator localIterator = entities.iterator(); localIterator.hasNext();) {
			Object entity = localIterator.next();
			getSession().update(entity);
		}
	}

	public void saveOrUpdateAll(Collection<?> entities) {

		for (@SuppressWarnings("rawtypes")
		Iterator localIterator = entities.iterator(); localIterator.hasNext();) {
			Object entity = localIterator.next();
			getSession().saveOrUpdate(entity);
		}
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> T get(Class<T> entityClass, Serializable id) {

		return (T) getSession().get(entityClass, id);
	}
	
	@Override
	@SuppressWarnings({ "unchecked", "hiding" }) 
	public  T get(Serializable id) {
		return (T) get(entityClazz, id);
	}
	

	@SuppressWarnings({ "unchecked", "rawtypes", "hiding" })
	public <T> T get(CharSequence queryString, Object... params) {

		Query qry = getSession().createQuery(queryString.toString());
		for (int i = 0; i < params.length; ++i) {
			qry.setParameter(i, params[i]);
		}
		List list = qry.setMaxResults(1).list();
		if (list.isEmpty())
			return null;
		return (T) list.get(0);
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> T get(CharSequence queryString, Map<String, Object> params) {

		Query qry = getSession().createQuery(queryString.toString());
		setParameter(qry, params);
		@SuppressWarnings("rawtypes")
		List list = qry.setMaxResults(1).list();
		if (list.isEmpty())
			return null;
		return (T) list.get(0);
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> List<T> findList(CharSequence queryString, Object... params) {
		Query query = getSession().createQuery(queryString.toString());
		for (int i = 0; i < params.length; ++i) {
			query.setParameter(i, params[i]);
		}
		return query.list();
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	public Map<String, T> findMap(CharSequence queryString,
			Class<T> claszz, String field_key, Object... params) {
		Query query = getSession().createQuery(queryString.toString());
		for (int i = 0; i < params.length; ++i) {
			query.setParameter(i, params[i]);
		}
		List<T> list = query.list();
		Map<String, T> map = new HashMap<String, T>();
		for (T t : list) {
			String key=null;
			Field f=null;
			try {
				f =  t.getClass().getDeclaredField(field_key);
				f.setAccessible(true);
				key = String.valueOf(f.get(t));
			} catch (NoSuchFieldException e) {
				logger.error(e.toString(), e);
				e.printStackTrace();
			} catch (SecurityException e) {
				logger.error(e.toString(), e);
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				logger.error(e.toString(), e);
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				logger.error(e.toString(), e);
				e.printStackTrace();
			}
			map.put(key, t);
		}
		return map;
	}
	
	@Override
	@SuppressWarnings({ "unchecked", "hiding" })
	public Map<String, T> findMap(CharSequence queryString, String field_key, Object... params) {
		return (Map<String, T>) findMap(queryString, entityClazz, field_key, params);
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> List<T> findList(CharSequence queryString,
			Map<String, Object> params) {
		Query query = getSession().createQuery(queryString.toString());
		setParameter(query, params);
		return query.list();
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> Pagination<T> findPagination(CharSequence queryString,
			int pageIndex, int pageSize, Object... params) {
		Query query = getSession().createQuery(queryString.toString());

		if ((pageSize > 0) && (pageIndex > 0)) {
			query.setFirstResult((pageIndex < 2) ? 0 : (pageIndex - 1)
					* pageSize);
			query.setMaxResults(pageSize);
		}

		for (int i = 0; i < params.length; ++i) {
			query.setParameter(i, params[i]);
		}
		@SuppressWarnings("rawtypes")
		List items = query.list();
		long rowsCount = 0L;

		if ((pageSize > 0) && (pageIndex > 0)) {
			String hql = parseSelectCount(queryString.toString());
			rowsCount = ((Long) get(hql, params)).longValue();
		} else {
			rowsCount = items.size();
		}

		@SuppressWarnings("rawtypes")
		Pagination pagination = new Pagination(pageIndex, pageSize, rowsCount);
		pagination.setItems(items);
		return pagination;
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> Pagination<T> findPagination(CharSequence queryString,
			Map<String, Object> params, int pageIndex, int pageSize) {
		Query query = getSession().createQuery(queryString.toString());
		if(pageIndex<=0){
			pageIndex=1;
		}
		if ((pageSize > 0) && (pageIndex > 0)) {
			query.setFirstResult((pageIndex < 2) ? 0 : (pageIndex - 1)
					* pageSize);
			query.setMaxResults(pageSize);
		}

		setParameter(query, params);
		@SuppressWarnings({ "rawtypes" })
		List items = query.list();
		long rowsCount = 0L;

		if ((pageSize > 0) && (pageIndex > 0)) {
			String hql = parseSelectCount(queryString.toString());
			rowsCount = ((Long) get(hql, params)).longValue();
		} else {
			rowsCount = items.size();
		}

		@SuppressWarnings("rawtypes")
		Pagination pagination = new Pagination(pageIndex, pageSize, rowsCount);
		pagination.setItems(items);
		return pagination;
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> Pagination<T> findPagination(CharSequence queryString,
			CharSequence countString, int pageIndex, int pageSize,
			Object... params) {
		Query query = getSession().createQuery(queryString.toString());

		if ((pageSize > 0) && (pageIndex > 0)) {
			query.setFirstResult((pageIndex < 2) ? 0 : (pageIndex - 1)
					* pageSize);
			query.setMaxResults(pageSize);
		}

		for (int i = 0; i < params.length; ++i) {
			query.setParameter(i, params[i]);
		}
		@SuppressWarnings("rawtypes")
		List items = query.list();
		long rowsCount = 0L;

		if ((pageSize > 0) && (pageIndex > 0)) {
			rowsCount = ((Long) get(countString, params)).longValue();
		} else
			rowsCount = items.size();

		@SuppressWarnings("rawtypes")
		Pagination pagination = new Pagination(pageIndex, pageSize, rowsCount);
		pagination.setItems(items);
		return pagination;
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> Pagination<T> findPagination(CharSequence queryString,
			CharSequence countString, Map<String, Object> params,
			int pageIndex, int pageSize) {
		Query query = getSession().createQuery(queryString.toString());

		if(pageIndex<=0){
			pageIndex=1;
		}
		
		if ((pageSize > 0) && (pageIndex > 0)) {
			query.setFirstResult((pageIndex < 2) ? 0 : (pageIndex - 1)
					* pageSize);
			query.setMaxResults(pageSize);
		}

		setParameter(query, params);
		@SuppressWarnings("rawtypes")
		List items = query.list();
		long rowsCount = 0L;

		if ((pageSize > 0) && (pageIndex > 0)) {
			rowsCount = ((Long) get(countString, params)).longValue();
		} else
			rowsCount = items.size();

		@SuppressWarnings("rawtypes")
		Pagination pagination = new Pagination(pageIndex, pageSize, rowsCount);
		pagination.setItems(items);
		return pagination;
	}

	@SuppressWarnings({ "serial", "unchecked", "hiding" })
	public <T> Pagination<T> findSqlPagination(CharSequence queryString,
			final CharSequence countString, final Map<String, Object> params,
			int pageIndex, int pageSize) {
		SQLQuery query = getSession().createSQLQuery(queryString.toString());
		query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);

		if ((pageSize > 0) && (pageIndex > 0)) {
			query.setFirstResult((pageIndex < 2) ? 0 : (pageIndex - 1)
					* pageSize);
			query.setMaxResults(pageSize);
		}
		if ((params != null) && (!(params.isEmpty()))) {
			setParameter(query, params);
		}
		@SuppressWarnings("rawtypes")
		List items = query.list();
		BigInteger rowsCount = BigInteger.valueOf(0L);

		if ((pageSize > 0) && (pageIndex > 0)) {
			rowsCount = (BigInteger) executeQuery(new HibernateHandler() {
				public Object doInHibernate(Session session) {
					SQLQuery query = session.createSQLQuery(countString
							.toString());
					if ((params != null) && (!(params.isEmpty()))) {
						setParameter(query, params);
					}
					return query.uniqueResult();
				}
			});
		}

		@SuppressWarnings("rawtypes")
		Pagination pagination = new Pagination(pageIndex, pageSize,
				rowsCount.intValue());
		pagination.setItems(items);
		return pagination;
	}

	public Object executeQuery(HibernateHandler handler) {
		return handler.doInHibernate(getSession());
	}
	
	public void execute(String hql) {
		executeUpdate(hql);
	}

	public void execute(HibernateHandler handler) {
		executeUpdate(handler);
	}

	public void executeSql(String sql) {
		executeSqlUpdate(sql);
	}

	public int executeSqlUpdate(String sql) {
		return getSession().createSQLQuery(sql).executeUpdate();
	}
	
	public int executeSqlUpdate(final String sql,final Map<String, Object> map) {
		HibernateHandler handler = new HibernateHandler() {
			@Override
			public Integer doInHibernate(Session paramSession) {
				Query query = paramSession.createSQLQuery(sql);
				for (String key : map.keySet()) {
					query.setParameter(key, map.get(key));
				}
				return query.executeUpdate();
			}
		};
		Integer rows = (Integer) executeUpdate(handler);
		if (rows == null) {
			return 0;
		}
		return rows;
	}
	

	public int executeUpdate(String hql) {
		return getSession().createQuery(hql).executeUpdate();
	}

	public Object executeUpdate(HibernateHandler handler) {
		return handler.doInHibernate(getSession());
	}

	@Override
	public int executeUpdate(final String hql, final Map<String, Object> map) {
		HibernateHandler handler = new HibernateHandler() {
			@Override
			public Integer doInHibernate(Session paramSession) {
				Query query = paramSession.createQuery(hql);
				for (String key : map.keySet()) {
					query.setParameter(key, map.get(key));
				}
				return query.executeUpdate();
			}
		};
		Integer rows = (Integer) executeUpdate(handler);
		if (rows == null) {
			return 0;
		}
		return rows;
	}

	protected Query setParameter(Query query, Map<String, Object> parameterMap) {
		for (@SuppressWarnings("rawtypes")
		Iterator iterator = parameterMap.keySet().iterator(); iterator
				.hasNext();) {
			String key = (String) iterator.next();
			query.setParameter(key, parameterMap.get(key));
		}
		return query;
	}

	protected boolean followWithWord(String s, String sub, int pos) {
		int i = 0;
		for (; (pos < s.length()) && (i < sub.length()); ++i) {
			if (s.charAt(pos) != sub.charAt(i))
				return false;
			++pos;
		}

		if (i < sub.length()) {
			return false;
		}

		if (pos >= s.length()) {
			return true;
		}
		return (!(isAlpha(s.charAt(pos))));
	}

	protected String parseSelectCount(String queryString) {
		String hql = queryString.toLowerCase();
		int noBlankStart = 0;
		for (int len = hql.length(); noBlankStart < len; ++noBlankStart) {
			if (hql.charAt(noBlankStart) > ' ') {
				break;
			}
		}

		int pair = 0;

		if (!(followWithWord(hql, "select", noBlankStart))) {
			pair = 1;
		}
		int fromPos = -1;
		for (int i = noBlankStart; i < hql.length();) {
			if (followWithWord(hql, "select", i)) {
				++pair;
				i += "select".length();
			} else if (followWithWord(hql, "from", i)) {
				--pair;
				if (pair == 0) {
					fromPos = i;
					break;
				}
				i += "from".length();
			} else {
				++i;
			}
		}
		if (fromPos == -1) {
			throw new IllegalArgumentException(
					"parse count sql error, check your sql/hql");
		}

		String countHql = "select count(*) " + queryString.substring(fromPos);
		return countHql;
	}

	protected boolean isAlpha(char c) {
		return ((c == '_') || (('0' <= c) && (c <= '9'))
				|| (('a' <= c) && (c <= 'z')) || (('A' <= c) && (c <= 'Z')));
	}

	@Override
	public void delete(Class<T> clazz, Serializable id) {
		T entity = getById(clazz, id);
		delete(entity);
	}
	
	@Override
	public void delete( Serializable id) {
		delete(entityClazz, id);;
	}

	public void delete(List<T> entitys) {
		for (T entity : entitys) {
			delete(entity);
		}
	}

	public T getById(Class<T> t, Serializable id) {
		if (id == null)
			return null;

		return (T) get(t, id);
	}
	
	@Override
	public T getById( Serializable id) {
		return getById(entityClazz, id);
	}
	
	
	

	@Override
	public T saveEntity(T o) {
		saveOrUpdate(o);
		return o;
	}

	@Override
	public void save(List<T> list) {
		saveOrUpdateAll(list);
	}

	@Override
	public T insert(T entity) {
		save(entity);
		return entity;
	}

	@Override
	public void insert(List<T> entitys) {
		for (T entity : entitys) {
			save(entity);
		}
	}

	@Override
	public void update(List<T> entitys) {
		for (T entity : entitys) {
			update(entity);
		}
	}

	@Override
	public List<T> findByProperty(Class<T> clazz,String name, Object value) {
		String hql = "from  " + clazz.getSimpleName() + " where " + name
				+ "=? ";
		return findList(hql, value);
	}
	
	@Override 
	public List<T> findByProperty(String name, Object value) {
		return findByProperty(entityClazz,name, value);
	}

	
	@Override
	public List<T> findByProperty(Map<String, Object> conditionMap) {
		return findByProperty(entityClazz, conditionMap);
	}
	
	@Override
	public <D>List<T> findByProperty(Class<D> claszz,Map<String, Object> conditionMap) {
		StringBuilder hql = new StringBuilder();
		hql.append("from  " + claszz.getSimpleName());
		if (!conditionMap.isEmpty()) {
			Iterator<String> it = conditionMap.keySet().iterator();
			String key = it.next();
			hql.append(" where  " + key + "=:" + key);
			while (it.hasNext()) {
				key = it.next();
				hql.append(" and  " + key + "=:" + key);
			}
		}
		return findList(hql.toString(), conditionMap);
	}

	@Override
	public <V> List<V> findListByMax(final CharSequence queryString,
			final int maxResults, final Object... params) {
		@SuppressWarnings({ "unchecked", "serial" })
		List<V> list = (List<V>) executeQuery(new HibernateHandler() {
			@Override
			public List<V> doInHibernate(Session paramSession) {
				try {
					Query query = paramSession.createQuery(queryString
							.toString());
					for (int i = 0; i < params.length; ++i) {
						query.setParameter(i, params[i]);
					}
					return query.setMaxResults(maxResults).list();
				} catch (RuntimeException re) {
					throw re;
				}
			}
		});
		return list;
	}

	@Override
	public <V> List<V> findListByMax(final CharSequence queryString,
			final int maxResults, final Map<String, Object> params) {
		@SuppressWarnings({ "unchecked", "serial" })
		List<V> list = (List<V>) executeQuery(new HibernateHandler() {
			@Override
			public List<V> doInHibernate(Session paramSession) {
				try {
					Query query = paramSession.createQuery(queryString
							.toString());
					for (Iterator<String> iterator = params.keySet().iterator(); iterator
							.hasNext();) {
						String key = iterator.next();
						query.setParameter(key, params.get(key));
					}
					return query.setMaxResults(maxResults).list();
				} catch (RuntimeException re) {
					throw re;
				}
			}

		});
		return list;
	}

	/**
	 * HQL/SQL之数据操作命令(DML)拼接辅助类
	 * 
	 * @author PanJun
	 * @deprecated by fu.zhanghua
	 * 
	 */
	public class DmlHelper {

		private ThreadLocal<Calendar> cal = new ThreadLocal<Calendar>() {
			@Override
			protected Calendar initialValue() {
				return Calendar.getInstance();
			}
		};

		/** HQL/SQL参数 */
		public final List<Object> paramList = new ArrayList<Object>();
		/** HQL/SQL语句 */
		public final StringBuilder dmlCmd = new StringBuilder();

		public DmlHelper() {
		}

		public DmlHelper(CharSequence dml, Object... params) {
			if (dml != null) {
				dmlCmd.append(dml);
				for (Object o : params) {
					paramList.add(o);
				}
			}
		}

		@Override
		public String toString() {
			return "dml=" + dmlCmd + ", params=" + paramList;
		}

		public DmlHelper append(CharSequence dmlPart, Object... params) {
			if (dmlPart != null) {
				dmlCmd.append(" ").append(dmlPart);
				for (Object o : params) {
					paramList.add(o);
				}
			}
			return this;
		}

		public DmlHelper addEqual(String fieldName, Object value,
				Object... nullVal) {
			if (value == null || fieldName == null) {
				return this;
			}

			if (value instanceof String) {
				value = value.toString().trim();
				if ("".equals(value)) {
					return this;
				}
			}

			for (Object NULL : nullVal) {
				if (NULL == value) {
					return this;
				}

				if (value.equals(NULL)) {
					return this;
				}
			}

			dmlCmd.append(" and ").append(fieldName).append("=? ");
			paramList.add(value);
			return this;
		}

		public DmlHelper addLikeAll(String name, String value) {
			if (null == value || null == name)
				return this;

			value = "%" + value.trim().toLowerCase() + "%";
			dmlCmd.append(" and lower(").append(name).append(") like ? ");
			paramList.add(value);
			return this;
		}

		/**
		 * 清除时间里的时分秒，只留日期
		 * 
		 * @param date
		 * @return new date
		 */
		private void clearTime(Calendar calendar) {
			int y = calendar.get(Calendar.YEAR);
			int m = calendar.get(Calendar.MONTH);
			int d = calendar.get(Calendar.DAY_OF_MONTH);
			calendar.clear();
			calendar.set(Calendar.YEAR, y);
			calendar.set(Calendar.MONTH, m);
			calendar.set(Calendar.DAY_OF_MONTH, d);
		}

		/**
		 * 添加开始日期、结束日期(注意时分秒不记入查询条件)查询条件，包含开始日期和结束日期
		 * 
		 * @param fieldName
		 *            hbm对象属性名称或字段名
		 * @param minDay
		 *            开始日期
		 * @param maxDay
		 *            结果日期
		 */
		public DmlHelper addDayRange(String fieldName, Date minDay, Date maxDay) {
			Calendar calendar = cal.get();
			if (minDay != null) {
				calendar.setTime(minDay);
				clearTime(calendar);
				calendar.add(Calendar.SECOND, -1);
				dmlCmd.append(" and ").append(fieldName).append(">? ");
				paramList.add(calendar.getTime());
			}

			if (maxDay != null) {
				calendar.setTime(maxDay);
				clearTime(calendar);
				calendar.add(Calendar.DAY_OF_MONTH, 1);
				dmlCmd.append(" and ").append(fieldName).append("<? ");
				paramList.add(calendar.getTime());
			}
			return this;
		}

		/**
		 * 添加开始时间、结束时间查询条件，包含开始时间和结束时间
		 * 
		 * @param fieldName
		 *            hbm对象属性名称或字段名
		 * @param minTime
		 *            开始时间
		 * @param maxTime
		 *            结果时间
		 */
		public DmlHelper addDayRange(String fieldName, String minTime,
				String maxTime) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date start_ = null, end_ = null;
			if (ObjectUtil.hasText(minTime) && ObjectUtil.hasText(maxTime)) {
				try {
					start_ = sdf.parse(minTime);
					end_ = sdf.parse(maxTime);
				} catch (ParseException e) {
				}
			}

			return addTimeRange(fieldName, start_, end_);
		}

		/**
		 * 添加开始时间、结束时间查询条件，包含开始时间和结束时间
		 * 
		 * @param fieldName
		 *            hbm对象属性名称或字段名
		 * @param minTime
		 *            开始时间
		 * @param maxTime
		 *            结果时间
		 */
		public DmlHelper addTimeRange(String fieldName, Date minTime,
				Date maxTime) {
			if (minTime != null) {
				dmlCmd.append(" and ").append(fieldName).append(">? ");
				paramList.add(minTime);
			}

			if (maxTime != null) {
				dmlCmd.append(" and ").append(fieldName).append("<? ");
				paramList.add(maxTime);
			}
			return this;
		}

		public <D> Pagination<D> findPagin(int pageIndex, int pageSize) {
			String hql = dmlCmd.toString();
			Object[] allParams = new Object[paramList.size()];
			int i = 0;
			for (Object o : paramList) {
				allParams[i++] = o;
			}
			return findPagination(hql, pageIndex, pageSize, allParams);
		}

	}

}