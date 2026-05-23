# CS 학습 커리큘럼

AI Engineer / Applied AI Engineer 취업 준비용 CS 학습 로드맵입니다.

이 문서는 자료구조, 알고리즘, 운영체제, 네트워크, 데이터베이스, 시스템 감각을 따로 외우는 것이 아니라 **API 서버, RAG 앱, DB, 배포, 장애 대응과 연결해서 설명할 수 있게 만드는 것**을 목표로 합니다.

---

## 0. 운영 원칙

### 한 줄 핵심

CS는 문제를 많이 푸는 것이 아니라, **시스템이 왜 그렇게 동작하는지 설명하고 직접 작은 구조로 구현할 수 있게 공부한다.**

### 학습 방식

```text
1. 개념은 짧게 이해한다.
2. 흐름도를 그린다.
3. AI 서비스 예시와 연결한다.
4. 작은 구현 또는 설계로 확인한다.
5. 면접식 한 문단으로 정리한다.
6. GitHub README에 기록한다.
```

### 문제 지옥 방지 규칙

```text
- 같은 유형의 빈칸 문제를 반복하지 않는다.
- 확인 문제는 개념 묶음마다 1개만 푼다.
- 문제보다 흐름도, 설계, 예시, README 정리를 우선한다.
- 하루 학습은 “이론 이해 → 실무 연결 → 최종 정리”로 끝낸다.
```

---

## 1. 전체 학습 목표

### 단기 목표

```text
컴퓨터와 서버가 어떻게 동작하는지 기초 감각 만들기
```

### 중기 목표

```text
네트워크, DB, OS를 Python / SQL / API 학습과 연결해서 이해하기
```

### 장기 목표

```text
AI 시스템을 설계하고 디버깅할 수 있는 기초 체력 확보
```

---

## 2. 핵심 학습 영역

| 영역 | 핵심 주제 | AI Engineer 연결 |
|---|---|---|
| 문제 해결 기초 | 모델링, 논리, 경우의 수, 확률 | 요구사항을 구조화하고 예외 케이스를 따지는 능력 |
| 복잡도 | 시간 복잡도, 공간 복잡도, Big-O | RAG 검색, API 응답 시간, 대량 데이터 처리 판단 |
| 자료구조 | 배열, 리스트, 스택, 큐, 해시, 트리, 그래프 | 캐시, 큐 작업, 인덱스, 검색 구조 이해 |
| 알고리즘 | 정렬, 탐색, BFS/DFS, 최단 경로, DP 기초 | 검색, 추천, 라우팅, 최적화 사고 |
| 네트워크 / API | HTTP, DNS, TCP/UDP, TLS, REST, 상태코드 | FastAPI, LLM API, 클라이언트-서버 통신 |
| DB / SQL | RDBMS, 트랜잭션, 인덱스, 조인, NoSQL | 사용자 데이터, 문서 메타데이터, Vector DB와 비교 |
| 운영체제 / Linux | 프로세스, 스레드, 메모리, 파일, 권한, 로그 | 서버 실행, Docker, 배포, 장애 분석 |
| 컴퓨터 구조 | CPU, 메모리, 캐시, 저장장치, I/O | 성능 병목, GPU/CPU 차이, 메모리 감각 |
| 시스템 감각 | Docker, 서버 구조, 캐시, 큐, 로드밸런싱 | 실제 AI 서비스 운영 구조 이해 |

---

## 3. 6개월 CS 마일스톤

### 1개월차: 자료구조 기초

목표: 데이터를 어떻게 담고 꺼내는지 이해한다.

```text
- 배열 / 리스트
- 스택 / 큐
- 해시맵 / 해시 충돌
- 트리 기초
- 그래프 기초
- 시간 복잡도 / 공간 복잡도 입문
```

산출물:

```text
cs/month01_data_structures/
├── README.md
├── list_array.md
├── stack_queue.md
├── hash_table.md
├── tree_graph.md
└── complexity_notes.md
```

AI 서비스 연결:

```text
- Queue / Worker 구조
- 캐시 저장 구조
- 문서 chunk 목록 관리
- Vector 검색 결과 리스트 처리
```

---

### 2개월차: 알고리즘과 문제 해결 전략

목표: 무작정 코드 작성이 아니라 문제를 쪼개고 계산량을 판단한다.

```text
- 문제를 모델로 표현하기
- 반복 전략
- 재귀 기초
- 완전 탐색
- 백트래킹 맛보기
- 정렬 / 탐색
- BFS / DFS
- Big-O로 성능 판단하기
```

산출물:

```text
cs/month02_algorithms/
├── README.md
├── problem_modeling.md
├── brute_force.md
├── recursion.md
├── sorting_searching.md
├── bfs_dfs.md
└── big_o_cases.md
```

AI 서비스 연결:

```text
- 검색 후보를 줄이는 사고
- RAG chunk 탐색 흐름
- 그래프 기반 관계 탐색
- 대량 요청에서 느려지는 지점 찾기
```

---

### 3개월차: 네트워크 / HTTP / API

목표: 사용자의 요청이 서버까지 도착하고 응답되는 과정을 설명한다.

```text
- 네트워크 큰 그림
- DNS / IP / MAC / ARP 기초
- TCP와 UDP
- HTTP 메시지 구조
- HTTP Method / Status Code / Header
- URL / URI / Query Parameter / Body
- Cookie / Cache
- HTTPS / TLS
- Proxy / Load Balancer
- REST API 설계
```

산출물:

```text
cs/month03_network_api/
├── README.md
├── request_lifecycle.md
├── dns_ip_tcp_http.md
├── http_message.md
├── rest_api_design.md
├── status_code_header.md
└── proxy_load_balancer.md
```

AI 서비스 연결:

```text
- POST /chat 요청 흐름
- POST /documents PDF 업로드 흐름
- GET /jobs/{job_id} 상태 조회
- LLM API 호출 실패와 timeout
- CORS / 인증 / HTTPS 기본 감각
```

---

### 4개월차: 데이터베이스 / SQL

목표: 데이터를 어떻게 저장하고, 조회하고, 안전하게 변경하는지 이해한다.

```text
- DBMS와 파일 저장의 차이
- RDBMS 기본 구조
- 테이블 / 필드 / 레코드 / 키
- 관계와 무결성 제약
- DDL / DML / TCL
- JOIN / GROUP BY
- 인덱스
- 트랜잭션
- 정규화
- NoSQL / Redis / MongoDB 맛보기
- 분산 DB / 샤딩 기초
```

산출물:

```text
cs/month04_database/
├── README.md
├── rdbms_basics.md
├── keys_constraints.md
├── join_index.md
├── transaction.md
├── normalization.md
└── nosql_redis_mongodb.md
```

AI 서비스 연결:

```text
- 사용자 정보 저장
- 문서 메타데이터 저장
- 작업 상태 pending / processing / completed / failed 저장
- Vector DB와 RDBMS 역할 구분
- Redis 캐시와 큐 구조 이해
```

---

### 5개월차: 운영체제 / Linux

목표: 서버 프로그램이 OS 위에서 어떻게 실행되는지 이해한다.

```text
- 운영체제의 역할
- 시스템 콜과 커널 / 사용자 모드
- 프로세스와 스레드
- 멀티프로세스와 멀티스레드
- 동기화와 교착 상태
- CPU 스케줄링
- 메모리 관리
- 가상 메모리
- 파일 시스템
- 권한
- 포트 / 환경변수 / 로그
```

산출물:

```text
cs/month05_os_linux/
├── README.md
├── process_thread.md
├── scheduling.md
├── memory_virtual_memory.md
├── file_permission.md
├── port_env_log.md
└── deadlock_sync.md
```

AI 서비스 연결:

```text
- FastAPI 서버는 프로세스다
- 요청 처리 중 변수는 메모리에 올라간다
- LLM API 호출은 I/O 대기다
- async/await와 동시성 이해
- Docker 컨테이너 안에서 서버가 실행되는 구조
- 로그로 장애 원인 추적
```

---

### 6개월차: 시스템 감각 / Docker / 배포 / 디버깅

목표: 작은 AI 서비스를 운영 가능한 구조로 설명한다.

```text
- 클라이언트-서버 구조
- Web Server / WAS
- Docker 기초
- 컨테이너와 가상 머신 차이
- Reverse Proxy / Nginx
- Cache
- Queue / Worker
- Retry / Timeout / Rate Limit
- Monitoring / Logging
- 장애 상황 분석
- 작은 시스템 디자인
```

산출물:

```text
cs/month06_system_design/
├── README.md
├── docker_container.md
├── web_was_reverse_proxy.md
├── cache_queue_worker.md
├── timeout_retry_rate_limit.md
├── logging_monitoring.md
└── rag_system_design.md
```

AI 서비스 연결:

```text
- RAG PDF 업로드 → Queue → Worker → Vector DB 저장
- /chat API → Vector DB 검색 → LLM 호출 → JSON 응답
- 장애 예시: LLM timeout, DB connection 부족, queue 적체
- 배포 예시: FastAPI + Docker + Nginx + DB
```

---

## 4. 주간 학습 구성

| 요일 | 주제 | 방식 |
|---|---|---|
| Mon | 자료구조 | 개념 + 작은 구현 |
| Tue | 알고리즘 / Big-O | 문제 해결 전략 + 계산량 판단 |
| Wed | HTTP / API | 요청 흐름 + API 설계 |
| Thu | DB / SQL | 데이터 저장 / 조회 / 트랜잭션 |
| Fri | OS / Linux | 프로세스 / 메모리 / 로그 / 권한 |
| Sat | 실습 / 정리 | README, 흐름도, 미니 설계 |
| Sun | 회복 / 가벼운 복습 | 면접 질문 3개, 회고 |

---

## 5. 하루 학습 루틴

```text
09:00 - 09:20  데일리 스크럼 / 오늘 계획
09:20 - 10:20  영어 1차
10:40 - 12:40  CS 개념 학습
14:00 - 16:00  구현 / 실습
16:30 - 18:00  복습 / 응용
19:30 - 20:50  GitHub 정리 / 오류 로그
21:10 - 21:50  영어 2차 / 프로젝트 설명 연습
21:50 - 22:00  데일리 회고
```

CS 순공부 목표:

```text
하루 2~4시간
개념 이해 + 구현/복습 반복
```

---

## 6. 세션 진행 템플릿

각 CS 세션은 아래 순서로 진행한다.

```text
1. 이전 내용 3분 복습
2. 오늘 개념 1~2개 설명
3. 흐름도 작성
4. AI 서비스 예시로 연결
5. 확인 문제 1개만 풀이
6. 미니 설계 또는 작은 구현
7. 면접식 정리
8. GitHub README 업데이트
```

---

## 7. README 기록 템플릿

각 Day 또는 Month 폴더 README는 아래 구조를 따른다.

```md
# CS Day N - 주제명

## 한 줄 핵심


## 오늘 배운 개념


## 흐름도


## AI 서비스 연결


## 작은 구현 / 설계


## 면접식 설명


## 오늘의 실수


## 다음에 반복할 것

```

---

## 8. 현재 진행 기록

### Day 01 - API 요청 흐름과 Queue / Worker

학습한 내용:

```text
- API 서버는 OS 위에서 실행되는 프로세스다.
- 요청 처리 중 필요한 값은 메모리에 잠깐 저장된다.
- AI 서비스는 LLM API, Vector DB, MySQL 같은 I/O 작업에서 병목이 생기기 쉽다.
- 오래 걸리는 작업은 Queue에 넣고 Worker가 백그라운드에서 처리한다.
```

핵심 흐름:

```text
/chat 요청
→ API 서버
→ message를 메모리에 저장
→ Vector DB 조회
→ LLM 호출
→ JSON 응답 반환
```

PDF 업로드 흐름:

```text
사용자 PDF 업로드
→ API 서버가 파일 저장
→ 작업을 Queue에 등록
→ job_id와 pending 반환
→ Worker가 PDF 처리
→ Vector DB 저장
→ status를 completed로 변경
```

작업 상태:

```text
pending → processing → completed
pending → processing → failed
```

### Day 02 - 네트워크와 API 요청 구조

학습한 내용:

```text
- DNS는 도메인을 IP로 바꿔준다.
- IP는 네트워크에서 서버를 찾기 위한 주소다.
- TCP는 클라이언트와 서버가 데이터를 주고받기 전에 만드는 연결이다.
- HTTP는 클라이언트와 서버가 요청과 응답을 주고받는 규칙이다.
- 서버는 Method와 Path를 보고 어떤 함수가 처리할지 결정한다.
```

핵심 구분:

```text
Path = 대상
Query Parameter = 조건
Body = 데이터
```

예시:

```text
POST /chat
Body: message

POST /documents
Body: PDF file

GET /jobs/123
Path: /jobs/123

GET /documents?status=completed
Query: status=completed
```

---

## 9. 다음 학습 순서

바로 이어갈 다음 주제는 아래 순서로 진행한다.

```text
Day 03. 자료구조 기초 - 배열 / 리스트 / 스택 / 큐
Day 04. Big-O - 시간 복잡도와 공간 복잡도
Day 05. 해시 테이블 - 캐시와 빠른 조회
Day 06. 네트워크 심화 - TCP / UDP / HTTP 메시지
Day 07. DB 기초 - 테이블 / 키 / 관계
Day 08. OS 기초 - 프로세스 / 스레드 / 메모리
Day 09. Queue / Worker 실습 - RAG PDF 처리 구조
Day 10. 미니 시스템 디자인 - RAG 앱 전체 구조 그리기
```

---

## 10. 최종 목표

```text
CS를 외우는 것을 넘어,
API 서버, RAG 앱, DB, Docker, 배포 구조를 이해하고 설명하는 개발자로 성장한다.
```
