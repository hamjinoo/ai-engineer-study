# AI Engineer Study Roadmap

이 문서는 AI Engineer / Applied AI Engineer 취업 준비를 위한 전체 학습 로드맵입니다.

---

## 한 줄 핵심

**마스터 방향은 AI Engineer 취업이고, 매일 학습은 Python → SQL → API/Backend → AI/LLM/RAG → CS → Portfolio로 연결합니다.**

---

## 1. 전체 우선순위

| 우선순위 | 트랙 | 이유 |
|---:|---|---|
| 1 | Python | 모든 AI/백엔드/데이터 처리의 기본 언어 |
| 2 | SQL / DB | 사용자 데이터, 로그, 평가 데이터, RAG 메타데이터 관리 |
| 3 | API / Backend | LLM 기능을 서비스로 연결하기 위한 필수 기반 |
| 4 | AI / LLM / RAG | 목표 직무의 핵심 기술 |
| 5 | CS | 시스템을 이해하고 디버깅하는 기초 체력 |
| 6 | English | 기술 문서, 면접, 글로벌 직무 확장 대비 |
| 7 | Portfolio | 학습 산출물을 취업용 증거로 번역 |

---

## 2. 8주 학습 흐름

### Week 1 - Python 기초 + 데이터 처리

목표:

- 변수, 조건문, 반복문, 함수 사용
- 리스트와 딕셔너리 데이터 처리
- 작은 문제를 `solution()` 함수 형태로 작성

산출물:

- `python/day01_list_dict_function/practice.py`
- Python 기초 문제 풀이 README
- 공부 기록 분석 미니 프로그램

---

### Week 2 - SQL / DB 기초

목표:

- SELECT, WHERE, ORDER BY, LIMIT
- JOIN, GROUP BY
- Primary Key, Foreign Key
- 간단한 테이블 설계

산출물:

- SQL 문제 풀이 50개
- `users`, `study_logs`, `responses` 예제 테이블 설계
- SQL 오답 로그

---

### Week 3 - HTTP / API / Backend 기초

목표:

- HTTP Method
- Status Code
- Header / Body
- JSON
- REST API
- FastAPI 기본 라우팅

산출물:

- API 요청 흐름 정리
- FastAPI 미니 서버
- 공부 기록 API 설계

---

### Week 4 - AI / LLM / RAG 기초

목표:

- LLM API 호출 흐름 이해
- Prompt / Response 구조 이해
- Chunking, Embedding, Retrieval 개념 이해
- 작은 문서 Q&A 구조 설계

산출물:

- LLM API 호출 예제
- 미니 RAG 설계 문서
- RAG 실패 원인 정리

---

### Week 5 - CS 기초

목표:

- 자료구조: list, dict, set, stack, queue
- Big-O 기초
- HTTP 요청 흐름
- 프로세스, 포트, 로그, 환경변수 기초

산출물:

- CS 개념 요약 README
- 자료구조 Python 예제
- 서버 에러 상황별 원인 정리

---

### Week 6 - Backend / Docker / 운영 기초

목표:

- FastAPI 구조화
- 환경변수 관리
- Docker 기초
- 로그 확인
- 포트 충돌 해결

산출물:

- Dockerized FastAPI 앱
- `.env.example`
- 실행 방법 README

---

### Week 7 - 미니 프로젝트 1

목표:

- Python + FastAPI + SQL + LLM API 연결
- 사용자가 입력한 공부 기록을 저장하고 요약하는 작은 서비스 만들기

산출물:

- Study Log Analyzer API
- README
- API 명세
- 회고 문서

---

### Week 8 - 포트폴리오 정리

목표:

- 프로젝트 설명 정리
- 문제 정의, 구현 과정, 트러블슈팅, 개선점 문서화
- 면접 답변화

산출물:

- 포트폴리오 프로젝트 문서
- 이력서용 bullet point
- 면접 Q&A

---

## 3. 매일 학습 세션 구조

```text
1. 오늘 목표 3개 설정
2. 개념 10~15분
3. 문제 풀이 30~40분
4. 미니 과제 40~60분
5. 안 보고 재작성
6. README/회고 정리
7. GitHub 커밋
```

---

## 4. 학습 완료 기준

단순히 “이해했다”가 아니라 아래 기준을 만족해야 완료로 봅니다.

```text
- 안 보고 코드를 다시 작성할 수 있다.
- 왜 그렇게 작성했는지 말로 설명할 수 있다.
- 틀린 부분을 기록했다.
- 비슷한 변형 문제를 풀 수 있다.
- README에 학습 내용을 정리했다.
- 면접 답변식으로 3~5문장 설명할 수 있다.
```
