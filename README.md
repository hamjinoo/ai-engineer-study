# AI Engineer Study

Applied AI Engineer로 전환하는 과정에서 만든 **학습 근거와 기술 설명 자료**를 모은 저장소입니다.

## 어디서 시작하나

문서를 순서대로 전부 읽을 필요는 없습니다.

1. [RAG 시작 안내](rag/START_HERE.md)
2. [12살도 이해할 수 있는 RAG 전체 지도](rag/RAG-전체지도.md)
3. 실제 코드는 [gongo-rag](https://github.com/hamjinoo/gongo-rag)

진행 체크는 `RAG-전체지도.md` 한 곳에서만 관리하고, 나머지 문서는 막힌 개념을 찾는 참고자료로 사용합니다.

## 세 저장소의 역할

| 저장소 | 역할 | 읽는 사람이 얻는 것 |
|---|---|---|
| [portfolio](https://github.com/hamjinoo/portfolio) | 한 링크로 보는 소개 허브 | 어떤 문제를 풀었고 어디를 보면 되는지 |
| [gongo-rag](https://github.com/hamjinoo/gongo-rag) | 대표 Applied AI 프로젝트 | 코드, 테스트, 평가, 실험, 기술 선택 |
| `ai-engineer-study` | 학습·이해의 증거 | RAG 전체 그림, 개념 설명, 면접 준비 |

저장소 이력을 억지로 합치지 않고 역할을 분리해, 프로젝트 코드와 학습 문서가 서로 묻히지 않게 했습니다.

## 현재 집중하는 것

대표 프로젝트는 한국어 정부 지원사업 공고문 RAG인 `gongo-rag`입니다.

```text
직접 구현한 BM25·embedding 기준선
→ LangChain 공통 구조
→ ChromaDB + 한국어 hybrid 검색
→ CrossEncoder reranking
→ LangGraph 재검색·거절 흐름
→ Ragas + 사람 검토
→ FastAPI + Docker
```

현재 기준선에는 PDF 추출, chunking, BM25, 의미 검색, 골든셋 36문항, Hit@k와 no-answer 평가가 있습니다. 최종 포트폴리오에서는 정확도 숫자 하나보다 **어디서 실패했고 어떤 변경이 왜 개선됐는지**를 보여주는 것을 목표로 합니다.

## 폴더 안내

| 경로 | 내용 | 우선순위 |
|---|---|---|
| [`rag/`](rag/) | RAG 전체 지도, 12주 일정, 기초·심화·취업 참고자료 | 현재 핵심 |
| [`llm-pretraining/`](llm-pretraining/) | tokenizer, next-token prediction, loss 등 LLM 원리 학습 | 보조 축 |
| `python/`, `sql/`, `cs/`, `api/`, `backend/` | 개발 기본기 기록 | 필요할 때 |
| `portfolio/`, `retrospectives/`, `english/` | 포트폴리오·회고·영어 기록 | 참고 |
| [`archive/legacy-tracking/`](archive/legacy-tracking/) | 이전 로드맵과 기록 양식 | 보관용 |

## 리뷰어용 5분 경로

1. 이 README에서 프로젝트 역할 확인
2. [gongo-rag README](https://github.com/hamjinoo/gongo-rag#readme)에서 현재 구현과 아키텍처 확인
3. `gongo-rag/experiments`에서 기준선·개선 결과 확인
4. [RAG 전체 지도](rag/RAG-전체지도.md)에서 이해 범위와 다음 의사결정 확인

## 운영 원칙

- 코드 입력량보다 입력·출력·실패 원인·선택 이유를 이해합니다.
- AI에게 연결 코드와 반복 작업을 맡겨도, 평가셋 검토와 결과 해석은 직접 합니다.
- 한 번에 하나의 변수를 바꾸고 같은 평가셋으로 비교합니다.
- 최종 성능, 한계, 미완성 항목을 과장하지 않고 구분합니다.
