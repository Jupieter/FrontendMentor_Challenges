<template>
  <div class="home">
    <h1>Welcome in my Vue.jsApp</h1>
    <img alt="Vue logo" src="../assets/logo.png" />
    <h1>FrontendMentor Challanges</h1>
    <router-view />
    <router-link to="/newbie"> Newbie </router-link>
  </div>
  <div class="hello">
    <HelloWorld msg="Hello VUE.js" />
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue";

export default {
  name: "HomeView",
  components: {
    HelloWorld,
  },
};
</script>

<style>
.home {
  /* position: fixed;
  top: 0; */
  height: 60vh;
  display: flex;
  flex-direction: column;
  justify-content: top;
  align-items: center;
  overflow-y: auto;
  border: 1px solid black;
  padding: 3vw;
}

.hello {
  /* position: fixed;
  top: 65vh;
  right: 25vw;
  /* display: flex; */
  flex-direction: column;
  justify-content: center;
  align-items: center;
  border: 1px solid black;
  padding: 2vw;
}
</style>
