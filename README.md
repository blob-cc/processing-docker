# Processing devContainer

This project provides a Processing development environment within a Docker container, fully equipped with popular Processing libraries. This setup ensures a consistent development environment for all users and simplifies the setup process.

## Features

- **Consistent Development Environment**: Everything runs inside a Docker container, ensuring that all developers have the same setup and dependencies.
- **Pre-installed Libraries**: Includes popular Processing libraries such as Sound, Video, ControlP5, and ToxicLibs for advanced functionalities.
- **Example Sketch**: A simple example sketch is included to demonstrate how to start creating Processing sketches immediately.

## Structure

``` lua
/YourProject
|-- .devcontainer
|   |-- devcontainer.json
|   |-- Dockerfile
|-- examples
|   |-- ExampleSketch
|       |-- ExampleSketch.pde
|-- README.md
```

## Prerequisites

- **Docker**: You must have Docker installed and running on your machine. [Get Docker](https://www.docker.com/get-started)
- **Visual Studio Code**: VS Code with the Remote - Containers extension installed. [Download VS Code](https://code.visualstudio.com/Download)
- **X Server**: For GUI applications, an X Server is required:
  - **Linux**: X11 should already be installed.
  - **Windows**: Install VcXsrv or Xming.
  - **macOS**: Install XQuartz.

## Getting Started

1. **Clone the Repository**

   ```bash
   git clone <repository-url>
   cd <project-directory>
   ```

2. **Open with VS Code**
   Open the project folder in VS Code. When prompted, click on `Reopen in Container` to start building the container. This may take a few minutes the first time.

3. **Run the Example Sketch**
   Once the container is ready, the example sketch located in `examples/ExampleSketch/ExampleSketch.pde` will automatically run, displaying a moving ball across the screen.

## Using the Environment

- **Developing Your Sketches**: You can add new sketches or modify existing ones in the `/workspace` directory.
- **Running Sketches**: Use the command below to run your Processing sketches:

  ```bash
  processing-java --sketch=/workspace/your-sketch-folder --run
  ```

## Included Libraries

Here are the libraries included in this DevContainer setup:

- **Sound**: For audio processing.
- **Video**: For video capturing and rendering.
- **ControlP5**: For creating interactive GUI elements.
- **ToxicLibs**: Comprehensive toolkit for graphics, physics, and more.

Refer to the respective library documentation for detailed usage instructions.

## Troubleshooting

- **GUI not Displaying**: Ensure your X Server is configured to allow connections from `localhost`.
- **Library Errors**: If a library fails to load, verify that it's correctly installed in the `/opt/processing/modes/java/libraries` directory.

## Contributing

Contributions to this project are welcome! Please submit issues and pull requests with your improvements.

## License

Specify the license under which the project is made available.
