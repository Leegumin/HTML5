<template>
  <div id = "app">
    <!-- * bootstrap dropdown 적용 -->
    <nav class = "navbar navbar-expand-lg navbar-dark bg-dark">
      <a class = "navbar-brand"
         href = "#"
      >Navbar</a>
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
          <li class = "nav-item dropdown active">
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
                Customer List
              </router-link>
              <router-link to = "/add"
                           class = "dropdown-item"
              >
                Add New Customer
              </router-link>
            </div>
          </li>
          <!-- * dropdown #1 끝-->
        </ul>
      </div>
    </nav>

    <div class = "container">
      <router-view/>
    </div>

  </div>
</template>

<style>
</style>
