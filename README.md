# 🗳️ SimpleVoting on Aptos Blockchain

## 📜 Project Description

**SimpleVoting** is a decentralized smart contract built on the Aptos blockchain using the Move programming language. It allows users to create and participate in voting polls in a secure, trustless, and verifiable manner. Each user can vote only once per poll, and votes are tallied transparently on-chain.

## 🎯 Project Vision

To build a transparent, immutable, and fair voting mechanism leveraging blockchain technology that can be adopted for small-scale or community-based decisions without the risk of manipulation or fraud.

## 🚀 Future Scope

- ✅ **UI Integration**: Build a web-based frontend using React and Wallet adapters for seamless interaction.
- ✅ **Poll Expiry Mechanism**: Add expiry timestamps for polls to automatically deactivate.
- ✅ **Multiple Polls per Creator**: Enable support for users to host multiple simultaneous polls.
- ✅ **Event Emission**: Emit events for each vote and poll creation for easier off-chain tracking.
- ✅ **Anonymous Voting**: Add zero-knowledge voting support for privacy.
- ✅ **Result Visibility Controls**: Allow creator to hide results until the poll ends.

## 📜 Contract Details

- **Contract Address**: `0x710a17549a738350806e597866f7a28ef0c722eaf09520c873cdc6e97a6e009c`
- **Function Deployed**: `code::publish_package_txn`
- **Deployment Status**: ✅ Success

### 🔍 Deployment Screenshot

![Screenshot 2025-04-22 221413](https://github.com/user-attachments/assets/8f9128e5-f7d3-4cad-a33b-f35147417c1b)


---

## 🧩 Smart Contract Features

### ✅ `create_poll`
- Creates a new poll with a given list of options.
- Initializes vote counters to zero.
- Stores the poll data under the creator’s address.

### ✅ `vote`
- Allows a signer to vote for a selected option.
- Ensures a user can vote only once.
- Checks that the poll is still active.

### 🔐 Error Handling
- **E_ALREADY_VOTED (1)** – Thrown if a voter tries to vote more than once.
- **E_VOTING_CLOSED (2)** – Thrown if the poll is no longer active.

---

## 📚 Tech Stack

- **Blockchain**: [Aptos](https://aptos.dev/)
- **Language**: Move
- **Wallet Support**: Coming soon!
- **Frontend** (planned): React, TypeScript, Aptos Wallet Adapter

---

## 📬 Contact & Contributions

Feel free to contribute or report issues via Pull Requests. For collaboration or inquiries, open an issue or reach out directly.

---

> Built with ❤️ on Aptos Testnet.
