# 🗓️ 12주 일정표

> 이 문서는 [RAG 전체지도의 단일 체크리스트](../RAG-전체지도.md#해야-할-일--이-체크리스트만-사용)를 12주에 나눈 **참고 일정**이다.
>
> 여기에는 진행 체크를 하지 않는다. 이미 끝낸 내용은 건너뛰고, 날짜보다 각 주차의 통과 조건을 우선한다.

| 주차 | 이번 주의 질문 | 주요 작업 | 남길 결과 | 통과 조건 |
|---|---|---|---|---|
| W1 | 현재 RAG는 얼마나 잘 찾나? | 골든셋 검토, dev/test 분리 | 고정 평가셋 | test를 건드리지 않고 실험할 수 있다 |
| W2 | 현재 검색기의 기준점은? | BM25·embedding Hit@k, 실패 확인 | `exp01-baseline.md` | 현재 점수와 실패 3건을 설명한다 |
| W3 | 현업 도구로 어떻게 연결하나? | LangChain `Document`, metadata, 공통 검색 결과 | 데이터 모델과 adapter | 기존 직접 구현과 새 구조를 선택할 수 있다 |
| W4 | 벡터를 어디에 보관하나? | ChromaDB Persistent, embedding 설정 | 재실행 가능한 vector store | 프로그램을 껐다 켜도 같은 문서를 검색한다 |
| W5 | 한국어 검색을 어떻게 보완하나? | Kiwi BM25, dense 검색, RRF | 후보 top-20 | 두 검색기의 장점을 한 후보 목록으로 합친다 |
| W6 | 좋은 후보를 어떻게 위로 올리나? | CrossEncoder reranker, latency 측정 | rerank 전후 비교표 | 후보 Hit@20과 최종 Hit@3을 구분한다 |
| W7 | 근거가 부족하면 어떻게 하나? | LangGraph node·state·conditional edge | 재검색 1회 흐름 | 답변·재검색·거절 경로를 로그로 설명한다 |
| W8 | 답이 근거에 붙어 있나? | 답변 prompt, 출처, 숫자·날짜 검증 | 대표 생성 실패 | 검색 성공과 답변 실패를 구분한다 |
| W9 | 한국어 답변을 어떻게 채점하나? | 사람 rubric, 한국어 Ragas | `exp03-answer-quality.md` | 직접 지표와 LLM judge의 차이를 설명한다 |
| W10 | 다른 코드 변경이 품질을 깨뜨리나? | 단위·통합·end-to-end 테스트 | 재현 가능한 테스트 명령 | 실패 시 테스트 프로세스도 실패한다 |
| W11 | 다른 사람이 어떻게 실행하나? | FastAPI, Docker, 구조화 로그 | 실행 가능한 API | 새 환경에서 질문부터 답변까지 재현한다 |
| W12 | 결과를 어떻게 취업 언어로 바꾸나? | README, GIF, 이력서, 면접 설명 | 공개 포트폴리오 | 숫자·실패·한계를 과장 없이 설명한다 |

## 권장 시간 배분

- 한국어 RAG 구현·실험: 70%
- 필요한 개념 학습: 15%
- README·면접·지원 준비: 15%

`tiny-pretraining`은 RAG 작업을 막지 않는 범위에서만 보조 학습으로 진행한다. tokenizer → next-token → loss → sampling 흐름을 설명할 수 있으면 충분하다.

## 일정이 밀리면 먼저 뺄 것

1. 화려한 데모 디자인
2. Cohere와 로컬 reranker의 추가 비교
3. embedding 모델 여러 개 비교
4. Langfuse 같은 관측성 플랫폼
5. tiny-pretraining의 추가 실험

## 일정이 밀려도 남길 것

1. 고정 평가셋과 baseline
2. 한국어 hybrid 검색과 reranker
3. 실패 분석
4. 답 없는 질문 평가
5. 재현 가능한 README와 API
