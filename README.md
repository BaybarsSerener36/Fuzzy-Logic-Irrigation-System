
---

# Fuzzy Logic-Based Irrigation System Using Arduino and MATLAB

## Overview

This project implements a fuzzy logic-based control system for an irrigation pump motor, predicting the motor’s speed and operation time based on real-time soil temperature and moisture data. The system uses Arduino for sensor data collection and MATLAB for fuzzy logic control, making it highly efficient for agricultural irrigation.

## Hardware Components

- Arduino Uno
- Soil temperature and moisture sensors
- L239D motor driver
- Pump motor

## Fuzzy Logic Control System

The fuzzy logic control system consists of two inputs and two outputs:
- **Inputs**: Soil temperature and moisture.
- **Outputs**: Motor speed (RPM) and motor operation time.

The inputs are processed using triangular membership functions, while the outputs control the pump motor based on real-time data.

### Membership Functions:
1. **Soil Moisture (0-100%)**: 
   - Low, Medium, High
2. **Soil Temperature (-20°C to 50°C)**: 
   - Very Low, Low, Medium, High, Very High
3. **Motor Speed (RPM 0-250)**: 
   - Slow, Medium, Fast, Very Fast
4. **Operation Time (0-10s)**: 
   - Very Short, Short, Medium, Long, Very Long

### Fuzzy Inference and Rules:
Mamdani-type inference and rules are used to determine the motor’s speed and operation time, based on soil conditions.



## Results

The system efficiently calculates the motor’s speed and operation time using real-time soil data. Using **Mamdani inference**, the system optimizes water usage and ensures precise irrigation.

## Conclusion

This fuzzy logic irrigation system can improve water efficiency in agricultural applications by dynamically adjusting the motor's speed and operation time. Future work can focus on enhancing the system with additional sensors and control parameters.

---
