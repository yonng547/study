package com.ls.persistence;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ls.domain.BoardVO;
import com.ls.domain.Criteria;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.ls.mapper.BoardMapper";
	
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listCriteria", cri);
	}
	
	@Override
	public BoardVO read(Integer bno) throws Exception {
	    return session.selectOne(namespace + ".read", bno);
	}
	
	@Override
	public int countPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne((namespace) + ".countPaging", cri);
	}
	
	@Override
	public void update(BoardVO vo) throws Exception {
	    session.update(namespace + ".update", vo);
	}
	
	@Override
	public void delete(Integer bno) throws Exception {
	    session.delete(namespace + ".delete", bno);
	}
}
