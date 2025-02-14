# Interactive SFML Snake Game

This project demonstrates a basic snake game implemented using SFML (Simple and Fast Multimedia Library) in C++. The game features real-time control, collision handling, and graphical rendering with customizable fonts.

---

## Prerequisites

To run this project successfully, you will need:

1. **C++17 Compiler**: A modern C++ compiler such as `clang++` or `g++`.
2. **CMake**: A build system generator, version 3.10 or higher.
3. **SFML Library Version 2.5.1**:  
   Make sure you have this specific **2.5.1** version of SFML to avoid compatibility issues. You can download it from [the SFML website](https://www.sfml-dev.org/download.php).
4. **Font File (`Arial.ttf`)**:  
   The required font file is included in the project folder.

---

## Installation and Build Instructions

Follow these steps carefully to build and run the snake game:

### Step 1: Install SFML

#### macOS
Install SFML 2.5.1 using Homebrew:
```bash
brew update
brew install sfml
```

If a different version of SFML is installed, you may need to uninstall it first using:
```bash
brew uninstall sfml
```

Then manually install version 2.5.1 from source, or download directly from the website.

#### Linux (e.g., Ubuntu)
Download and install SFML 2.5.1:
```bash
sudo apt update
sudo apt install libsfml-dev
```

Or download the appropriate library version from the SFML website and configure your system manually.

#### Windows
Can't care less about Windows, but you can download the SFML 2.5.1 binaries from the official website and link them to your project.
---

### Step 2: Clone the Repository

Clone the repository using Git:
```bash
git clone https://github.com/Yonghao-Lee/Snake_game.git

```


---

### Step 3: Build the Project

#### Using CMake:
```bash
mkdir build
cd build
cmake ..
make
```



---

### Step 4: Run the Game

From the `build/` directory:
```bash
./my_sfml_project_bonus
```


---

## Font Installation

The game uses a font file (`Arial.ttf`) which is located in the `fonts` folder of the project repository. Ensure this folder is not moved or deleted, as the game will fail to load without it.

---

## Controls

- **Arrow Keys / WASD**: Move the snake.
- **Escape (ESC)**: Exit the game.

---

## Notes

- Make sure you are using **SFML 2.5.1**, as this version ensures compatibility with the codebase.
- If the game doesn't start, verify that the font file is in the correct location and the SFML library is properly linked.

---

Remember, 42 is the answer to everything. Good luck!