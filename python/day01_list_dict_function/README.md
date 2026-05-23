# Day 01 - Python List, Dict, Function

## 한 줄 핵심

**리스트 안의 딕셔너리 데이터를 순회하면서 조건에 따라 필터링, 변환, 집계하는 기본 패턴을 학습했습니다.**

---

## 1. 오늘 배운 개념

| 개념 | 설명 |
|---|---|
| 리스트 | 여러 데이터를 순서대로 담는 자료형 |
| 딕셔너리 | key-value 형태로 한 개 데이터의 속성을 표현하는 자료형 |
| 반복문 | 리스트 안의 데이터를 하나씩 처리하는 방법 |
| 조건문 | 값에 따라 다른 처리를 하는 방법 |
| append | 새 리스트에 값을 추가하는 방법 |
| return | 함수의 결과를 반환하는 방법 |
| solution 함수 | 코딩 테스트 스타일의 문제 풀이 기본 형태 |

---

## 2. 사용한 예제 데이터

```python
study_logs = [
    {"day": "Mon", "hours": 2},
    {"day": "Tue", "hours": 6},
    {"day": "Wed", "hours": 9},
    {"day": "Thu", "hours": 3},
    {"day": "Fri", "hours": 5}
]
```

이 데이터는 요일별 공부 시간을 표현합니다.

---

## 3. 오늘 푼 문제

### 문제 1. 공부 기록을 level로 변환하기

입력:

```python
{"day": "Mon", "hours": 2}
```

출력:

```python
{"day": "Mon", "level": "weak"}
```

판단 기준:

| hours | level |
|---:|---|
| 8 이상 | great |
| 4 이상 | good |
| 4 미만 | weak |

---

### 문제 2. 충분히 공부한 기록만 반환하기

`hours >= 4`인 기록만 새 리스트에 담았습니다.

---

### 문제 3. 총 공부 시간 구하기

모든 `hours` 값을 더해 총합을 반환했습니다.

---

### 문제 4. 평균 공부 시간 구하기

총합을 `len(study_logs)`로 나누어 평균을 구했습니다.

---

### 문제 5. 가장 많이 공부한 날 찾기

첫 번째 기록을 기준값으로 잡고, 더 큰 `hours`를 만나면 최고 기록을 갱신했습니다.

```python
best_log = study_logs[0]

for log in study_logs:
    if log["hours"] > best_log["hours"]:
        best_log = log
```

---

## 4. 오늘의 핵심 패턴

### 1. 조건에 맞는 데이터만 모으기

```python
new_logs = []

for log in study_logs:
    if log["hours"] >= 4:
        new_logs.append(log)
```

---

### 2. 원본 데이터를 새 형태로 바꾸기

```python
summary_logs = []

for log in study_logs:
    day = log["day"]
    hours = log["hours"]

    if hours >= 8:
        level = "great"
    elif hours >= 4:
        level = "good"
    else:
        level = "weak"

    new_log = {
        "day": day,
        "level": level
    }

    summary_logs.append(new_log)
```

---

### 3. 합계 구하기

```python
total = 0

for log in study_logs:
    total += log["hours"]
```

---

### 4. 최댓값 찾기

```python
best_log = study_logs[0]

for log in study_logs:
    if log["hours"] > best_log["hours"]:
        best_log = log
```

---

## 5. 오늘 실수한 부분

| 실수 | 원인 | 수정 |
|---|---|---|
| 이미 필터링된 데이터를 다시 필터링함 | 원본 데이터와 결과 데이터를 혼동 | 항상 원본 리스트에서 시작하기 |
| `hour <= 4` 사용 | 미만과 이하 구분 부족 | 4시간 미만은 `< 4` 사용 |
| `return` 없이 `print`만 사용 | 코테 함수 형식 미숙 | `solution()` 안에서는 `return` 사용 |
| `new_log`를 반복문 밖에 작성 | 들여쓰기 위치 혼동 | 반복마다 생성해야 하는 값은 반복문 안에 작성 |
| `best = 0`으로 최댓값 초기화 | 모든 값이 0일 때 실패 가능 | `best_log = study_logs[0]` 사용 |

---

## 6. 안 보고 다시 작성해야 할 것

1. `hours >= 4`인 기록만 반환하는 함수
2. 총 공부 시간을 반환하는 함수
3. 평균 공부 시간을 반환하는 함수
4. 가장 많이 공부한 날을 반환하는 함수
5. `hours`에 따라 `level`을 붙인 새 리스트를 반환하는 함수

---

## 7. 면접식 설명

오늘 배운 내용을 면접식으로 말하면 다음과 같습니다.

> Python에서 리스트는 여러 개의 데이터를 저장할 때 사용하고, 딕셔너리는 하나의 데이터가 가진 속성을 key-value 형태로 표현할 때 사용합니다. 예를 들어 공부 기록 여러 개는 리스트로 관리하고, 각 공부 기록은 `day`와 `hours`를 가진 딕셔너리로 표현할 수 있습니다. 반복문으로 리스트를 순회하면서 조건문으로 필요한 데이터를 필터링하거나 새로운 형태로 변환할 수 있습니다. 이러한 패턴은 API 응답 데이터나 로그 데이터를 처리할 때 자주 사용됩니다.

---

## 8. 다음 학습

다음에는 아래 내용을 학습합니다.

```text
- 함수 분리
- 문자열 처리
- f-string 활용
- 최솟값 찾기
- 데이터 처리 코드를 작은 프로그램으로 구조화하기
```
