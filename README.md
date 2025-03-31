# iOS Design System

This is a design system library for the Wallet app on iOS. It provides a structured way to manage styles and reusable UI components.

## Features
- **Styles**: Centralized foundation elements like colors and typography.
- **Components**: Pre-built UI components using SwiftUI.
- **Namespace Technique**: Organized structure to avoid global variable clutter.

## Installation
This package is distributed via Swift Package Manager (SPM). To add it to your project:

1. Open Xcode and navigate to `File > Add Packages`.
2. Enter the repository URL.
3. Select the latest version and add the package.

## Usage
### Importing the Design System
```swift
import DesignSystem
```

### Accessing Colors
```swift
let primaryColor = DesignSystem.Styles.Colors.primary
let secondaryColor = DesignSystem.Styles.Colors.secondary
```

### Using Components
```swift
import SwiftUI
import DesignSystem

struct ExampleView: View {
    var body: some View {
        Button("Click Me") {
            print("Button Pressed")
        }
        .buttonStyle(DesignSystem.Components.PrimaryButton())
    }
}
```

## Folder Structure
```
DesignSystem/
├── Sources/
│   ├── DesignSystem/
│   │   ├── Styles/
│   │   │   ├── Colors.swift
│   │   ├── Components/
│   │   │   ├── Buttons.swift
│   ├── DesignSystem.storybook (Optional)
├── Tests/
│   ├── DesignSystemTests/
│   │   ├── ColorsTests.swift
```

## Contributing
Feel free to open issues or submit pull requests to improve this package.
