
---

# Estimation of Pump Motor's Speed and Operating Time Using Fuzzy Logic

## Introduction

This study aims to estimate the speed and operating time of an irrigation pump motor for agricultural use, utilizing real-time air temperature and soil moisture data. This is achieved through fuzzy logic control and measurements implemented using Arduino and MATLAB.

## Model Hardware

Arduino is used for model control, and the hardware components are shown in Figure 1. The model uses a single motor. Soil temperature and moisture data collected through potentiometers connected to Arduino are transmitted to MATLAB via serial communication. Fuzzy logic outputs for the motor's speed and operating time are then sent back to the Arduino. This process involves the real-time processing of soil temperature and moisture data using fuzzy logic control algorithms, ensuring real-time control on the Arduino.

![Hardware Setup](C:\Users\BAYBARS\Desktop\1.png)


---

