# Run tests on C based emulator extracted from sail model
# 
# Assumes sail model sits next to this repository 
# and that C based emulator is build

csim=../sail-riscv/c_emulator/riscv_sim_RV64;

# Build tests
export PLAT=sail LOG_LEVEL=LOG_WARNING;
make

# Run tests
$csim --ram-size 256 -t log/sail_term.log build/sail/rvh_test.elf > log/sail_trace.log