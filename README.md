 Traffic Light FSM (Verilog)
A simple Finite State Machine (FSM) project in Verilog that simulates a traffic light controller. The design cycles through Red → Green → Yellow → Red with a testbench and waveform visualization. This project is built and run completely in VS Code + Icarus Verilog + GTKWave, with no hardware required.
📂 Project Structure

traffic_light_fsm/
├── src/
│   └── traffic_light.v       # Verilog source (FSM design)
├── tb/
│   └── traffic_light_tb.v    # Testbench
├── docs/
│   └── traffic_light_fsm.png # FSM state diagram
└── README.md                 # Documentation

 Requirements
Install the following on Windows:
1. Git → for version control
2. Visual Studio Code → IDE
3. Icarus Verilog → Verilog compiler
4. GTKWave → waveform viewer
Verify installation in PowerShell:

iverilog -V
gtkwave --version
git --version

 How to Run
1. Clone the repository:
git clone https://github.com/YOUR_USERNAME/traffic_light_fsm.git
cd traffic_light_fsm
2. Compile the design + testbench:
iverilog -o traffic_light_tb.out src/traffic_light.v tb/traffic_light_tb.v
3. Run the simulation:
vvp traffic_light_tb.out
4. Open waveform in GTKWave:
gtkwave traffic_light.vcd
You should see the lights[2:0] signal cycling through:
- 100 → Red
- 001 → Green
- 010 → Yellow
FSM State Diagram: See docs/traffic_light_fsm.png

Learning Outcomes
- How to design an FSM in Verilog
- Writing and running testbenches
- Using Icarus Verilog for simulation
- Visualizing signals with GTKWave
- Structuring a Verilog project for GitHub
