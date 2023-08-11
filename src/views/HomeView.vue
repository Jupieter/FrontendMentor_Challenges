<template>
  <div class="home">
    <h1>Welcome in my Vue.jsApp</h1>
    <h1>
      FrontendMentor Challange
      <img alt="Vue logo" src="../assets/logo.png" />
    </h1>
    <router-view />
    <router-link to="/newbie"> Newbie </router-link>
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
