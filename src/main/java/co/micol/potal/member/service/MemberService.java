package co.micol.potal.member.service;

import java.util.List;

public interface MemberService {
	List<MemberVO> memberSelectList(); 		// 전체리스트
	MemberVO memberSelect(MemberVO vo);		// 한명의 정보 또는 로그인 체크
	int memberInsert(MemberVO vo);			// 멤버 삽입		
	int memberUpdate(MemberVO vo);			// 멤버 수정
	int memberDelete(MemberVO vo);			// 멤버 삭제
	boolean memberIdCheck(String id); 		// 아이디 중복 체크
	
}