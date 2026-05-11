# Spuddenly Human - Progress Summary

## Current State
This project now has a playable prototype with a title screen, a complete kitchen lesson, and a fuller first pass of the living room embarrassment lesson.

The player can move around as a potato, interact with objects, read on-screen dialogue, solve a tiny toaster puzzle, trigger the first emotional learning moment, move into the living room, investigate a message disaster, and resolve the embarrassment scene with an apology draft.

## Story So Far
The game is about a potato who has somehow become aware enough to study humans.

The potato does not fully understand people yet. It treats ordinary human behavior like mysterious field research: appliances, reminders, breakfast habits, arguments, pride, embarrassment, and all the small ways humans make life harder than it needs to be.

The demo tone should lean sarcastic and funny. The potato should sound like a tiny deadpan researcher who is baffled by humans and quietly unimpressed by their decision-making. The humor should poke at human stupidity, overreaction, denial, and dramatic emotional spirals, but it should stay playful rather than cruel.

The main story idea is that the potato explores a human living space room by room and learns one emotion from each situation. Each room has a small human problem that is both emotionally real and deeply silly.

The potato begins in the kitchen, where a toaster is considered "broken" even though it is simply not plugged in. This becomes the potato's first lesson: humans experience frustration when reality refuses to match what they expected, especially when the solution was embarrassingly simple.

## Story Structure
The current plan is a short apartment-based demo with three emotional lessons:

1. Kitchen: frustration.
The toaster will not work because it is unplugged. The potato solves the problem and learns that humans can become furious at simple machines, especially when the actual problem is their own oversight.

2. Living room: embarrassment.
A human has sent the wrong message to the wrong person. The potato investigates the aftermath and learns that embarrassment is what happens when a private mistake escapes into public life.

3. Hallway: empathy.
Two neighbors blame each other for a fallen plant. The potato discovers the truth is sillier than either person expected and learns that empathy means understanding someone before deciding they are the problem.

The larger story arc is that the potato starts as a sarcastic observer of human stupidity but slowly learns that emotion and stupidity are often tangled together. By the end, the potato should not simply judge humans. It should understand them a little, even if it remains deeply concerned about the species.

## Current Story Checkpoint
We have completed the kitchen lesson and built a fuller first pass of the living room lesson.

Current narrative state:
- The potato has entered the kitchen.
- The toaster appears broken.
- A note hints that someone was supposed to plug it in.
- The potato can plug in the toaster.
- The toaster works.
- The potato learns the first emotion: frustration.
- The potato can use the kitchen exit to enter the living room.
- The living room introduces an anxious human and a phone message sent to the apartment group chat.
- The potato can inspect the phone, the notification note, and an apology draft.
- The potato can help the anxious human recover.
- The potato learns the second emotion: embarrassment.

The living room now has a basic puzzle loop, but it still needs visual polish and a stronger handoff into the hallway scene.

## Working Features
- 2D player movement using arrow-key style input actions.
- Player interaction with the `interact` action mapped to `E`.
- Distance-based interaction system.
- On-screen dialogue box with a speaker label and player-controlled closing.
- Custom SVG sprites for the potato, toaster, and plug.
- Kitchen room layout with floor, walls, counter, sink, table, and collision boundaries.
- Fixed kitchen camera and default test window size.
- Title screen with start and quit buttons.
- Reusable prop dialogue script for simple inspectable objects.
- Kitchen exit interaction that changes after the frustration lesson is learned.
- Visible kitchen exit prompt after the toaster lesson is complete.
- Dialogue queue so multiple story messages can appear in order.
- Living room scene with couch, table, anxious human, phone, and group chat note.
- Second emotional learning trigger: embarrassment.
- First puzzle loop:
  - Inspect toaster.
  - Learn it is not plugged in.
  - Interact with plug.
  - Return to toaster.
  - Trigger the working toaster dialogue.
  - Learn the emotion: frustration.
  - Receive a kitchen-complete hint toward the next room.
  - Enter the living room.
  - Inspect the phone.
  - Inspect the fallout note.
  - Create an apology draft.
  - Help the anxious human.
  - Learn the emotion: embarrassment.

## Important Files
- `project.godot`: Godot project configuration.
- `title_screen.tscn`: Main title screen.
- `title_screen.gd`: Starts the kitchen scene or quits the game.
- `kitchen_room.tscn`: Main playable kitchen scene.
- `kitchen_room.gd`: Tracks kitchen-specific progress, including the frustration learning moment.
- `kitchen_exit.gd`: Handles the kitchen exit tease before and after the lesson is complete.
- `living_room.tscn`: Second room prototype focused on embarrassment.
- `living_room.gd`: Tracks living room progress, including the embarrassment learning moment.
- `phone.gd`: Handles the phone interaction and embarrassment trigger.
- `anxious_human.gd`: Handles the embarrassed human and resolution interaction.
- `group_chat_note.gd`: Handles the group chat fallout clue.
- `apology_card.gd`: Handles the apology draft clue and progress.
- `potatoplaye.tscn`: Player scene.
- `potatoplaye.gd`: Player movement and interaction logic.
- `dialogue_box.gd`: Reusable on-screen dialogue system.
- `toaster.gd`: Toaster interaction and puzzle response.
- `plug.gd`: Plug interaction and toaster power state.
- `prop_dialogue.gd`: Reusable script for simple inspectable props.
- `assets/potato.svg`: Potato player sprite.
- `assets/toaster.svg`: Toaster sprite.
- `assets/plug.svg`: Plug sprite.
- `assets/human.svg`: Human placeholder sprite.
- `assets/phone.svg`: Phone sprite.

## Current Gameplay Flow
1. The player starts in the kitchen as the potato.
2. The player can inspect the toaster.
3. The toaster says it is not plugged in.
4. The player can inspect the note for a hint.
5. The player interacts with the plug.
6. The plug powers the toaster.
7. The player returns to the toaster.
8. The toaster now works.
9. The room displays the first emotional learning message: frustration.
10. The room confirms the kitchen diagnosis is complete and points toward the next social disaster.
11. The player can inspect the kitchen exit and move into the living room.
12. The player finds an anxious human and an incriminating phone.
13. The player inspects the phone and confirms the message disaster.
14. The player inspects the fallout note and apology draft.
15. The player helps the human recover.
16. The player learns embarrassment.

## Design Direction
The game is becoming a 2D top-down narrative exploration game with light comedy puzzles.

The intended tone is sarcastic, funny, absurd, and still a little warm underneath. The potato is learning that humans are emotional, strange, and often defeated by very simple problems.

Voice guidelines:
- The potato should be dry, blunt, and over-serious about very silly observations.
- Jokes should come from treating normal human behavior like bad engineering or failed survival strategy.
- The writing can be sarcastic, but avoid making the potato purely mean.
- Emotional lessons should land as funny first, thoughtful second.

## Known Limitations
- The kitchen art is still simple prototype geometry.
- The interaction system checks distance to interactable node origins, which is simple but not yet ideal for every object.
- There is no save system.
- The kitchen and living room now both have basic puzzle loops, but the living room still needs stronger visual storytelling.

## Recommended Next Steps
1. Add a hallway transition and the empathy setup.
2. Improve both rooms visually with better props and colors.
3. Organize files into folders once the prototype grows larger.

## Milestone Reached
The project has reached its first real milestone: a complete tiny gameplay loop.

The player can observe a problem, solve it, and receive an emotional learning payoff.
