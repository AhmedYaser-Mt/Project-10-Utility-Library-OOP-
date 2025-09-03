# 📌 Project 10: Utility Library (OOP)

## 🔹 Overview

This project was implemented as part of **Course 11 – OOP As it Should Be (Application)** in the **Programming Advices Track** \[[www.programmingadvices.com](http://www.programmingadvices.com)] by **Dr. Mohamed Abouhadhood**.

The main idea is to build a **Utility Library** as a single class `clsUtil`, where **all methods are static**. These methods don’t belong to a specific object context, but instead serve as **general-purpose helpers** for randomness, array operations, swapping, text encryption, and formatting.

---

## ✨ Features

* ✅ **Random Utilities**: Generate random numbers, characters, words, and formatted keys.
* ✅ **Array Helpers**: Fill arrays with random numbers, words, or keys, and shuffle arrays.
* ✅ **Swap Functions**: Overloaded `Swap` methods for `int`, `double`, `bool`, `char`, `string`, and even `clsDate`.
* ✅ **Text Encryption/Decryption**: Simple Caesar‑style cipher using a numeric key.
* ✅ **Formatting Helper**: Generate tab spacing easily.
* ✅ **Encapsulation**: All logic wrapped in one class with static members, easy to reuse anywhere.

---

## 📂 Project Structure

📁 Project-11-Utility-Library-OOP

* clsUtil.h   # Header file containing the clsUtil class and all static methods
* clsDate.h   # Date helper class (used in Swap method)
* main.cpp    # Sample code to demonstrate usage
* README.md   # Project documentation

---

## 🧾 Sample Demonstration

Here are some examples from the `main.cpp` file:

```cpp
#include <iostream>
#include "clsUtil.h"
using namespace std;

int main()
{
    clsUtil::Srand();

    cout << clsUtil::RandomNumber(1, 10) << endl;
    cout << clsUtil::GetRandomCharacter(clsUtil::CapitalLetter) << endl;
    cout << clsUtil::GenerateWord(clsUtil::MixChars, 8) << endl;
    cout << clsUtil::GenerateKey(clsUtil::MixChars) << endl;
    clsUtil::GenerateKeys(5, clsUtil::MixChars);

    int x = 10, y = 20;
    clsUtil::Swap(x, y);
    cout << x << " " << y << endl;

    string s1 = "Ali", s2 = "Ahmed";
    clsUtil::Swap(s1, s2);
    cout << s1 << " " << s2 << endl;

    int Arr[5] = {1,2,3,4,5};
    clsUtil::ShuffleArray(Arr, 5);

    string Words[5];
    clsUtil::FillArrayWithRandomWords(Words, 5, clsUtil::MixChars, 6);

    const short Key = 2;
    string Text = "Mohammed Abu-Hadhoud";
    string Enc = clsUtil::EncryptText(Text, Key);
    string Dec = clsUtil::DecryptText(Enc, Key);

    cout << "Before: " << Text << endl;
    cout << "Encrypted: " << Enc << endl;
    cout << "Decrypted: " << Dec << endl;

    system("pause>0");
    return 0;
}
```

---

## 🖥️ Example Output

* 7
* A
* dX2aQm1c
* GHTR-YUOP-ABCD-WXYZ
* Key \[1] : P9QW-RT56-ABCD-XYZ1
* 20 10
* Ahmed Ali
* \[Shuffled int array printed]
* \[Random words printed]
* Before: Mohammed Abu-Hadhoud
* Encrypted: Oqjcnngf Cdw-Jcflqwef
* Decrypted: Mohammed Abu-Hadhoud

---

## 🙏 Acknowledgments

This project is part of the Programming Advices Training Track led by:

* 👨‍🏫 Dr. Mohamed Abouhadhood
* 📚 Platform: Programming Advices
