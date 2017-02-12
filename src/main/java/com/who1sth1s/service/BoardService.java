package com.who1sth1s.service;

import java.util.List;
import com.who1sth1s.domain.BoardVO;
import com.who1sth1s.domain.Criteria;
import com.who1sth1s.domain.SearchCriteria;

public interface BoardService {
	
	public void regist(BoardVO board) throws Exception;
	public BoardVO read(Integer bno) throws Exception;
	public void modify(BoardVO board) throws Exception;
	public void remove(BoardVO board) throws Exception;
	public List<BoardVO> listAll() throws Exception;
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	public int listCountCriteria(Criteria cri) throws Exception;
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public void remove(int bno);
}
