
# Verilog Logic Modules

## Run

```shell
    make
```

## Structure 

```
code/
    ADDition
    IMPLication
    NOT_IMPLication
    PIERCE arrow 
    SHEFFER stroke

test/
    test-benches ..

.github/workflows/
    test.yml

Makefile
```

## Todo

- [ ] Yolo
- [ ] Code Quote

## Notes

1. when the command `uses: actions/checkout@v4` is run  
    GitHub clones the repository into:
    ```
    /home/runner/work/
    └── <repo-name>/
        └── <repo-name>/
    ```

2. "image" of OS + iverilog
    ```
    container:
        image: ghcr.io/hdl/iverilog:latest
    ```
