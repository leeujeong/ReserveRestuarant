package com.reserve.restaurant.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import com.reserve.restaurant.domain.Qna;

public interface QnaBoardService {

	public List<Qna> selectQnaBoardList();
	public void selectQnaBoardByNo(Long qnaNo, Model model);
	public int updateQnaBoardHit(Qna qnaNo);
	public int insertBoardQna(Qna Qna);
	public void updateBoardQna(HttpServletRequest request, HttpServletResponse response);
	public void deleteBoardQna(Long qnaNo, HttpServletResponse response);
	public void insertQnaReply(HttpServletRequest request, HttpServletResponse response, Model model);
	
}
