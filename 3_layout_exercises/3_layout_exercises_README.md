# Layout Exercises

## 📐 Goals:
- Use Column, Row, Spacer, Expanded
- Create a Card with image + title + subtitle
- Practice alignment and spacing with multiple cards

# 3. Layout Challenge: Build a Profile Card

Time to master Flutter layouts! 🏗️

## How to Start
1. Open a terminal and navigate to this folder:
   ```sh
   cd 3_layout_exercises/layout_exercises
   ```
2. Run:
   ```sh
   flutter pub get
   flutter run
   ```
3. The app will launch with a basic skeleton. Open `lib/main.dart` and follow the TODOs to complete the exercise!

## Exercise
Recreate a simple profile card using Row, Column, and Container widgets.

### Step-by-Step
1. In `lib/main.dart`, replace the TODOs with your layout code.
2. Use a `Column` with:
   - A circular avatar (use `CircleAvatar` or `Container` with `BoxDecoration`).
   - A name (`Text` widget).
   - A short description (`Text`).
   - A button (e.g., `ElevatedButton` or `TextButton`).
3. Create a second profile card below the first one with different content.
4. Use `Padding`, `SizedBox`, and `Container` to space and style your widgets.
5. Try aligning items with `MainAxisAlignment` and `CrossAxisAlignment`.
6. Experiment with alignment and spacing between the cards, and also play with alignment and spacing inside each card.
7. Compare the effects of your changes on both cards.

### Bonus Fun
- Add a background color or card effect (`Card` widget).
- Add icons or a row of social media buttons.
- Try changing the layout to horizontal (use `Row`).
- Experiment with different alignments and spacings for each card to see the differences.

➡️ [Flutter Layouts](https://docs.flutter.dev/development/ui/layout)
➡️ [Container Widget](https://docs.flutter.dev/development/ui/widgets/container)

---

✅ When you’re ready, move on to [`4_state_exercises`](../4_state_exercises/4_state_exercises_README.md)
