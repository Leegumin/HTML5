<template>
  <div id = "page-top">
    <!-- ?Navigation-->
<!--    <nav class = "navbar navbar-expand-lg navbar-light fixed-top py-3"
         id = "mainNav"
    >
      <div class = "container px-4 px-lg-5">
        <a class = "navbar-brand"
           href = "#page-top"
        >Start Bootstrap</a>
        <button class = "navbar-toggler navbar-toggler-right"
                type = "button"
                data-bs-toggle = "collapse"
                data-bs-target = "#navbarResponsive"
                aria-controls = "navbarResponsive"
                aria-expanded = "false"
                aria-label = "Toggle navigation"
        ><span class = "navbar-toggler-icon"></span></button>
        <div class = "collapse navbar-collapse"
             id = "navbarResponsive"
        >
          <ul class = "navbar-nav ms-auto my-2 my-lg-0">
            <li class = "nav-item"><a class = "nav-link"
                                      href = "#about"
            >About</a></li>
            <li class = "nav-item"><a class = "nav-link"
                                      href = "#services"
            >Services</a></li>
            <li class = "nav-item"><a class = "nav-link"
                                      href = "#portfolio"
            >Portfolio</a></li>
            <li class = "nav-item"><a class = "nav-link"
                                      href = "#contact"
            >Contact</a></li>
          </ul>
        </div>
      </div>
    </nav>-->
    <!-- Navigation-->
    <!--p(padding), m(margin)/l(left), r(right), t(top), b(bottom)-1~5-->
    <a class = "menu-toggle rounded mt-5"
       href = "#"
    ><i class = "fas fa-bars"></i></a>
    <nav id = "sidebar-wrapper">
      <ul class = "sidebar-nav">
        <li class = "sidebar-brand"><a href = "#page-top">Start Bootstrap</a></li>
        <li class = "sidebar-nav-item"><a href = "#about">About</a></li>
        <li class = "sidebar-nav-item"><a href = "#services">Services</a></li>
        <li class = "sidebar-nav-item"><a href = "#portfolio">Portfolio</a></li>
        <li class = "sidebar-nav-item"><a href = "#contact">Contact</a></li>
      </ul>
    </nav>
    <!-- Header-->
    <HeaderCom></HeaderCom>
    <!-- Section-->
    <SectionCom></SectionCom>
    <!-- Footer-->
    <FooterCom></FooterCom>
  </div>
</template>

<script>

import HeaderCom from '@/components/home2/HeaderCom'
import FooterCom from '@/components/home2/FooterCom'
import SectionCom from '@/components/home2/SectionCom'
import loadWin2 from '@/assets2/js/scripts'

export default {
  name      : 'HomeView2',
  components: {
    HeaderCom,
    FooterCom,
    SectionCom,
  },
  mounted () {
    loadWin2()
  },
}
</script>

<style scoped>
@import '@/assets2/css/styles.css';
</style>