/*!
 * Start Bootstrap - Creative v7.0.6 (https://startbootstrap.com/theme/creative)
 * Copyright 2013-2022 Start Bootstrap
 * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-creative/blob/master/LICENSE)
 */
//
// Scripts
// 
/*eslint-disable*/
function loadWin2 () {
  const sidebarWrapper = document.getElementById('sidebar-wrapper')
  let scrollToTopVisible = false
  // Closes the sidebar menu
  const menuToggle = document.body.querySelector('.menu-toggle')
  menuToggle.addEventListener('click', event => {
    event.preventDefault()
    sidebarWrapper.classList.toggle('active')
    _toggleMenuIcon()
    menuToggle.classList.toggle('active')
  })

  // Closes responsive menu when a scroll trigger link is clicked
  var scrollTriggerList = [].slice.call(
    document.querySelectorAll('#sidebar-wrapper .js-scroll-trigger'))
  scrollTriggerList.map(scrollTrigger => {
    scrollTrigger.addEventListener('click', () => {
      sidebarWrapper.classList.remove('active')
      menuToggle.classList.remove('active')
      _toggleMenuIcon()
    })
  })

  function _toggleMenuIcon () {
    const menuToggleBars = document.body.querySelector(
      '.menu-toggle > .fa-bars')
    const menuToggleTimes = document.body.querySelector(
      '.menu-toggle > .fa-xmark')
    if (menuToggleBars) {
      menuToggleBars.classList.remove('fa-bars')
      menuToggleBars.classList.add('fa-xmark')
    }
    if (menuToggleTimes) {
      menuToggleTimes.classList.remove('fa-xmark')
      menuToggleTimes.classList.add('fa-bars')
    }
  }

  // Scroll to top button appear
  document.addEventListener('scroll', () => {
    const scrollToTop = document.body.querySelector('.scroll-to-top')
    if (document.documentElement.scrollTop > 100) {
      if (!scrollToTopVisible) {
        fadeIn(scrollToTop)
        scrollToTopVisible = true
      }
    }
    else {
      if (scrollToTopVisible) {
        fadeOut(scrollToTop)
        scrollToTopVisible = false
      }
    }
  })

  // Activate SimpleLightbox plugin for portfolio items
  new SimpleLightbox({
    elements: '#portfolio a.portfolio-box',
  })
}

export default loadWin2
