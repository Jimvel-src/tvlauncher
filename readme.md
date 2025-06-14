# Launcher Web App

Welcome to the **Launcher** project! This is a modern, visually appealing web-based launcher designed for quick access to your favorite TV shows and apps, with a focus on simplicity, speed, and a beautiful user interface. This launcher is ideal for use as a home dashboard, a kid-friendly TV portal, or a personal start page.

---

## Features

- **Live Clock:** Prominently displays the current time, updating every second.
- **Internet Connectivity Notification:** Instantly alerts you if your device loses internet connectivity.
- **TV Shows Section:** Large, attractive buttons for instant access to popular cartoon shows (e.g., Shinchan, Heidi, Gloria, Oggy), each opening a relevant YouTube search in a new tab.
- **Apps Section:** Quick-launch buttons for popular web apps and news sources (YouTube, Hotstar, Reddit, Instagram, Mathrubhumi, Flowers TV, and more).
- **Dynamic Content Loading:** The `custom.html` version loads all TV shows and apps dynamically from a `data.json` file, making it easy to add or remove entries without editing HTML.
- **Responsive Design:** Looks great on both desktop and mobile devices.
- **Modern Aesthetics:** Uses Google Fonts, FontAwesome icons, and smooth gradients for a polished look.
- **Easy Startup Integration:** Can be set to auto-launch on Windows startup by creating a shortcut in the Startup folder.

---

## File Overview

### `home.html`

- **Static Version:** All TV show and app buttons are hardcoded in the HTML.
- **How it works:**  
  - The page displays a clock and a notification area at the top.
  - TV shows and apps are presented as large, clickable buttons with images.
  - Each button opens a relevant link in a new browser tab.
  - A script checks for internet connectivity every 3 seconds and displays a warning if offline.
  - The design is responsive and visually engaging.

### `custom.html`

- **Dynamic Version:** TV shows and apps are loaded from `data.json` using JavaScript.
- **How it works:**  
  - On page load, the script fetches `data.json`.
  - It dynamically creates buttons for each TV show and app, using the data provided (name, image, link, etc.).
  - This makes it easy to update the launcher by simply editing `data.json`—no need to touch the HTML.
  - The rest of the features (clock, connectivity check, styling) are the same as `home.html`.

### `data.json`

- **Configuration File:**  
  - Contains two arrays: `tvshows` and `apps`.
  - Each entry specifies the name, image path, link, id, and class for a button.
  - You can add, remove, or edit entries to customize the launcher.
  - Example:
    ```json
    {
      "name": "Shinchan",
      "image": "images/shinchan.webp",
      "link": "https://www.youtube.com/results?search_query=shinchan+episodes+malayalam",
      "id": "shinchan",
      "class": "shinchan"
    }
    ```
  - **Note:** There is a small JSON syntax error in the last app entry (missing commas). Make sure to fix this before use.

---

## How It Works

1. **Startup Integration:**  
   - Place a shortcut to [home.html](http://_vscodecontentref_/0) or [custom.html](http://_vscodecontentref_/1) in your Windows Startup folder to launch automatically when your computer starts.

2. **User Interface:**  
   - The launcher displays a banner with a search icon (for future features), a notification area, and a live clock.
   - TV shows and apps are displayed as large, clickable image buttons.
   - Clicking a button opens the corresponding link in a new browser tab.

3. **Connectivity Check:**  
   - The app pings a Google endpoint every 3 seconds.
   - If the device is offline, a red warning appears in the notification area.

4. **Customization:**  
   - For the static version ([home.html](http://_vscodecontentref_/2)), edit the HTML to add or remove buttons.
   - For the dynamic version ([custom.html](http://_vscodecontentref_/3)), simply edit [data.json](http://_vscodecontentref_/4) to update the launcher.

5. **Styling:**  
   - Uses modern CSS for gradients, shadows, and responsive layouts.
   - All images are displayed with rounded corners and aspect ratios for a clean look.

---

## Installation

<!--
Leave this section blank for user-specific instructions.
-->

---

## Customization Tips

- **Adding a New TV Show or App:**  
  - In [data.json](http://_vscodecontentref_/5), add a new object to the `tvshows` or `apps` array with the appropriate fields.
  - Make sure the image file exists in the [images](http://_vscodecontentref_/6) directory.

- **Changing the Look:**  
  - Edit the `<style>` section in the HTML files to adjust colors, fonts, or layout.

- **Extending Functionality:**  
  - The launcher is a great starting point for adding more features, such as search, user authentication, or integration with other services.

---

## Troubleshooting

- **Buttons Not Appearing (custom.html):**  
  - Check the browser console for JSON parsing errors (likely due to a syntax issue in [data.json](http://_vscodecontentref_/7)).
  - Ensure all image paths are correct and files exist.

- **No Internet Notification Always On:**  
  - Make sure your device is connected to the internet.
  - Some browsers may block fetch requests to certain URLs; try a different endpoint if needed.

---

## Credits

- **Font:** [Inter](https://fonts.google.com/specimen/Inter) by Rasmus Andersson
- **Icons:** [FontAwesome](https://fontawesome.com/)
- **Images:** Sourced as per the links in [data.json](http://_vscodecontentref_/8)

---

Enjoy your personalized launcher!