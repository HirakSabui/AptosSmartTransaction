# 🧑‍🏫 Teacher Rating & Feedback Ledger

## 📜 Project Description

The **Teacher Rating & Feedback Ledger** is a decentralized smart contract built on the Aptos blockchain using the Move programming language. It allows users to rate teachers and provide feedback in a secure, immutable, and transparent manner. Each teacher has a unique rating ledger that can be created, updated, and closed by the creator.

## 🎯 Project Vision

To provide a transparent and immutable platform for collecting and managing teacher ratings and feedback, ensuring fairness and accountability in educational institutions.

## Smart Contract Details
![Screenshot 2025-04-22 221413](https://github.com/user-attachments/assets/9d1e63ce-e3cf-496e-81a3-cc9e93a44cc3)


Transaction Hash: "0x442eaddbc7a29335387670e7602e355ae8a6dd4ea0b45a6801181b5f54a39c0a"
Module: "0x710a17549a738350806e597866f7a28ef0c722eaf09520c873cdc6e97a6e009c"

## 🚀 Features

### ✅ `create_ledger`
- Creates a new rating ledger for a teacher.
- Initializes the ledger with empty ratings, feedbacks, and raters.
- Marks the ledger as active.

### ✅ `rate`
- Allows a user to submit a rating and feedback for a teacher.
- Ensures the ledger is active before accepting ratings.
- Prevents a user from rating the same teacher more than once.
- Records the rating, feedback, and rater's address.

### ✅ `close_ledger`
- Allows the creator to close the rating ledger for a teacher.
- Ensures only the creator can perform this action.
- Marks the ledger as inactive to stop further ratings.

### 🔐 Error Handling
- **E_ALREADY_RATED (1)** – Thrown if a user tries to rate the same teacher more than once.
- **E_RATING_CLOSED (2)** – Thrown if the ledger is no longer active or if an unauthorized user attempts to close it.

## 📚 Tech Stack

- **Blockchain**: [Aptos](https://aptos.dev/)
- **Language**: Move
- **Wallet Support**: Coming soon!
- **Frontend** (planned): React, TypeScript, Aptos Wallet Adapter

## 📬 Contact & Contributions

Feel free to contribute or report issues via Pull Requests. For collaboration or inquiries, open an issue or reach out directly.

---

> Built with ❤️ on Aptos Testnet.
