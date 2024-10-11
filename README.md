Fuzzy Logic-Based Irrigation System

Overview

  This project aims to estimate the speed and operating time of an irrigation pump motor for agricultural use by utilizing real-time air temperature and soil moisture data. The control system is developed using Arduino and MATLAB, applying fuzzy logic algorithms to ensure efficient irrigation.

Model Hardware

  The hardware for this model includes an Arduino board for control, connected to sensors that measure soil temperature and moisture. The collected data is sent to MATLAB for processing via fuzzy logic, and the resulting motor speed and duration are transmitted back to the Arduino, ensuring real-time control.

Fuzzy Logic Control System

The fuzzy logic control system consists of two inputs and two outputs:

Inputs: Soil temperature and soil moisture

Outputs: Pump motor speed and operating time

The system uses triangular membership functions for both inputs and outputs, with defuzzification performed using the Mamdani centroid method.

Key Features

Real-Time Data Processing: Utilizes real-time soil temperature and moisture values to make irrigation decisions.

Efficient Control: Fuzzy logic ensures that motor speed and operating time are optimized for plant needs.

Arduino and MATLAB Integration: Ensures seamless communication between data collection, processing, and control execution.



For more details on the full implementation, please refer to the detailed report included in the repository.
