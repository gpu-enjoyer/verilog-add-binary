#! /bin/bash

# todo
source "$FPGA_TOOLS/repos/oss-cad-suite/environment"

names=(add impl not_impl pierce sheffer)

for name in "${names[@]}";
do
    echo "processing module: $name"
    yosys -q -p "
        read_verilog -sv code/*.sv;
        prep -top $name;
        write_json svg/$name.json"
    npx netlistsvg svg/$name.json -o svg/$name.svg
    rm svg/$name.json
done
