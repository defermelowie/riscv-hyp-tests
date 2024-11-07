# Run tests on C based emulator extracted from sail model
# 
# Assumes sail model sits next to this repository 
# and that C based emulator is build

csim=../../sail-riscv-cleanup/c_emulator/riscv_sim_RV64;

# Build tests
export PLAT=sail LOG_LEVEL=LOG_WARNING;
make

# Run tests
$csim --enable-hext --ram-size 256 -t log/sail_term.log --enable-dirty-update --mtval-has-illegal-inst-bits --pmp-count 16 build/sail/rvh_test.elf > log/sail_trace.log
