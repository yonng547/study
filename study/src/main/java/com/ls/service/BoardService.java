package com.ls.service;

import java.util.List;
import com.ls.domain.BoardVO;
import com.ls.domain.Criteria;

public interface BoardService {

	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	
	public BoardVO read(Integer bno) throws Exception;
	
	public int listCountCriteria(Criteria cri) throws Exception;
	
	public void modify(BoardVO board) throws Exception;
	
	public void remove(Integer bno) throws Exception;
}
