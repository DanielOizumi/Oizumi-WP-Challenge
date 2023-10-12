/**
 * TODO
 * Hide the submenu when the user click on any item inside it.
 * This will be useful for anchor links.
 */

/**
 * Toggle child container and rotate arrow
 */
export function toggleSubMenu() {
  jQuery("a.has-children").click(function (e) {
    e.preventDefault();

    let currentElement = jQuery(this);

    let thisGrandpa = currentElement.closest("ul"); // This parent ul
    let thisParents = thisGrandpa.find("li"); // List of li
    let thisChildren = thisGrandpa.find(".sub-nav-container"); // List of sub containers

    let thisParent = currentElement.parent(); // Current li
    let thisChild = thisParent.find(".sub-nav-container"); // Current sub containers

    // Disable if desktop footer nav 
    if (window.innerWidth > 1179 && currentElement.closest("nav").hasClass('footer-nav')) {
      return;
    }

    // Reset class
    thisParents.removeClass("is-open");

    // Toggle containers
    thisChild.toggle(50, function () {
      if (thisChild.is(":visible")) {
        thisParent.addClass("is-open");
      } else {
        thisParent.removeClass("is-open");
      }
    });
    thisChildren.not(thisChild).slideUp(150);
  });
}

/**
 * Add is-active class to parent li
 */
export function assignActiveClass() {
  var hasActiveClass = jQuery("nav .is-active");

  if (hasActiveClass.length > 0) {
    hasActiveClass.each(function () {
      let currentChild = jQuery(this);
      let rootLi = currentChild.parentsUntil("html", "nav>ul>li");
      rootLi.addClass("is-active");
    });
  }
}

/**
 * Mobile toggle button
 */
export function toggleMobileMenu() {
  let navIsHidden = true;
  jQuery(".header-mobile-button").click(function (e) {
    e.preventDefault();

    if (navIsHidden) {
      jQuery(".header-nav").slideDown(300);
    } else {
      jQuery(".header-nav").hide();
    }

    jQuery(".oizumi-header").toggleClass("blurred");
    navIsHidden = !navIsHidden;
  });
}
