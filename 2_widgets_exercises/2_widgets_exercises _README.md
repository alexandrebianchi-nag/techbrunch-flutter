# Widgets Exercises

## 🔧 Goals:
- Modify a StatelessWidget greeting
- Add a StatefulWidget with a counter
- Add a second counter and track both independently

# 2. Widget Playground: Stateless & Stateful Widgets

Let’s play with Flutter widgets! 🧩

## How to Start
1. Open a terminal and navigate to this folder:
   ```sh
   cd 2_widgets_exercises/widgets_exercise
   ```
2. Run:
   ```sh
   flutter pub get
   flutter run
   ```
3. The app will launch with a basic skeleton. Open `lib/main.dart` and follow the TODOs to complete the exercise!

## Exercise
### Part 1: Stateless Widget (Greeting)
- **Modify the existing StatelessWidget greeting** in `lib/main.dart` (e.g., change the text to your name or a custom message).
- Create a new stateless widget (e.g., `MyCard`).
- Display a card with a title and an icon.
- Add your widget to the app’s body, below the greeting.

### Part 2: Stateful Widget (Counter)
- **Add a StatefulWidget with a counter** (e.g., `CounterWidget`).
- Add a button that increments the counter when pressed.
- Display the current count in the widget.
- Add your widget below the stateless widgets.

### Part 3: Second Counter (Independent State)
- **Add a second counter** by creating another instance of your counter widget, or a new widget (e.g., `SecondCounterWidget`).
- Ensure both counters work independently (incrementing one does not affect the other).
- Place the second counter below the first counter.

### Bonus: Widget Playground
- Add a `Column` with:
  - A `Text` widget
  - An `Icon` widget
  - An `Image.network` widget (try a fun image!)
  - A `RaisedButton` or `ElevatedButton`
- Play with their properties (color, size, etc.).

➡️ [StatelessWidget vs StatefulWidget](https://docs.flutter.dev/development/ui/widgets-intro#stateful-and-stateless-widgets)
➡️ [Flutter Widget Catalog](https://docs.flutter.dev/development/ui/widgets)

---

✅ When you’re ready, move on to [`3_layout_exercises`](../3_layout_exercises/README.md)
