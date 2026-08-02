# 🚀 Space Station Game

A simple 2D arcade-style game built using **Java and Processing**. The player must defend a space station from incoming asteroids by destroying them before they reach the station.

## 🎮 Gameplay

Asteroids spawn from random edges of the screen and move towards the space station located in the centre.

The objective is to destroy as many asteroids as possible before the station loses all of its lives.

### Controls

- **Left Mouse Click** – Destroy an asteroid
- Each destroyed asteroid increases the score by **1**
- Each asteroid that reaches the station removes **1 life**
- The station starts with **3 lives**
- The game ends when all lives are lost

## ✨ Features

- Random asteroid spawning
- Increasing spawn rate over time
- Mouse-based collision detection
- Asteroid-to-station collision detection
- Score tracking
- Lives system
- Game over state
- Object-oriented structure using separate classes for enemies and the station

## 🛠️ Technologies

- Java
- Processing

## 📁 Project Structure

```text
SpaceStationGame/
├── SpaceStationGame.pde   # Main game loop and game logic
├── Enemy.pde              # Asteroid behaviour and collision detection
└── Goal.pde               # Space station and collision logic

▶️ Running the Game

1. Install ⁠Processing
2. Clone or download this repository.
3. Open SpaceStationGame.pde in Processing.
4. Press the Run button.
5. Click incoming asteroids before they reach the station.

🧠 What I Learned

This project helped me practise fundamental programming and game development concepts, including:

* Object-oriented programming
* Classes and objects
* ArrayLists
* Game loops
* Collision detection
* Mouse input
* Random generation
* Managing game state

