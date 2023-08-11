<template>
  <div class="container">
    <div class="content">
      <!-- Itt helyezd el a felette lévő tartalmat -->
      <router-view />
    </div>
  </div>
  <nav>
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link>
  </nav>
</template>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  position: fixed;
  bottom: 0;
  width: 100%;
  padding: 30px;
  height: 10vh;
  background-color: #2c3e50;

  a {
    font-weight: bold;
    font-size: 2rem;
    color: white;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}

.container {
  display: flex;
  flex-direction: column;
  height: 89vh; /* Teljes képernyőmagasság */
  overflow-y: auto; /* Görgethetőség a tartalom esetén */
}

.content {
  flex: 1; /* A tartalom töltse ki a rendelkezésre álló helyet */
  padding: 20px; /* Változtatható tartalom margója */
  overflow-y: auto; /* Görgethetőség, ha a tartalom nagyobb */
}
</style>
