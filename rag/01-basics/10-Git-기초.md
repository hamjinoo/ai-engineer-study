# 10. Git 기초 — 12주의 커밋 기록이 곧 포트폴리오

> 읽는 시점: Week 1, 환경 설정 직후 (30분이면 충분).
> 이미 git을 써봤다면 이 문서는 건너뛰고 `.gitignore` 절과 커밋 습관 절만 보세요.

## 0. 왜 첫 주부터 하나

1. **백업** — 지금 12주치 작업이 바탕화면 폴더 하나에 들어 있습니다. 실수로 지우면 끝.
2. **커밋 기록 = 꾸준함의 증거** — "12주간 매일 커밋한 이력"은 어떤 자기소개서 문장보다 강한 포트폴리오입니다. 채용 담당자가 GitHub 잔디(활동 그래프)를 실제로 봅니다.
3. **되돌리기** — 실험하다 코드를 망쳐도 어제 상태로 복구 가능.

## 1. 설치와 최초 설정 (딱 한 번)

```powershell
# 1) git-scm.com 에서 Git for Windows 설치 (기본 옵션으로 쭉 Next)
git --version          # 설치 확인

# 2) 내 정보 등록 (커밋에 찍히는 이름)
git config --global user.name "이름"
git config --global user.email "본인이메일@gmail.com"
```

## 2. 저장소 시작 (딱 한 번)

```powershell
cd C:\Users\mae\Desktop\260704\ai-allinone
git init
git add .
git commit -m "시작: 올인원 패키지"
```

`.gitignore` 파일은 이미 만들어져 있습니다 — `.venv`(무거움), `site.html`(재생성 가능), PDF 원본(용량), `.env`(비밀)를 자동으로 제외해줍니다. 반대로 추출 텍스트와 실험 CSV는 일부러 포함합니다(실험 기록이 자산이라서).

## 3. 매일의 루틴 (하루 마무리 10분에, 딱 2줄)

```powershell
git add -A
git commit -m "W1D2: chunk_fixed 구현, 테스트 3/5 통과, overlap 경계 처리에서 막힘"
```

> 💡 **커밋 메시지를 미니 일지로 쓰세요.** `주차+한 일+상태` 형식이면 나중에 `git log`가 그대로 학습 기록이 됩니다. [gongo-rag 데일리 로그](https://github.com/hamjinoo/gongo-rag/blob/main/notes/데일리-3줄-로그.md)와 겹친다면 커밋 메시지 쪽으로 통일해도 됩니다.

## 4. 필수 명령 7개 (이게 전부)

| 명령 | 하는 일 | 언제 |
|---|---|---|
| `git status` | 뭐가 바뀌었나 확인 | 커밋 전 습관 |
| `git add -A` | 바뀐 것 전부 담기 | 커밋 직전 |
| `git commit -m "메시지"` | 스냅샷 저장 | 매일 + 뭔가 완성될 때마다 |
| `git log --oneline` | 이력 한 줄씩 보기 | 지난 기록 확인 |
| `git diff` | 마지막 커밋 이후 바뀐 내용 | "내가 뭘 건드렸지?" |
| `git restore 파일명` | 파일을 마지막 커밋 상태로 복구 | 코드를 망쳤을 때 ⛑️ |
| `git restore --staged 파일명` | add 취소 | 실수로 담았을 때 |

브랜치, 리베이스, 머지 충돌 — 지금은 몰라도 됩니다. 혼자 하는 12주엔 위 7개로 충분합니다.

## 5. ⚠️ 절대 규칙: API 키는 커밋 금지

- 키는 **환경변수로만** (`setx OPENAI_API_KEY "..."`) — 이 프로젝트 코드는 전부 그렇게 돼 있습니다.
- 코드나 메모에 `sk-...`를 붙여넣는 순간, 커밋 이력에 영원히 남습니다. 공개 repo에 올라가면 몇 분 안에 도용됩니다.
- `.gitignore`에 `.env`, `*.key`가 있는 이유.

## 6. GitHub는 언제?

- **지금(W1)**: 로컬 git만으로 충분. 원하면 **private repo**를 만들어 백업용으로 push:

```powershell
# github.com에서 새 private repo 만든 뒤 (README 없이):
git remote add origin https://github.com/내아이디/ai-allinone.git
git branch -M main
git push -u origin main
# 이후 백업은:  git push
```

- **W9**: `02-gongo-rag`만 분리해서 **public repo**로 공개 (README를 [포지셔닝 문서](../05-career/포지셔닝-이력서-JD.md)의 순서로 다듬은 뒤). 분리 방법은 그때 폴더를 새 repo로 복사하는 것으로 충분합니다 — 미리 고민하지 마세요.

## 7. 사고 대처 미니 가이드

| 상황 | 처방 |
|---|---|
| 파일 하나를 망쳤다 | `git restore 파일명` |
| 오늘 작업 전체를 되돌리고 싶다 | `git restore .` (커밋 안 한 변경 전부 삭제 — 신중히) |
| 예전 코드가 어땠는지 보고 싶다 | `git log --oneline` → `git show 커밋ID:경로/파일명` |
| 뭔가 꼬였는데 모르겠다 | 30분 룰 없이 바로 질문 OK (git은 배관입니다) |
