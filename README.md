# joinjoy

### 2021년 5월 23일
-q_adate 관련해서 DB sql 변경

--QnA 답변 날짜 관련 Not Null변경
alter table m_qna modify column a_qdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- 관리자 답변도 테스트 가능하도록 QnA 테이블 예제 데이터 변경
insert into m_qna(m_qno, mno, m_qdate, m_qtitle, m_qcontent, a_qcontent, a_qdate)
values ('1', '1', '2021-1-1', '문의합니다', '회원 탈퇴는 어떻게 하나요?', '회원 탈퇴는 다음과 같이 합니다', '2021-06-04');
insert into m_qna(m_qno, mno, m_qdate, m_qtitle, m_qcontent, a_qcontent, a_qdate)
values ('2', '2', '2021-1-1', '문의합니다', '회원 가입은 어떻게 하나요?', '회원 가입은 다음과 같이 합니다', '2021-06-04');
insert into m_qna(m_qno, mno, m_qdate, m_qtitle, m_qcontent, a_qcontent, a_qdate)
values ('3', '3', '2021-1-1', '문의합니다', '클럽 생성은 어떻게 하나요?', '클럽 생성은 다음과 같이 합니다', '2021-06-04');
insert into m_qna(m_qno, mno, m_qdate, m_qtitle, m_qcontent)
values ('4', '4', '2021-1-1', '문의합니다', '클럽 탈퇴는 어떻게 하나요?');
insert into m_qna(m_qno, mno, m_qdate, m_qtitle, m_qcontent)
values ('5', '5', '2021-1-1', '문의합니다', '신고는 어떻게 하나요?');


### 2021년 5월 24일
-mail Api 잘 돌아가는지 확인할 것.
-확인 후 팀 프로젝트와 적용.

-bootstrap 적용
