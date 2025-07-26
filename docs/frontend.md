# UI/UX Specification: Telestream (Version 1.1)

## 1. Overview & Core Principles

*   **Vision**: To create the definitive, centralized hub for TV show discovery and tracking with a seamless experience across iPhone, iPad, and macOS.
*   **Core Principles**:
    *   **User-Centric**: Every design decision must serve the user's need for simplicity and efficiency.
    *   **Clarity & Intuitiveness**: The interface will be clean and easy to navigate, inspired by the best-in-class discovery platforms like Netflix.
    *   **Consistency**: The user experience will be consistent and familiar across all target platforms, adapting to the unique conventions of each.
    *   **Data-Aware Design**: The UI must gracefully handle the offline-first nature of the app, clearly communicating data freshness and sync status when necessary.
    *   **Responsive & Adaptive**: The UI will not be a static block but will adapt fluidly to various screen sizes and orientations, from a compact iPhone view to a multi-paned layout on macOS.

## 2. Branding & Visual Identity

*   **Color Palette**:
    *   **Primary Background**: A deep, dark charcoal (`#121212`) instead of pure black to reduce eye strain and create a sophisticated, cinematic feel.
    *   **Primary Accent**: A vibrant, energetic blue (`#007AFF`) to be used for interactive elements like buttons, selected tabs, and progress indicators. This color is accessible and stands out against the dark background.
    *   **Secondary Accent**: A warm off-white (`#F5F5F7`) for body text and secondary information, ensuring high readability.
    *   **Highlight Color**: A bright yellow or gold (`#FFD60A`) for "Top Rated" badges or other special highlights to draw user attention.
*   **Typography**:
    *   **Headings Font**: **SF Pro Display (Bold)**. As the native Apple font, it will feel at home on all target devices. Its modern, clean lines are perfect for headings and prominent UI elements.
    *   **Body Font**: **SF Pro Text (Regular/Medium)**. This ensures optimal readability for descriptions, list items, and all other text content.

## 3. Information Architecture & Navigation

*   **Primary Navigation**: A main bottom navigation bar will be present on all primary screens, containing three distinct tabs:
    *   Discover
    *   Collections
    *   Settings
*   **Adaptive Layouts**:
    *   **iPhone**: A single-column layout.
    *   **iPad**: A two-column layout could be used in landscape mode (e.g., list view on the left, detail view on the right).
    *   **macOS**: A three-pane layout is ideal, showing navigation, a list of shows, and the selected show's details simultaneously.

## 4. Screen & Component Breakdown

*   **A. Discover Tab**
    *   **Layout**: A vertically scrolling view containing multiple horizontally scrolling carousels.
    *   **UI Style**: A visually rich, immersive interface heavily utilizing show poster art. A dark theme is the default.
*   **B. Collections Tab**
    *   **Layout**: A segmented control or sub-navigation to switch between collections (Watchlist, Favorites, Custom).
    *   **Functionality**: Users can create, name, and manage their own custom collections.
*   **C. Show Detail View**
    *   **Content**: Show Title, Poster, Synopsis, Streaming Service, Season/Episode list.
    *   **Actions**: "Add to Watchlist," "Add to Favorites," Progress Tracker.

---
