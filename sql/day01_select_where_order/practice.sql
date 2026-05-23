-- SQL Day 01: SELECT / WHERE / ORDER BY / LIMIT
-- Goal: AI 제품 로그 데이터를 조회하고, 조건에 맞는 행을 찾는 기본 SQL을 연습한다.

-- ============================================================
-- 1. Practice tables
-- ============================================================

DROP TABLE IF EXISTS responses;
DROP TABLE IF EXISTS users;

CREATE TABLE responses (
    response_id INT PRIMARY KEY,
    prompt_id INT,
    user_id INT,
    model VARCHAR(50),
    status VARCHAR(20),
    latency_ms INT,
    created_at DATETIME
);

INSERT INTO responses (response_id, prompt_id, user_id, model, status, latency_ms, created_at) VALUES
(1, 101, 1, 'gpt-4.1',      'success', 820,  '2026-05-20 09:10:00'),
(2, 102, 2, 'gpt-4.1',      'failed',  3100, '2026-05-20 09:15:00'),
(3, 103, 1, 'gpt-4.1-mini', 'success', 430,  '2026-05-20 09:20:00'),
(4, 104, 3, 'gpt-4.1',      'failed',  5200, '2026-05-20 09:25:00'),
(5, 105, 2, 'gpt-4.1-mini', 'success', 390,  '2026-05-20 09:30:00');

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    plan VARCHAR(30),
    country VARCHAR(10),
    created_at DATETIME
);

INSERT INTO users (user_id, plan, country, created_at) VALUES
(1, 'free',     'KR', '2026-05-01 10:00:00'),
(2, 'pro',      'KR', '2026-05-02 11:00:00'),
(3, 'free',     'JP', '2026-05-03 12:00:00'),
(4, 'pro',      'US', '2026-05-04 13:00:00'),
(5, 'business', 'KR', '2026-05-05 14:00:00');

-- ============================================================
-- 2. SELECT / FROM / WHERE / ORDER BY / LIMIT
-- ============================================================

-- Q1. 실패한 응답을 응답 시간이 긴 순서대로 최대 5개 조회한다.
SELECT response_id, user_id, model, latency_ms
FROM responses
WHERE status = 'failed'
ORDER BY latency_ms DESC
LIMIT 5;

-- Q2. 성공한 응답을 응답 시간이 짧은 순서대로 최대 3개 조회한다.
SELECT response_id, user_id, model, latency_ms
FROM responses
WHERE status = 'success'
ORDER BY latency_ms ASC
LIMIT 3;

-- Q3. 실패한 응답 중 응답 시간이 긴 순서대로 최대 2개 조회한다.
SELECT response_id, status, latency_ms
FROM responses
WHERE status = 'failed'
ORDER BY latency_ms DESC
LIMIT 2;

-- Q4. 응답 시간이 1000ms 이상인 응답을 긴 순서대로 조회한다.
SELECT response_id, user_id, latency_ms
FROM responses
WHERE latency_ms >= 1000
ORDER BY latency_ms DESC;

-- ============================================================
-- 3. AND / OR
-- ============================================================

-- Q5. 실패한 응답 중 응답 시간이 3000ms 이상인 데이터만 조회한다.
SELECT response_id, status, latency_ms, model
FROM responses
WHERE status = 'failed' AND latency_ms >= 3000
ORDER BY latency_ms DESC;

-- Q6. 성공한 응답 중 응답 시간이 500ms 이하인 데이터만 조회한다.
SELECT response_id, status, latency_ms, model
FROM responses
WHERE status = 'success' AND latency_ms <= 500
ORDER BY latency_ms ASC;

-- Q7. 실패했거나 응답 시간이 3000ms 이상인 응답을 조회한다.
SELECT response_id, status, latency_ms, model
FROM responses
WHERE status = 'failed' OR latency_ms >= 3000
ORDER BY latency_ms DESC;

-- ============================================================
-- 4. users table practice
-- ============================================================

-- Q8. 한국 사용자 중 free 요금제를 사용하는 사용자만 조회한다.
SELECT user_id, plan, country
FROM users
WHERE country = 'KR' AND plan = 'free'
ORDER BY user_id ASC;

-- Q9. free 또는 business 요금제 사용자를 조회한다.
SELECT user_id, plan, country
FROM users
WHERE plan = 'free' OR plan = 'business'
ORDER BY user_id ASC;

-- ============================================================
-- 5. Next practice
-- ============================================================

-- TODO Day 02: OR 조건을 IN으로 바꿔보기
-- SELECT user_id, plan, country
-- FROM users
-- WHERE plan IN ('free', 'business')
-- ORDER BY user_id ASC;
