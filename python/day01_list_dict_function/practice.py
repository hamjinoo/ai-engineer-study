"""
Day 01 - Python List, Dict, Function Practice

학습 목표:
- 리스트 안의 딕셔너리 데이터를 순회한다.
- 조건에 따라 데이터를 필터링한다.
- 새 딕셔너리를 만들어 새 리스트에 담는다.
- 총합, 평균, 최댓값을 구한다.
- 코딩 테스트 스타일의 solution 함수로 작성한다.
"""


study_logs = [
    {"day": "Mon", "hours": 2},
    {"day": "Tue", "hours": 6},
    {"day": "Wed", "hours": 9},
    {"day": "Thu", "hours": 3},
    {"day": "Fri", "hours": 5},
]


def get_level(hours):
    """공부 시간에 따라 level을 반환한다."""
    if hours >= 8:
        return "great"
    elif hours >= 4:
        return "good"
    else:
        return "weak"


def summarize_logs(study_logs):
    """공부 기록을 day, level 형태로 변환한다."""
    summary_logs = []

    for log in study_logs:
        day = log["day"]
        hours = log["hours"]
        level = get_level(hours)

        new_log = {
            "day": day,
            "level": level,
        }

        summary_logs.append(new_log)

    return summary_logs


def filter_enough_logs(study_logs):
    """4시간 이상 공부한 기록만 반환한다."""
    new_logs = []

    for log in study_logs:
        if log["hours"] >= 4:
            new_logs.append(log)

    return new_logs


def get_total_hours(study_logs):
    """전체 공부 시간의 합계를 반환한다."""
    total = 0

    for log in study_logs:
        total += log["hours"]

    return total


def get_average_hours(study_logs):
    """평균 공부 시간을 반환한다."""
    total = get_total_hours(study_logs)
    average = total / len(study_logs)

    return average


def get_best_log(study_logs):
    """가장 많이 공부한 날의 기록을 반환한다."""
    best_log = study_logs[0]

    for log in study_logs:
        if log["hours"] > best_log["hours"]:
            best_log = log

    return best_log


if __name__ == "__main__":
    print("Summary Logs:")
    print(summarize_logs(study_logs))

    print("\nEnough Logs:")
    print(filter_enough_logs(study_logs))

    print("\nTotal Hours:")
    print(get_total_hours(study_logs))

    print("\nAverage Hours:")
    print(get_average_hours(study_logs))

    print("\nBest Log:")
    print(get_best_log(study_logs))
