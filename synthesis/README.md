# 합성과 검증

GHDL 6.0.0의 `--synth --std=08`으로 VHDL 소스 5개에서 VHDL 및 Verilog 넷리스트를 각각 생성했다. `*.netlist.vhd`와 `*.v`가 그 결과다. 각 명령은 종료 코드 0으로 완료됐다.

Verilog 넷리스트에 Yosys 0.70의 `proc; opt; rename -hide; clean -purge; show`를 적용하고 Graphviz로 PNG 회로도를 생성했다. `*.yosys.log`에 처리 결과가 기록되어 있다. 이 회로도는 일반 논리 회로도이며 특정 FPGA의 물리 배치 결과는 아니다.

- `post_synthesis_test.log`: VHDL 넷리스트 5개를 통합 테스트벤치로 실행한 결과다.
- `async_extended_test.log`: 비동기 D 플립플롭 VHDL 넷리스트를 840 ns 동안 확장 검증한 결과다. Clear 해제 시 Set 복원도 포함한다.
- `verilog_test.log`: `tb_netlists.v`로 Verilog 넷리스트 5개를 Icarus Verilog에서 검증한 결과다.

GHDL의 동작 기술 합성 결과에서 동시 Set/Clear 우선순위가 유지되지 않는 문제가 확인되어, D 래치와 비동기 D 플립플롭은 게이트 구조로 기술했다. 이 소스와 합성 넷리스트는 위의 테스트를 통과했다.
