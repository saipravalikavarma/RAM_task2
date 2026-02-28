# RAM_task2
# Internship Task-2: Synchronous RAM Design

## 📌 Project Overview
This project implements a 16x8 Synchronous RAM using Verilog HDL.  
The RAM supports both read and write operations and is verified using a testbench in Vivado.

---

## 🎯 Objective
To design and simulate a synchronous RAM module that performs controlled read and write operations using a clock and write enable signal.

---

## 🧠 RAM Specifications

- Memory Depth: 16 Locations  
- Data Width: 8 Bits  
- Address Width: 4 Bits  
- Operation Type: Synchronous (Positive Edge Triggered)  
- Control Signal: Write Enable (`we`)

---

## ⚙️ Working Principle

On every positive edge of the clock:

- If `we = 1` → Data is written into the selected memory address.
- If `we = 0` → Data is read from the selected memory address.

This ensures synchronized memory access.
## 📄 Files Included

- `ram.v` → Synchronous RAM Design Module  
- `ram_tb.v` → Testbench for Simulation  
- `simulation.png` → Simulation Waveform Output  

---

## ▶️ Simulation Output

### 🔹 Waveform Preview

![RAM Simulation](https://github.com/saipravalikavarma/RAM_task2/blob/main/WhatsApp%20Image%202026-02-28%20at%2010.06.30%20PM.jpeg)

### 🔹 Direct Waveform Link

https://raw.githubusercontent.com/saipravalikavarma/RAM_task2/main/images/simulation.png

---

## 🧪 Tools Used

- Vivado (Simulation)
- Verilog HDL
- GitHub (Version Control)

---

## ✅ Simulation Result

The RAM module was successfully simulated.  
Waveform results confirm:

- Correct write operation when `we = 1`
- Correct read operation when `we = 0`
- Proper storage and retrieval of data from memory locations

---

## 📌 Conclusion

The synchronous RAM module was successfully designed, implemented, and verified.  
This project demonstrates understanding of memory design concepts in Verilog and simulation verification using a testbench.

---

## 👩‍💻 Author

Appani Saipravalika  
CODTECH Internship Program
