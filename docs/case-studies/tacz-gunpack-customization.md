# TACZ Gunpack Customization

## Background

After successfully deploying the Forge server and resolving major compatibility issues, I wanted to customize the TACZ weapon system for our modded Minecraft server. My goal was to adjust weapon balance by modifying gunpack JSON files, including weapon damage, ammunition behavior, and other gameplay parameters.

At first, I assumed editing the JSON configuration files would immediately change the in-game behavior. However, the customization process turned out to be much more complex than expected because TACZ supports multiple loading locations and resource override mechanisms.

---

## Problem

Although I repeatedly modified the weapon configuration files, none of the changes appeared in game.

Several confusing symptoms occurred during testing:

- Weapon damage remained unchanged.
- Edited JSON files appeared to be ignored.
- Different launchers and game directories produced inconsistent results.
- Some configuration values affected gameplay while others did not.

Initially, it was difficult to determine whether the issue came from the JSON syntax, the gunpack itself, resource loading order, or an incorrect installation path.

---

## Investigation

Instead of repeatedly changing random values, I started verifying the complete loading process.

The investigation focused on several areas:

- Determining the actual game directory used by the launcher.
- Identifying which gunpack was loaded during runtime.
- Comparing server-side and client-side resource locations.
- Verifying whether resource packs or override packs replaced the original gunpack.
- Checking how TACZ separates weapon configuration from ammunition configuration.

Community discussions were also helpful. Other TACZ users had experienced similar situations where modifying the wrong directory or editing an inactive gunpack caused every change to appear ineffective.

During testing, I learned that successful JSON editing does not necessarily mean the game is loading that file. Runtime verification is more important than assuming the edited file is active.

---

## Solution

After tracing the complete loading path, I confirmed that the correct gunpack directory had to be modified instead of several duplicate copies stored in different locations.

The final workflow became:

1. Locate the active game directory.
2. Verify the gunpack currently loaded by TACZ.
3. Edit the correct JSON configuration.
4. Validate JSON formatting.
5. Restart the client or server when necessary.
6. Test the modified weapon in-game.

I also learned that some gameplay behavior is controlled by ammunition configuration rather than weapon configuration alone. Understanding the relationship between weapon JSON files and ammunition definitions made later customization much more predictable.

---

## Validation

After applying the modifications to the correct gunpack, runtime testing confirmed that the customized values were loaded successfully.

The final verification included:

- Weapon behavior changed as expected.
- JSON modifications persisted after restarting the game.
- The server and client loaded the same gunpack resources.
- The customization process became fully reproducible.

This workflow eliminated the uncertainty that had existed during the early debugging stage.

---

## Lessons Learned

This experience taught me that configuration files should never be trusted solely because they have been edited successfully.

When working with modded applications:

- Always verify which resources are actually loaded at runtime.
- Confirm the active working directory before modifying files.
- Distinguish between client-side resources and server-side resources.
- Use systematic validation instead of repeatedly guessing configuration changes.
- Community knowledge can significantly reduce debugging time when dealing with large open-source mod ecosystems.

These practices made future TACZ customization considerably faster and reduced unnecessary troubleshooting.
