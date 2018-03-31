package com.ls.persistence;

import java.util.List;
import com.ls.domain.BoardVO;
import com.ls.domain.Criteria;

public interface BoardDAO {

	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	
	public BoardVO read(Integer bno) throws Exception;
	
	public int countPaging(Criteria cri) throws Exception;
	
	public void update(BoardVO vo) throws Exception;
	
	public void delete(Integer bno) throws Exception;
}
