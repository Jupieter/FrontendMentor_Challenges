<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png" />
    <router-link to="/newbie"> Newbie </router-link>
    <router-view />
    <HelloWorld msg="Welcome in my Vue.js App FrontendMentor Challange" />
    <p>NEW line</p>
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
