# Godot Starter Kit

A minimal, ready-to-use Godot project template that provides essential game systems without any styling. Perfect for quickly starting new projects with solid foundations already in place. I shamelessly borrowed and simplified ideas from various community assets and projects to create a lightweight and flexible starting point for my own purposes. This template keeps things simple and focused on the essentials every game needs. Feel free to extend and customize it for your specific project requirements!

## Features

**Scene Management**
- Smooth scene transitions with built-in loading screens
- Simple yet elegant `SceneManager.swap_scenes()` API
- Pretty much a carbon copy of [maktoobgar's scene manager](https://godotengine.org/asset-library/asset/1582), simplified for common use cases

**Settings System**
- Persistent user settings saved to config file
- Built-in audio volume and fullscreen controls
- Easily extensible for custom settings
- Clean settings UI included
- Heavily inspired by [brettchalupa's godot_skeleton](https://github.com/brettchalupa/godot_skeleton)

**Audio Management**
- Separate Music and SFX buses with volume controls
- Audio pooling system for efficient SFX playback
- Respects user volume preferences
- Pause-resistant music playback

**Pause Menu**
- Smooth blur transition effects
- Integrated settings access
- Main menu navigation  

**Debug Tools**
- Toggle debug overlay with ` key
- Runtime expression evaluation
- Expandable for custom debug commands
- Heavily inspired by [Shaggy Dev](https://shaggydev.com/2024/01/09/dev-console/). He did a lot more with his version, but I wanted to keep it simple because debugging needs vary widely between projects.
- Go check out Shaggy Dev's blog, there is some great stuff in there for anyone interested in making turn based strategy games.

## Quick Start

1. Use this repository as a template to create a new Godot project
2. Open the project in Godot 4.4+
3. Run the project to see the start screen
4. Make skyrim

## Controls

- **ESC** - Pause/unpause game
- **` (backtick)** - Toggle debug overlay
- **Enter** - Start game (from main menu)

## Project Structure

- `autoloads/` - Core singleton systems (SceneManager, SoundManager, Settings)
- `scenes/` - UI scenes and game screens
- `assets/` - Audio assets just here for demonstration purposes only. Credit for audio goes to Eric Matyas (https://www.soundimage.org/)

---

## Contributing

I'm going to come back and add more features, including default input handling and accessibility options. Stay tuned.

If you have ideas for cool additions that would benefit most game projects, please feel free to open an issue or submit a PR. I'm always looking to improve this workflow while keeping it simple and universally applicable.


