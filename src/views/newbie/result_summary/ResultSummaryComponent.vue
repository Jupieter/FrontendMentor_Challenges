<template>
  <div class="main">
    <div class="result grid-flow">
      <div class="title">
        <h1>Your result</h1>
      </div>
      <div class="score"><span>76</span>of 100</div>
      <div class="rank">
        <h3>GREAT</h3>
        <p>Your results higher then 65% of people who have taken this tests.</p>
      </div>
    </div>
    <div class="summary">
      <div class="title">Summary</div>
      <div>
        <ul>
          <li v-for="item in items" :key="item.category">
            <img :src="item.icon" :alt="item.category" />
            <span>{{ item.category }}</span>
            <span>{{ item.score }}/100</span>
          </li>
        </ul>
      </div>
    </div>
    <button @click="toggleAboutLink">Toggle About Link</button>
  </div>
</template>

<script>
import { useStore } from "vuex";
import data from "./data.json";
export default {
  name: "ResultSummaryComponent",
  data() {
    return {
      items: data,
    };
  },
  methods: {
    toggleAboutLink() {
      const store = useStore();
      store.commit("setShowAboutLink", !store.state.showAboutLink);
    },
  },
};
</script>

<style lang="scss" scoped></style>
