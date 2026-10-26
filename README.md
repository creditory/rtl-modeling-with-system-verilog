# RTL modeling with SystemVerilog — learning workspace

Book-led practice based on Stuart Sutherland's *RTL Modeling with SystemVerilog for Simulation and Synthesis*. Examples and personal annotations are learning work, not production IP. Record the source section and distinguish book examples from independently written extensions when preparing material for publication.

## Current examples

| File | Focus |
|---|---|
| `gate_adder.sv` | One-bit gate-level full adder, gate instances and simulation delays |
| `rtl_adder.sv` | Combinational arithmetic and concatenated carry/sum output |
| `rtl_adder_subtractor.sv` | 32-bit clocked add/subtract, mode selection and nonblocking assignments |

The current Quartus project selects `rtl_adder_subtractor` as its top level and targets MAX 10 `10M50DAF484C7G`. Each independent example can be selected as a design top when studied. Testbenches belong to the simulation flow, with the corresponding testbench module as simulation top.

See [the progress record](notes/progress.md) for observed evidence, open questions and next steps. Existing RTL filenames and project assignments have been preserved.

## Learning loop

Read a bounded section, implement or vary one concept, predict its hardware behavior, test it, explain the outcome and prepare a coherent commit. Keep the exact run command and actual result with each tested example. Passing compilation, passing simulation and successful synthesis are separate milestones.

## Repository status

Local Git initialization and GitHub publication are pending. Intended remote supplied by the user: https://github.com/creditory/rtl-modeling-with-system-verilog . No commit or upload has been made as part of this workspace registration.

Keep `.sv` sources, testbenches, scripts, useful constraints, `.qpf`/`.qsf` project files and explanatory notes. Generated build databases and simulator outputs are excluded by `.gitignore`. Save selected results as concise notes rather than committing the entire generated output directory.
