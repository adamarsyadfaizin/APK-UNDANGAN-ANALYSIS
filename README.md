# APK-UNDANGAN-ANALYSIS

## 📌 Overview

This repository contains a reverse engineering and security analysis of a viral Android APK disguised as a wedding invitation.

The goal of this project is to:

* Understand how the malware works
* Identify its behavior and capabilities
* Raise awareness about Android-based social engineering attacks

---

## ⚠️ Disclaimer

This project is for **educational and research purposes only**.

* Do NOT install the APK on your primary device
* Always use an isolated environment (emulator / virtual machine)
* The author is not responsible for any misuse of the information provided

---

## 🧪 Analysis Scope

### 1. Static Analysis

Performed using tools such as:

* APKTool
* JADX

Focus areas:

* AndroidManifest permissions
* Suspicious services and receivers
* Hardcoded URLs / endpoints
* Obfuscation techniques

---

### 2. Dynamic Analysis (Optional)

Executed in a controlled environment:

* Emulator / sandbox

Observed:

* Network activity
* Background services
* Runtime behavior

---

## 🔍 Key Findings

(To be filled during analysis)

* Permissions requested:
* Suspicious endpoints:
* Data exfiltration:
* Persistence mechanism:
* Additional payload:

---

## 🧰 Tools Used

* APKTool
* JADX
* MobSF (optional)
* Frida (optional)

---

## 📂 Repository Structure

```
/analysis        -> notes and findings
/decompiled      -> JADX output (sanitized)
/samples         -> sample hashes (NO raw malware)
/screenshots     -> analysis screenshots
```

---

## 🚨 Warning

Do not upload or distribute raw malware samples in this repository.
If needed, only share:

* File hashes (MD5 / SHA256)
* Redacted code snippets

---

## 📖 Conclusion

(To be filled)

This analysis helps demonstrate how simple social engineering combined with Android permissions can be used to compromise user data.

---

## 🤝 Contributions

Feel free to contribute with:

* Additional findings
* Better detection methods
* Improved analysis

---

## ⭐ Notes

Stay safe and always verify unknown APK files before installing.
