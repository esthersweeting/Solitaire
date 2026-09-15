# Solitaire

An implementation of Solitaire built as my first real project involving a graphical interface.
![Uploading image.png…]()


## Overview

This project is a playable klondike (solitaire) card game built while gaining my first experience with a game engine.

As an early project, the main goal was experimentation and learning. I built it by figuring things out as I went, implementing features, testing them, and solving problems as they came up.

Because of that, the project is less about having a perfect architecture and more about being the starting point for my experience with graphical programming and interactive applications.

## Features

* Graphical card-based game board
* 52-card deck
* Card suits and values
* Shuffling and dealing
* Seven tableau stacks
* Four foundation piles
* Mouse interaction
* Drag-and-drop card movement
* Validation of legal card moves
* Win-state detection

## Technologies

* **Godot Engine**
* **GDScript**
* Godot 2D scenes and UI nodes
* Mouse input and drag-and-drop interaction

## Structure

The project is split into several Godot scenes and scripts rather than being handled entirely in one script.

Some of the main components include:

* `Cards/CardsDatabase.gd` — stores card definitions and metadata.
* `CardBase/CardBase.gd` — represents an individual card and handles interaction.
* `PlaySpace/play_space.gd` — manages the main game area and initial setup.
* `DropZone/drop_zone.gd` — handles foundation/drop areas.
* `StackCards/stack_cards.gd` — manages tableau stacks and their rules.
* `PlaySpace/Deck/DeckArea.gd` — manages interaction with the draw deck.

## What I Learned

This project introduced me to graphical programming and interactive UI development.

Some of the main things I learned were:

* Creating a UI using scenes and reusable components.
* Handling mouse input.
* Implementing drag-and-drop interactions.
* Representing game objects as structured data.
* Managing state across multiple UI components.
* Implementing game rules using conditional logic.
* Debugging problems involving both UI and game state.
* Learning a new framework by building something rather than following a complete tutorial.

## Reflection

This project represents an early stage of my development, and there are several parts I would structure differently today.

For example, I would improve the separation between the game logic and the UI, reduce some of the duplicated data, and make the game rules easier to test independently from the interface. 

However, this project is important to me because it was where I first started experimenting with graphical applications. It helped me move from simply learning programming concepts to actually building something interactive from scratch.


