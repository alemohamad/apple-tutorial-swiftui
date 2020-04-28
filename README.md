# Introducing SwiftUI

SwiftUI is a modern way to declare user interfaces for any Apple platform. Create beautiful, dynamic apps faster than ever before.

> [https://developer.apple.com/tutorials/swiftui](https://developer.apple.com/tutorials/swiftui)

![MacBook Pro displaying Xcode](https://docs-assets.developer.apple.com/published/14af8a1d55/56a30421-98c5-43e0-bffd-605086591b54.png)

## Section 1: Create a New Project and Explore the Canvas

Create a new Xcode project that uses SwiftUI. Explore the canvas, previews, and the SwiftUI template code.

To preview and interact with views from the canvas in Xcode, ensure your Mac is running macOS Catalina 10.15.

## Section 2: Customize the Text View
You can customize a view’s display by changing your code, or by using the inspector to discover what’s available and to help you write code.

As you build the Landmarks app, you can use any combination of editors: the source editor, the canvas, or the inspectors. Your code stays updated, regardless of which tool you use.

## Section 3: Combine Views Using Stacks

Beyond the title view you created in the previous section, you’ll add text views to contain details about the landmark, such as the name of the park and state it’s in.

When creating a SwiftUI view, you describe its content, layout, and behavior in the view’s body property; however, the body property only returns a single view. You can combine and embed multiple views in stacks, which group views together horizontally, vertically, or back-to-front.

In this section, you’ll use a vertical stack to place the title above a horizontal stack that contains details about the park.

## Section 4: Create a Custom Image View

With the name and location views all set, the next step is to add an image for the landmark.

Instead of adding more code in this file, you’ll create a custom view that applies a mask, border, and drop shadow to the image.

## Section 5: Use UIKit and SwiftUI Views Together

Now you’re ready to create a map view. You can use the MKMapView class from MapKit to render the map.

To use UIView subclasses from within SwiftUI, you wrap the other view in a SwiftUI view that conforms to the UIViewRepresentable protocol. SwiftUI includes similar protocols for WatchKit and AppKit views.

