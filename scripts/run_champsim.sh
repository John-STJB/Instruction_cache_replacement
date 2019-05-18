TRACE_DIR=/home/faculty/p/pgratz/CRC2_trace
binary=${1}
n_warm=${2}
n_sim=${3}
trace=${4}
dirname=${5}
option=${6}

mkdir -p results_${n_sim}M_${dirname}
(./bin/${binary} -warmup_instructions ${n_warm}000000 -simulation_instructions ${n_sim}000000 ${option} -traces ${TRACE_DIR}/${trace}.trace.xz ) &> results_${n_sim}M_${dirname}/${trace}-${binary}${option}.txt
