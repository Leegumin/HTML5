<template>
  <div id="app">
    <nav>
      <router-link to="/">Home</router-link> |
      <router-link to="/admin">Admin</router-link> |
      <router-link to="/login">login</router-link>
    </nav>
    <router-view/>
  </div>
</template>

<style>
nav {
  text-align: right;
  padding-right: 20px;
}

nav a {
  font-weight: bold;
  color: black;
}
</style>
