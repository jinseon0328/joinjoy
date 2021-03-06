
-- member 테이블 예제 데이터 삽입
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (1, 'aaa', password('1111'), 'aaa@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (2, 'bbb', password('1111'), 'bbb@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (3, 'ccc', password('1111'), 'ccc@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (4, 'ddd', password('1111'), 'ddd@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (5, 'eee', password('1111'), 'eee@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (6, 'fff', password('1111'), 'fff@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (7, 'ggg', password('1111'), 'ggg@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (8, 'hhh', password('1111'), 'hhh@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (9, 'iii', password('1111'), 'iii@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (10, 'jjj', password('1111'), 'jjj@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '1', '1');


-- 게시판 카테고리 타입 테이블 예제 데이터 삽입
insert into b_type(b_tno, b_ttitle)
values ('1', '꿀팁게시판');

insert into b_type(b_tno, b_ttitle)
values ('2', '자유게시판');

insert into b_type(b_tno, b_ttitle)
values ('3', '세컨핸즈샵');


-- 꿀팁게시판 테이블 예제 데이터 삽입
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('1', '1', '1', '꿀팁1', '내용1', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('2', '1', '2', '꿀팁2', '내용2', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('3', '1', '3', '꿀팁3', '내용3', '1', '2020-1-1');

-- 자유게시판 테이블 예제 데이터 삽입
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('4', '2', '4', '자유1', '내용1', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('5', '2', '5', '자유2', '내용2', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('6', '2', '6', '자유3', '내용3', '1', '2020-1-1');

-- 세컨핸즈게시판 테이블 예제 데이터 삽입
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('7', '3', '7', '세컨1', '내용1', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('8', '3', '8', '세컨2', '내용2', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('9', '3', '9', '세컨3', '내용3', '1', '2020-1-1');

-- 클럽 테이블 예제 데이터 삽입
insert into club(cno, mno, carrive, ctheme, ctitle, ccontent, csdt, cedt, ctotal)
values ('1', '1', '부산', '1박2일', '치맥', '바다에서 먹읍시다', '2020-1-1', '2020-1-2', 5);
insert into club(cno, mno, carrive, ctheme, ctitle, ccontent, csdt, cedt, ctotal)
values ('2', '2', '서울', '당일치기', '치맥', '바다에서 먹읍시다', '2020-1-1', '2020-1-2', 5);
insert into club(cno, mno, carrive, ctheme, ctitle, ccontent, csdt, cedt, ctotal)
values ('3', '3', '대구', '3박4일', '치맥', '바다에서 먹읍시다', '2020-1-1', '2020-1-2', 5);
insert into club(cno, mno, carrive, ctheme, ctitle, ccontent, csdt, cedt, ctotal)
values ('4', '4', '대전', '저녁', '치맥', '바다에서 먹읍시다', '2020-1-1', '2020-1-2', 5);
insert into club(cno, mno, carrive, ctheme, ctitle, ccontent, csdt, cedt, ctotal)
values ('5', '5', '경주', '점심', '치맥', '바다에서 먹읍시다', '2020-1-1', '2020-1-2', 5);

-- 핫플레이스 테이블 예제 데이터 삽입
insert into hotplace(hno, htitle, hcontent, hdate, hcount, haddr, hphoto)
values ('1', '경복궁', '야간개장', '2020-1-1', '1', '서울특별시 세종로', '경복궁.jpg');
insert into hotplace(hno, htitle, hcontent, hdate, hcount, haddr, hphoto)
values ('2', '광안리', '수변공원', '2020-1-1', '1', '부산광역시 수영구', '광안리.jpg');
insert into hotplace(hno, htitle, hcontent, hdate, hcount, haddr, hphoto)
values ('3', '팔공산', '산악회', '2020-1-1', '1', '대구광역시 동구', '팔공산.jpg');
insert into hotplace(hno, htitle, hcontent, hdate, hcount, haddr, hphoto)
values ('4', '대청댐', 'damn', '2020-1-1', '1', '대전광역시 대덕구', '대청댐.jpg');
insert into hotplace(hno, htitle, hcontent, hdate, hcount, haddr, hphoto)
values ('5', '경주월드', '테마파크', '2020-1-1', '1', '경상북도 경주시', '경주월드.jpg');

-- FAQ 테이블 예제 데이터 삽입
insert into faq(fno, ftitle, fcontent, fdate)
values ('1', '조인조이 사용법', '조인하세요!', '2020-1-1');
insert into faq(fno, ftitle, fcontent, fdate)
values ('2', '조인조이 회원가입', '가입하세요!', '2020-1-1');
insert into faq(fno, ftitle, fcontent, fdate)
values ('3', '조인조이 로그인', '로그인하세요!', '2020-1-1');
insert into faq(fno, ftitle, fcontent, fdate)
values ('4', '조인조이 글쓰기', '글쓰세요!', '2020-1-1');
insert into faq(fno, ftitle, fcontent, fdate)
values ('5', '조인조이 탈퇴', '탈퇴는 하지마세요!', '2020-1-1');

-- 할인정보 테이블 예제 데이터 삽입
insert into discount(dno, dtitle, dcontent, ddate, dcount, dphoto)
values ('1', '에버랜드', '50% 할인!', '2020-1-1', '1', '에버랜드.jpg');
insert into discount(dno, dtitle, dcontent, ddate, dcount, dphoto)
values ('2', '롯데월드', '50% 할인!', '2020-1-1', '1', '롯데월드.jpg');
insert into discount(dno, dtitle, dcontent, ddate, dcount, dphoto)
values ('3', '경주랜드', '50% 할인!', '2020-1-1', '1', '경주랜드.jpg');
insert into discount(dno, dtitle, dcontent, ddate, dcount, dphoto)
values ('4', '디즈니월드', '50% 할인!', '2020-1-1', '1', '디즈니랜드.jpg');
insert into discount(dno, dtitle, dcontent, ddate, dcount, dphoto)
values ('5', '버거킹', '50% 할인!', '2020-1-1', '1', '버거킹.jpg');

-- QnA 테이블 예제 데이터 삽입
insert into m_qna(m_qno, mno, m_qdate, m_qtitle, m_qcontent, a_qcontent, a_qdate)
values ('1', '1', '2021-1-1', '문의합니다', '회원 탈퇴는 어떻게 하나요?', '회원 탈퇴는 다음과 같이 합니다', '2021-06-04');
insert into m_qna(m_qno, mno, m_qdate, m_qtitle, m_qcontent, a_qcontent, a_qdate)
values ('2', '2', '2021-1-1', '문의합니다', '회원 가입은 어떻게 하나요?', '회원 가입은 다음과 같이 합니다', '2021-06-04');
insert into m_qna(m_qno, mno, m_qdate, m_qtitle, m_qcontent, a_qcontent, a_qdate)
values ('3', '3', '2021-1-1', '문의합니다', '클럽 생성은 어떻게 하나요?', '클럽 생성은 다음과 같이 합니다', '2021-06-04');
insert into m_qna(m_qno, mno, m_qdate, m_qtitle, m_qcontent, a_qcontent, a_qdate)
values ('4', '4', '2021-1-1', '문의합니다', '클럽 탈퇴는 어떻게 하나요?', '클럽 탈퇴는 다음과 같이 합니다', '2021-06-04');
insert into m_qna(m_qno, mno, m_qdate, m_qtitle, m_qcontent, a_qcontent, a_qdate)
values ('5', '5', '2021-1-1', '문의합니다', '신고는 어떻게 하나요?', '신고는 다음과 같이 합니다', '2021-06-04');





