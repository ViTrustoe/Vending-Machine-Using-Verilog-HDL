# Vending-Machine-Using-Verilog-HDL
## Verilog
:smiley:
Verilog is a hardware description language (HDL) used to model digital circuits and systems. It was created in 1984 and is widely used for the design, verification, and implementation of digital logic circuits in various applications, such as integrated circuits, field-programmable gate arrays (FPGAs), and digital signal processing (DSP) systems. Verilog provides a syntax for describing both the structural and behavioral aspects of a digital system and supports simulation, synthesis, and formal verification.
## Vending Machine
A vending machine is an automated machine that dispenses items such as snacks, beverages, and other consumer goods when a customer inserts currency or a token. The items are stored inside the machine and are delivered to the customer through a dispensing mechanism such as a chute or a spiral ramp. Vending machines can be found in public places like shopping malls, airports, and train stations, and they have become increasingly popular due to their convenience and 24/7 availability. Modern vending machines often accept multiple forms of payment, including cash, credit and debit cards, and mobile payments. The operation of vending machines is usually controlled by a microprocessor, and they can be programmed to accept different types of payment and to dispense different products based on the payment received.

## Workflow Of Vending Machine

The workflow of a vending machine using Verilog HDL typically involves the following steps:

- Requirements gathering: Define the requirements for the vending machine, such as the type of products it should dispense, the payment methods it should accept, and the user interface it should provide.
- Design: Use Verilog to describe the system's behavior and structure, modeling the state machine of the vending machine and its interactions with the user and the payment system.
- Simulation: Run simulation tests on the Verilog code to verify that it meets the requirements and to identify any errors or bugs.
- Synthesis: Use a synthesis tool to convert the Verilog code into a gate-level representation of the system, which can be used to implement the design on a specific hardware platform.
- Implementation: Load the synthesized design onto the target hardware platform and verify that it works as expected.
- Debugging and Testing: Debug any issues that arise during implementation and test the vending machine to ensure that it functions properly.
- Maintenance: Regularly maintain and update the vending machine to ensure its continuous operation.

## Problem Formulation
- The design of the VM accepts coins of denominations five and ten.
- Customers are allowed to enter a maximum of Rs 10 as input at a given time.
- The VM is designed to dispense a product whose cost is Rs 15.
- The machine is ideal - it returns the input amount, if the customer doesn't complete the transaction within the stipulated time.
- When the entered amount exceeds the product cost, the product is dispensed alongwith change.
- Denomination for output (change): Rs 5 and Rs 10.
## Mealy State Diagram for VM

- Initially, the machine is in initial state (S0) where no product is given. The customer selects the product and inserts coins. If a Rs 5 coin is inserted, the machine goes to S1 state. If no more coins are inserted, the machine returns the money and goes to initial state.
 - If Rs 5 coins are inserted two more times, money inserted is same as the product price and the machine gives the product. And it returns to the initial state.
 - If the entered money is of higher denomination than the price of the product selected, the machine gives product along with change of five.
 - Similarly, the machine enters other states such as S2 as Rs 10 coins are inserted while keeping a track of the inputs at each state. The product is dispensed accordingly and the change given. 
 
