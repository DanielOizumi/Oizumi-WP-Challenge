/**
 * Swiper Component
 * A reusable component to initialize and manage Swiper instances.
 */

import Swiper, { Navigation, Pagination } from "swiper";
import "swiper/css";

class SwiperComponent {
  constructor(elementSelector, options, enableBreakpoint) {
    this.element = document.querySelector(elementSelector);
    this.options = options;
    this.swiper = null;
    this.enableBreakpoint = enableBreakpoint;

    if (this.element) {
      this.initializeSwiper();
      this.handleResize(); // Call this initially
    }

    window.addEventListener("resize", () => this.handleResize());
  }

  initializeSwiper() {
    this.swiper = new Swiper(this.element, this.options);
  }

  destroySwiper() {
    if (this.swiper) {
      this.swiper.destroy(true, true);
      this.swiper = null;
    }
  }

  handleResize() {
    const screenWidth = window.innerWidth;

    if (screenWidth < this.enableBreakpoint) {
      if (!this.swiper) {
        this.initializeSwiper();
      }
    } else {
      this.destroySwiper();
    }
  }
}

export default SwiperComponent;
