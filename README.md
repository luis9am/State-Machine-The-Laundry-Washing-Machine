# State-Machine-The-Laundry-Washing-Machine
Design follows a digital control system for a Laundry Washing machine display

You are tasked with designing the digital control system of a Laundry Washing machine display (team of 2 students
maximum). Your particular Laundry Machine is designed to perform 3 different wash cycles: Basic, Normal, and
Heavy. The three cycles include:

 Basic load washing (bc):
1. Wash cycle and dispensing Detergent.
2. Wash cycle and Spin cycle.
3. Rinse cycle and Spin cycle.
4. Spin cycle.

 Normal load washing (no):
1. Wash cycle and dispensing Detergent.
2. Wash cycle and Spin cycle.
3. Rinse cycle and dispensing fabric Softener.
4. Rinse cycle and Spin cycle.
5. Spin cycle.

 Heavy load washing (HY):
1. Wash cycle and dispensing Detergent.
2. Wash cycle and Spin cycle.
3. Wash cycle and dispensing Detergent.
4. Wash cycle and Spin cycle.
5. Rinse cycle and dispensing fabric Softener.
6. Rinse cycle and Spin cycle.
7. Spin cycle.

The system should work as follows:
It will be assumed that the laundry detergent and the fabric softener will be previously added on an external container
before starting the machine. Each washing sequence will ONLY initiate when the correct amount of money is inserted.
BTN3 will be used as the input of the accumulated added amount of 25 cents every time is pushed. Every pushed will
add money until the cost for every wash cycle is met:
