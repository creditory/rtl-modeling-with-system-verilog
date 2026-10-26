# SystemVerilog progress

## Workspace and intent

Registered October 26, 2026. This directory is the user's primary SystemVerilog workspace. Intended GitHub remote: https://github.com/creditory/rtl-modeling-with-system-verilog . Local Git setup/upload remain pending.

Primary activity: read the Sutherland book and implement, simulate and understand the examples. Gradually develop one resume-oriented RTL project in parallel as relevant concepts become comfortable. No fixed launch date or two-project daily quota is active.

Progress is updated when the user shares work or requests a review; this file does not represent continuous background monitoring.

## Baseline — October 26, 2026

| Evidence | Observed status |
|---|---|
| `gate_adder.sv` | Present and source inspected: gate instances, intermediate nets and explicit simulation delays. Not independently simulated in this review. |
| `rtl_adder.sv` | Present and source inspected: `assign {co, sum} = a + b + ci`. Not independently simulated in this review. |
| `rtl_adder_subtractor.sv` | Present and source inspected: 32-bit inputs/output, `always_ff @(posedge clk)`, mode-selected add/subtract, nonblocking assignment. No reset is specified; whether one is needed belongs to the exercise contract. |
| Quartus configuration | MAX 10, device `10M50DAF484C7G`, top `rtl_adder_subtractor`, all three source files listed. |
| Synthesis | Existing `output_files/rtl_modeling_with_system_verilog.map.summary` reports successful analysis/synthesis on October 26 at 11:40:10 Vancouver time: 65 logic elements and 32 registers. This is a saved-report inspection, not an independent rerun or proof of functional correctness. |
| Simulation evidence | No testbench found in the inspected workspace. No behavioral simulation result recorded for these examples. The separate installation-check counter's 21 passing tests are not credited as these exercises. |
| Implementation/timing | No fitting or timing summary found in this workspace's inspected output files. Synthesis counts are not timing-closure evidence. |
| Git | Directory is not currently a Git repository. No commits or pushes recorded. |

The presence of an example is evidence of activity, not an assessment that the concept is mastered. The next useful evidence is the user's explanation plus an independently runnable test.

## Next learning checkpoints

- Explain `timeunit` versus `timeprecision`, including how fractional gate delays are represented at the chosen precision.
- Explain combinational output changes versus state updates on a clock edge, and why the registered example infers 32 registers.
- Write a small self-checking test for the one-bit RTL adder, covering all eight input combinations.
- Define and test the clocked add/subtract contract: mode meaning, output update edge, wraparound and startup behavior before the first valid update.
- Record exact run commands and actual outcomes. Keep independent variations distinguishable from book examples.

These are proposed checkpoints, not completed tasks; the user's pace through the book controls the order.

## Gradual resume project: proposed digital link-test core

Recommended first project from the existing backlog: a synthesizable digital link-test core, eventually combining a PRBS pattern generator, checker, controlled error injection and error counters. It connects RTL verification with the user's high-speed-link validation interests. This is digital test logic; it does not implement or validate a PCIe PHY or analog SERDES.

Build only the slice supported by current learning:

| Learning concept | Small project contribution |
|---|---|
| Ports, widths, arithmetic and combinational logic | Define interface widths and arithmetic/overflow expectations in a short specification. |
| Clocked logic, reset and enable | A tested counter or shift-register exercise that can later inform project RTL. |
| Shifts, XOR and state feedback | Define then implement a small PRBS generator with explicit seed, polynomial convention and output ordering. |
| Testbenches and checking | Compare sequences against a separately reasoned reference; catch a deliberately introduced error. |
| FSMs and flow control | Add a bounded run/stop control and define when each bit or word is accepted. |
| Synthesis and timing constraints | Record reproducible MAX 10 implementation results with clearly stated clock and I/O assumptions. |

No project implementation or separate project repository has been created by this note. Confirm the first slice during a learning review; retain the clock-health monitor as a later option.

## Session template

- Date and book section:
- Example / concept:
- My change or experiment:
- Expected circuit and behavior:
- Check command and actual result:
- What I can explain independently:
- Open question or failure investigated:
- Possible project connection:
- Commit, if made:
- Next small step:
