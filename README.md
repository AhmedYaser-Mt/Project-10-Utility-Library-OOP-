# 🚀 Utility Library in C++ (OOP)

A reusable C++ Utility Library that provides a collection of helper functions for random generation, array manipulation, swapping values, encryption, formatting, and number conversion. The library is implemented as a single static class (clsUtil), allowing developers to access all utilities without creating objects, making it easy to integrate into different projects. This project demonstrates practical use of Object-Oriented Programming, code reuse, and utility library design.

---

## 📚 Background

This project was built while studying the **Programming Advices** training track instructed by **Dr. Mohammed Abu-Hadhoud**. The main objective of this project is to simulate how professional developers build utility/helper libraries that can be reused across multiple applications.

---

## 🧠 Key Concepts Practiced

• Object-Oriented Programming (OOP)  
• Static Classes and Static Methods  
• Function Overloading  
• Code Reusability  
• Utility Library Design  
• Modular Programming  
• Clean Code Practices  

---

## ⚙️ Library Capabilities

### 🎲 Random Utilities
Generate random values and data structures.

• Random numbers within a range  
• Random characters  
• Random words  
• Random formatted keys  
• Bulk key generation  

Example:
GHTR-YUOP-ABCD-WXYZ  
P9QW-RT56-ABCD-XYZ1  

### 📦 Array Utilities
Functions to easily populate arrays with random data.

• Fill array with random numbers  
• Fill array with random words  
• Fill array with random keys  
• Shuffle arrays randomly  

### 🔄 Swap Functions
Overloaded swap methods supporting multiple data types:

• int  
• double  
• bool  
• char  
• string  
• clsDate  

Example:
int a = 10, b = 20;  
clsUtil::Swap(a, b);  

Output:
20 10  

### 🔐 Text Encryption
A simple Caesar-style encryption algorithm.

• Encrypt text using a numeric key  
• Decrypt text back to its original form  

Example:
Before: Mohammed Abu-Hadhoud  
Encrypted: Oqjcoogf Cdw-Jcfjqwpf  
Decrypted: Mohammed Abu-Hadhoud  

### 🧾 Number To Text
Convert numeric values into English text representation.

Example:
1250 → One Thousand Two Hundred Fifty  

This feature demonstrates recursive problem solving.

---

## 📂 Project Structure

Utility-Library-Cpp  
clsUtil.h – Utility library containing helper functions  
clsDate.h – Date class used by the utility library  
main.cpp – Demonstration program showing how to use the library  

---

## 💻 Usage Example

```cpp
#include <iostream>
#include "clsUtil.h"
using namespace std;

int main()
{
    clsUtil::Srand();

    cout << clsUtil::RandomNumber(1,10) << endl;
    cout << clsUtil::GetRandomCharacter(clsUtil::CapitalLetter) << endl;

    cout << clsUtil::GenerateWord(clsUtil::MixChars,8) << endl;
    cout << clsUtil::GenerateKey(clsUtil::MixChars) << endl;

    clsUtil::GenerateKeys(3, clsUtil::MixChars);

    int x = 10, y = 20;
    clsUtil::Swap(x, y);
    cout << x << " " << y << endl;

    string Text = "Mohammed Abu-Hadhoud";

    string Encrypted = clsUtil::EncryptText(Text, 2);
    string Decrypted = clsUtil::DecryptText(Encrypted, 2);

    cout << "Before: " << Text << endl;
    cout << "Encrypted: " << Encrypted << endl;
    cout << "Decrypted: " << Decrypted << endl;

    return 0;
}
```

---

## 📈 Learning Outcomes

Through this project I strengthened my skills in designing reusable C++ libraries, organizing helper functionality using static classes, writing modular and maintainable code, applying object-oriented programming concepts, and implementing algorithms for randomization and encryption.

---

## 👨‍🏫 Acknowledgments

Special thanks to **Dr. Mohammed Abu-Hadhoud** for his structured and practical approach to teaching programming through the **Programming Advices** platform.
