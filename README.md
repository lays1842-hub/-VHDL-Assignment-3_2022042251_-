# VHDL Assignment-3

디지털논리회로설계 · 2022042251 · 김동한

RS Latch, D Latch, D Flip-Flop, JK Flip-Flop, 비동기 Set/Clear D Flip-Flop을 Logisim과 VHDL로 구현했다.

- `logisim/` — 개별 게이트로 구성한 Logisim-evolution 회로 5개
- `vhdl/` — VHDL 소스, 테스트벤치, Questa 실행 스크립트, VCD 파형 및 결과
- `validation/logisim/` — Logisim 연속 입력 검증 벡터, 실행 스크립트 및 결과
- `synthesis/` — GHDL 합성 넷리스트, Yosys 회로도 및 후합성 검증 결과
- `screenshots/logisim_circuits/` — 직접 배선한 Logisim 회로 화면 캡처
- `screenshots/logisim_simulation/` — Logisim Timing diagram 화면 캡처
- `report.pdf` — Logisim 회로와 시뮬레이션 캡처, VHDL 소스 코드

## 검증 결과

Logisim의 5개 회로는 각각 7, 5, 8, 15, 13개의 연속 입력 벡터를 통과했다. D 및 JK 플립플롭은 지정된 초기값이 없어 첫 행의 출력 검사를 제외했다. `validation/logisim/run-tests.ps1`로 검증을 재실행할 수 있다. Logisim-evolution 5.0.0과 JDK가 필요하며, 설치 경로가 다르면 `-LogisimJar` 인자로 JAR 경로를 지정한다.

Questa에서 VHDL 통합 테스트를 310 ns까지 통과했다. `vhdl` 폴더에서 `do run.do`로 재실행할 수 있다. 한글 경로에서 실행이 안 되면 영문 경로로 복사한다.

GHDL로 합성한 VHDL 넷리스트 5개는 통합 테스트를 통과했고, 비동기 D 플립플롭은 840 ns까지 추가 검증했다. 합성 Verilog 넷리스트 5개도 Icarus Verilog 테스트를 통과했다. 합성 절차와 로그는 `synthesis/README.md`에 있다.
