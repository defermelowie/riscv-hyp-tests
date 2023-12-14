# Run tests on spike emulator
# 
# Assumes spike is in PATH

# Build tests
export PLAT=spike LOG_LEVEL=LOG_WARNING
make

# Run tests
spike -l --log-commits --log=log/spike_trace.log --isa=RV64gch_Zicntr build/spike/rvh_test.elf &> log/spike_term.log