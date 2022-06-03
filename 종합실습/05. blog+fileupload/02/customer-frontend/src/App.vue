<template>
  <div id = "app">
    <!-- * bootstrap dropdown 적용 -->
    <nav class = "navbar navbar-expand-lg navbar-dark bg-dark">
      <!--      <a class="navbar-brand" href="#">Navbar</a>-->
      <router-link to = "/"
                   class = "navbar-brand"
      >bezkoder
      </router-link>
      <button class = "navbar-toggler"
              type = "button"
              data-toggle = "collapse"
              data-target = "#navbarNavDropdown"
              aria-controls = "navbarNavDropdown"
              aria-expanded = "false"
              aria-label = "Toggle navigation"
      >
        <span class = "navbar-toggler-icon"></span>
      </button>
      <div class = "collapse navbar-collapse"
           id = "navbarNavDropdown"
      >
        <ul class = "navbar-nav">
          <!-- * dropdown #1 -->
          <li class = "nav-item dropdown">
            <a class = "nav-link dropdown-toggle"
               href = "#"
               id = "navbarDropdownMenuLink"
               data-toggle = "dropdown"
               aria-haspopup = "true"
               aria-expanded = "false"
            >
              Customer 메뉴
            </a>
            <div class = "dropdown-menu"
                 aria-labelledby = "navbarDropdownMenuLink"
            >
              <router-link to = "/customers"
                           class = "dropdown-item"
              >
                Customer 목록
              </router-link>
              <router-link to = "/add"
                           class = "dropdown-item"
              >
                Customer 추가
              </router-link>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <router-view/>
  </div>
</template>

<style>
</style>
