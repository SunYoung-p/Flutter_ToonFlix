# 🎬 Toonflix

> **Flutter 웹툰 앱 만들기** — [노마드코더](https://nomadcoders.co) 강의 기반 학습 프로젝트

---

## 📁 파일별 설명

| 파일 | 설명 |
|------|------|
| `lib/widget_basic.dart` | Widget 제어를 위한 UI clone 연습 |
| (향후 추가 예정) | — |

---

## 📄 파일별 상세 내용

### `lib/widget_basic.dart`

금융 앱 UI를 클론하며 Flutter의 핵심 Widget을 학습하는 파일입니다.

---

#### 🧩 Widget별 개념 설명

| Widget | 역할 | 사용 예시 |
|--------|------|-----------|
| `MaterialApp` | Flutter 앱의 최상위 루트 위젯. Material Design 테마 및 라우팅 제공 | `return MaterialApp(home: ...)` |
| `Scaffold` | 화면의 뼈대. `body`, `appBar`, `floatingActionButton` 등 배치 | `Scaffold(backgroundColor: ..., body: ...)` |
| `Padding` | 자식 위젯의 주변에 여백 추가 | `Padding(padding: EdgeInsets.symmetric(...))` |
| `Column` | 자식 위젯들을 **세로**로 나열 | `Column(crossAxisAlignment: ..., children: [...])` |
| `Row` | 자식 위젯들을 **가로**로 나열 | `Row(mainAxisAlignment: ..., children: [...])` |
| `SizedBox` | 고정 크기의 빈 공간 (간격 조절용) | `SizedBox(height: 20)` |
| `Text` | 텍스트 표시. `TextStyle`로 폰트·색상·크기 지정 | `Text("Hello", style: TextStyle(...))` |
| `TextStyle` | Text의 스타일 지정 (color, fontSize, fontWeight 등) | `TextStyle(color: Colors.white, fontSize: 28)` |
| `Button` *(커스텀)* | `bgColor`, `textColor`, `text`를 파라미터로 받는 재사용 가능한 버튼 | `Button(text: "Transfer", bgColor: Colors.amber, ...)` |
| `CurrencyCard` *(커스텀)* | 통화 정보(name, code, amount, icon)를 표시하는 카드 위젯 | `CurrencyCard(name: "Euro", code: "EUR", ...)` |

---

#### 🏗️ 프로그램 구조

금융 앱 UI를 모방한 구조로, 아래와 같이 계층적으로 구성됩니다.

```
MaterialApp
└── Scaffold (검정 배경)
    └── Padding (좌우 여백 20)
        └── Column (세로 배치)
            ├── Row → Column (우측 정렬)
            │   ├── Text: "Hey, Selena"        ← 사용자 이름
            │   └── Text: "Welcome back"       ← 서브 문구
            ├── Text: "Total Balence"           ← 잔액 라벨
            ├── Text: "$5,194.69"               ← 잔액 금액
            ├── Row (양쪽 정렬)
            │   ├── Button: "Transfer"          ← 이체 버튼
            │   └── Button: "Request"           ← 요청 버튼
            ├── Row (양쪽 정렬)
            │   ├── Text: "Wallets"             ← 섹션 제목
            │   └── Text: "View All"            ← 전체보기
            ├── CurrencyCard: Euro / EUR / 6 428
            ├── CurrencyCard: Dollar / USD / 1 282
            └── CurrencyCard: Korean / KRW / 5 000
```

---

#### ⌨️ `Ctrl + .` 단축키 — Wrap Widget 기능

`Ctrl + .`는 커서를 Widget에 올려놓고 누르면 나타나는 **빠른 수정(Quick Fix)** 메뉴입니다.

대표적인 활용:

| 메뉴 항목 | 기능 |
|-----------|------|
| `Wrap with widget` | 임의의 Widget으로 감싸기 |
| `Wrap with Column` | Column으로 감싸기 |
| `Wrap with Row` | Row로 감싸기 |
| `Wrap with Center` | Center로 감싸기 |
| `Wrap with Padding` | Padding으로 감싸기 |
| `Remove this widget` | 해당 Widget만 제거하고 자식을 위로 끌어올리기 |

> Widget 구조를 직접 타이핑하지 않고, 기존 Widget을 빠르게 감싸거나 분리할 때 매우 유용합니다.

---

#### ▶️ `flutter run` vs `Start Debugging (▶)` 차이

| 구분 | `flutter run` (터미널) | `Start Debugging (▶)` |
|------|------------------------|------------------------|
| 실행 방식 | CLI 명령어 직접 입력 | IDE GUI 버튼 클릭 |
| 디버거 연결 | 기본적으로 연결 안 됨 | Dart 디버거 자동 연결 |
| 브레이크포인트 | 사용 불가 | 사용 가능 ✅ |
| Hot Reload | `r` 키 입력 | 저장 시 자동 적용 |
| Hot Restart | `R` 키 입력 | 툴바 버튼으로 실행 |
| 로그 출력 | 터미널에 직접 출력 | IDE Debug Console에 출력 |
| 속도 | 약간 빠름 | 디버거 오버헤드 있음 |
| 사용 시점 | 빠른 확인, 배포 직전 테스트 | 오류 추적, 변수 값 확인 |

> **학습 중에는 `▶ Start Debugging`을 권장** — 브레이크포인트와 변수 감시 기능으로 코드 흐름을 시각적으로 파악할 수 있습니다.

---

#### 🚀 Flutter의 장점 3가지

**1. JIT + AOT 컴파일 동시 지원 (Flutter 엔진)**

- **JIT (Just-In-Time)**: 개발 중 Hot Reload를 가능하게 하여 코드 변경을 수 밀리초 안에 즉시 반영
- **AOT (Ahead-Of-Time)**: 릴리즈 빌드 시 네이티브 코드로 사전 컴파일하여 빠른 실행 속도 보장
- 하나의 코드베이스에서 개발 생산성과 런타임 성능을 모두 확보

**2. 단일 코드베이스로 6개 플랫폼 지원**

- iOS, Android, Web, Windows, macOS, Linux를 **하나의 Dart 코드**로 빌드
- 플랫폼별 별도 개발 없이 일관된 UI/UX 제공
- 유지보수 비용과 개발 인력을 대폭 절감

**3. Skia / Impeller 엔진 기반 자체 렌더링**

- 운영체제의 네이티브 UI 컴포넌트를 사용하지 않고, Flutter 자체 그래픽 엔진으로 **모든 픽셀을 직접 그림**
- 플랫폼에 관계없이 **완전히 동일한 UI**를 보장
- 60fps / 120fps 부드러운 애니메이션 구현이 용이

---

## 🛠️ 개발 환경

- Flutter SDK
- Dart
- IDE: Cursor / VS Code

## 📚 참고

- [노마드코더 Flutter 강의](https://nomadcoders.co)
- [Flutter 공식 문서](https://docs.flutter.dev)
