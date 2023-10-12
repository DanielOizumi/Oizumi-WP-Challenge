/*
  Main JavaScript Entry
  ---------------------
  This is the main JavaScript entry file for the project. It imports the 'carousel' module
  and initializes it when the DOM content is fully loaded.

  Note:
  - This file serves as the entry point for the project's JavaScript functionality.
  - Ensure that additional scripts and dependencies are imported and utilized as needed.
*/

import jQuery from "./jquery-3.7.1.min.js";
window.$ = window.jQuery = window.jquery = jQuery;

import {
  toggleSubMenu,
  assignActiveClass,
  toggleMobileMenu,
} from "./components/navigator";

import { homepageSwiper } from "./components/homepage-carousel.js";

// Add an event listener for the 'DOMContentLoaded' event.
document.addEventListener("DOMContentLoaded", function () {
  toggleSubMenu();
  assignActiveClass();
  toggleMobileMenu();
  homepageSwiper();
});
