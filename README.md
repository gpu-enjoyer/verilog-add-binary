
# Verilog Basic Modules

## Run

```shell
    # install iverilog
    # install verible

    make

    # check console output

    # install Yosys
    # install npm
    # gen_svg.sh: edit $yosys_env_dir 

    ./gen_svg.sh

    # check readme.md table
```

## Modules

| code                         | scheme                            |
|:----------------------------:|:---------------------------------:|
| [add](code/add.sv)           | ![add](img/svg/add.svg)           |
| [impl](code/impl.sv)         | ![impl](img/svg/impl.svg)         |
| [not_impl](code/not_impl.sv) | ![not_impl](img/svg/not_impl.svg) |
| [pierce](code/pierce.sv)     | ![pierce](img/svg/pierce.svg)     |
| [sheffer](code/sheffer.sv)   | ![sheffer](img/svg/sheffer.svg)   |

## CI demo

| good                         | error                          |
|:----------------------------:|:------------------------------:|
| ![good](img/screen/good.png) | ![error](img/screen/error.png) |

## Todo

- [ ] CI: Yosys
- [ ] code quote
