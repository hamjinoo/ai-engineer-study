# SQL Day 01 - SELECT / WHERE / ORDER BY / LIMIT

## 한 줄 핵심

SQL의 기본은 **어떤 테이블에서, 어떤 컬럼을, 어떤 조건으로, 어떤 순서로 볼지**를 명확하게 쓰는 것이다.

---

## 오늘의 목표

- `SELECT`로 필요한 컬럼만 조회한다.
- `FROM`으로 데이터를 가져올 테이블을 지정한다.
- `WHERE`로 조건에 맞는 행만 필터링한다.
- `ORDER BY`로 결과를 정렬한다.
- `LIMIT`로 결과 개수를 제한한다.
- `AND`, `OR`로 여러 조건을 연결한다.
- AI 제품 로그 예시에서 실패 응답과 고지연 응답을 찾는다.

---

## 사용한 예시 테이블

### responses

AI 응답 로그를 나타내는 테이블이다.

| column | meaning |
|---|---|
| `response_id` | 응답 ID |
| `prompt_id` | 프롬프트 ID |
| `user_id` | 사용자 ID |
| `model` | 사용한 모델 |
| `status` | 응답 상태: `success`, `failed` |
| `latency_ms` | 응답 지연 시간, ms 단위 |
| `created_at` | 응답 생성 시각 |

### users

사용자 정보를 나타내는 테이블이다.

| column | meaning |
|---|---|
| `user_id` | 사용자 ID |
| `plan` | 요금제: `free`, `pro`, `business` |
| `country` | 국가 코드 |
| `created_at` | 가입 시각 |

---

## 오늘 연습한 SQL 패턴

### 1. 실패한 응답 조회

```sql
SELECT response_id, user_id, model, latency_ms
FROM responses
WHERE status = 'failed'
ORDER BY latency_ms DESC
LIMIT 5;
```

목적: 실패한 AI 응답 중에서 응답 시간이 긴 로그를 먼저 확인한다.

---

### 2. 성공한 응답 중 빠른 응답 조회

```sql
SELECT response_id, status, latency_ms, model
FROM responses
WHERE status = 'success' AND latency_ms <= 500
ORDER BY latency_ms ASC;
```

목적: 성공한 응답 중 빠르게 처리된 사례를 확인한다.

---

### 3. 실패 또는 고지연 응답 조회

```sql
SELECT response_id, status, latency_ms, model
FROM responses
WHERE status = 'failed' OR latency_ms >= 3000
ORDER BY latency_ms DESC;
```

목적: 실패했거나 너무 느린 응답을 함께 찾아 사용자 경험에 문제가 있었을 가능성이 있는 로그를 확인한다.

---

### 4. 한국 free 요금제 사용자 조회

```sql
SELECT user_id, plan, country
FROM users
WHERE country = 'KR' AND plan = 'free'
ORDER BY user_id ASC;
```

목적: 특정 국가와 요금제 조건을 동시에 만족하는 사용자를 찾는다.

---

## 오늘 배운 핵심 3개

1. `WHERE`는 조건에 맞는 행만 고르는 필터다.
2. `AND`는 두 조건을 모두 만족해야 하고, `OR`는 둘 중 하나만 만족해도 된다.
3. `ORDER BY latency_ms DESC`는 응답 시간이 긴 순서, `ASC`는 짧은 순서로 정렬한다.

---

## 오늘 한 실수

- `responses` 테이블을 `response`로 잘못 쓸 수 있었다.
- 문제에서 요구한 컬럼과 다르게 `SELECT` 컬럼을 고른 적이 있었다.
- 문자열 조건은 큰따옴표보다 작은따옴표를 쓰는 습관이 좋다.
- `latency_ms`는 요청 시간이 아니라 응답 시간 또는 지연 시간이다.
- 쿼리 조건은 500ms인데 설명에서는 430ms라고 말한 적이 있었다.

---

## 아직 약한 것

- 문제에서 요구한 `SELECT` 컬럼을 정확히 읽기
- `WHERE` 조건값을 문제와 다르게 쓰지 않기
- 쿼리 조건과 설명의 숫자를 일치시키기
- 결과가 왜 그렇게 나오는지 예상하기

---

## 다음 세션에서 반복할 것

- `IN`으로 여러 값 조건을 간단히 표현하기
- `BETWEEN`으로 범위 조건 쓰기
- `LIKE`로 문자열 검색하기
- `AND`와 `OR`가 섞일 때 괄호로 우선순위 정하기

---

## 포트폴리오 연결 문장

AI 응답 로그 테이블에서 실패 응답과 고지연 응답을 SQL로 조회하여, 사용자 경험에 문제가 생겼을 가능성이 있는 케이스를 탐색했다.

---

## 커밋 메시지

```bash
study: add SQL day 01 select where order practice
```
