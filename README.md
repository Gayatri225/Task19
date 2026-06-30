# Robot Framework Login Automation

## Project Overview
This project automates the login functionality of the Robot SpareBin Industries application using Robot Framework and SeleniumLibrary.

## Project Structure

```
RobotSpareBin_Task19/
│
├── tests/
│   └── login_test.robot
│
├── resources/
│   └── keywords.robot
│
├── requirements.txt
├── log.html
├── report.html
├── output.xml
└── README.md
```

## Prerequisites

- Python
- Robot Framework
- SeleniumLibrary
- Google Chrome

## Installation

```bash
py -m pip install robotframework robotframework-seleniumlibrary
```

## Execute Test

```bash
py -m robot tests/login_test.robot
```

## Test Flow

- Open Browser
- Login with valid credentials
- Verify successful login
- Logout
- Close Browser

## Test Result

The test executes successfully and generates:

- output.xml
- log.html
- report.html
