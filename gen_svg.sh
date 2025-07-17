#! /bin/bash

# edit:
yosys_env_dir="$FPGA_TOOLS/repos/oss-cad-suite/environment"

source "$yosys_env_dir"
echo "source: $yosys_env_dir"

names=(add impl not_impl pierce sheffer)

for name in "${names[@]}";
do
    echo "processing module: $name"
    yosys -q -p "
        read_verilog -sv code/*.sv;
        prep -top $name;
        write_json img/svg/$name.json"
    npx netlistsvg img/svg/$name.json -o img/svg/$name.svg
done

echo "removing json files"
rm img/svg/*.json
