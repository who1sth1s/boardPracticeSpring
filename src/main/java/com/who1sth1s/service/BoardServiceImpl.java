package com.who1sth1s.service;

import java.util.List;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import com.who1sth1s.domain.BoardVO;
import com.who1sth1s.domain.Criteria;
import com.who1sth1s.domain.SearchCriteria;
import com.who1sth1s.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardDAO dao;
	
	@Override
	public void regist(BoardVO board) throws Exception {
		dao.create(board);
	}
	
	@Override
	public BoardVO read(Integer bno) throws Exception {
		return dao.read(bno);
	}
	
	@Override
	public void modify(BoardVO board) throws Exception {
		dao.update(board);
	}
	
	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public void remove(BoardVO board) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}

	@Override
	public void remove(int bno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}
	
	
}
