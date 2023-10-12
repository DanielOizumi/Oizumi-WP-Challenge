/**
 * Carousel in Homepage
 */

import SwiperComponent from "./swiper.js";

// Define a function to initialize the Swiper component
export function homepageSwiper() {
  // Basic options
  const defaults = {
    spaceBetween: 0,
    slidesPerView: 1.21,
    breakpoints: {
      620: {
        slidesPerView: 2.17,
      },
      782: {
        slidesPerView: 3,
      },
    },
  };

  // Create SwiperComponent instance
  const swiper1 = new SwiperComponent(".swiper", defaults, 1920);
}