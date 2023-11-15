# Run tests on Ocaml based emulator extracted from sail model
# 
# Assumes that the RISC-V sail model sits next to this 
# repository and that Ocaml based emulator is build

osim=../sail-riscv/ocaml_emulator/riscv_ocaml_sim_RV64;

# Build tests
export PLAT=sail LOG_LEVEL=LOG_WARNING;
make

# Run tests
$osim -ram-size 256 -enable-hext build/sail/rvh_test.elf > log/sail_trace.log 2> log/sail_term.log