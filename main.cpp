#include <SFML/Graphics.hpp>
#include <vector>
#include <iostream>

constexpr int WINDOW_WIDTH = 800;
constexpr int WINDOW_HEIGHT = 600;
constexpr int SEGMENT_SIZE = 20; // Size of each segment of the snake

constexpr float MOVE_INTERVAL = 0.15f; // Time in seconds between snake moves
int main()
{
    // Create a window with SFML
    sf::RenderWindow window(sf::VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT), "Interactive SFML Snake");

    // Limit the framerate (optional)
    window.setFramerateLimit(60);

// Clock for controlling movement timing
sf::Clock clock;
float elapsedTime = 0.0f;

// Create the snake: a vector of rectangles (segments)
    std::vector<sf::RectangleShape> snake;
    int initialLength = 5; // Initial length of the snake

    // Add initial segments to the snake
    for (int i = 0; i < initialLength; i++) {
        sf::RectangleShape segment(sf::Vector2f(SEGMENT_SIZE, SEGMENT_SIZE));
        segment.setFillColor(sf::Color::Green);
        segment.setPosition(WINDOW_WIDTH / 2 - i * SEGMENT_SIZE, WINDOW_HEIGHT / 2);
        snake.push_back(segment);
    }

    sf::Vector2f velocity(SEGMENT_SIZE, 0);

    // Load a font for the text
    sf::Font font;
    if (!font.loadFromFile("../fonts/Arial.ttf")) {
        std::cerr << "Failed to load font!" << std::endl;
        return -1;
    }

    sf::Text text;
    text.setFont(font);
    text.setString("Huji CS - Yonghao Lee All Rights Reserved");
    text.setCharacterSize(30);
    text.setFillColor(sf::Color::Yellow);
    text.setPosition(20.0f, 10.0f);

    while (window.isOpen()) {
        sf::Event event;
        while (window.pollEvent(event)) {
            // Close requested or ESC pressed
            if (event.type == sf::Event::Closed ||
                (event.type == sf::Event::KeyPressed && event.key.code == sf::Keyboard::Escape)) {
                window.close();
            }
        }

        // Handle keyboard input for changing direction
        if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Right) || sf::Keyboard::isKeyPressed(sf::Keyboard::D)) && velocity.x == 0) {
            velocity = sf::Vector2f(SEGMENT_SIZE, 0); // Move right
        }
        if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Left) || sf::Keyboard::isKeyPressed(sf::Keyboard::A)) && velocity.x == 0) {
            velocity = sf::Vector2f(-SEGMENT_SIZE, 0); // Move left
        }
        if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Up) || sf::Keyboard::isKeyPressed(sf::Keyboard::W)) && velocity.y == 0) {
            velocity = sf::Vector2f(0, -SEGMENT_SIZE); // Move up
        }
        if ((sf::Keyboard::isKeyPressed(sf::Keyboard::Down) || sf::Keyboard::isKeyPressed(sf::Keyboard::S)) && velocity.y == 0) {
            velocity = sf::Vector2f(0, SEGMENT_SIZE); // Move down
        }

// Update elapsed time
elapsedTime += clock.restart().asSeconds();

// Move the snake if enough time has passed
if (elapsedTime >= MOVE_INTERVAL) {
    elapsedTime = 0.0f;

    // Move the snake: start from the tail following the head
        for (int i = snake.size() - 1; i > 0; i--) {
            snake[i].setPosition(snake[i - 1].getPosition());
        }

        // Move the head
    snake[0].move(velocity);
}

        // Check for boundaries: Restart the game if the snake touches the edge
        sf::Vector2f headPos = snake[0].getPosition();
        if (headPos.x < 0 || headPos.x >= WINDOW_WIDTH ||
            headPos.y < 0 || headPos.y >= WINDOW_HEIGHT) {
            std::cout << "You hit the wall! Game restarting..." << std::endl;

            // Reset the snake to the initial position
            snake.clear();
            for (int i = 0; i < initialLength; i++) {
                sf::RectangleShape segment(sf::Vector2f(SEGMENT_SIZE, SEGMENT_SIZE));
                segment.setFillColor(sf::Color::Green);
                segment.setPosition(WINDOW_WIDTH / 2 - i * SEGMENT_SIZE, WINDOW_HEIGHT / 2);
                snake.push_back(segment);
            }
            velocity = sf::Vector2f(SEGMENT_SIZE, 0); // Reset velocity
        }

        // Clear the screen
        window.clear(sf::Color::Black);

        window.draw(text);

        // Draw the snake
        for (const auto& segment : snake) {
            window.draw(segment);
        }

        window.display();
    }

    return 0;
}