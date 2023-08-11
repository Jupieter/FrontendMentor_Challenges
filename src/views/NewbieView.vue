<template>
  <div class="grid-container">
    <div class="b1 card">
      <router-link to="/newbie/result_summary">
        <h4>Result Summary Component</h4>
        <img
          src="./newbie/result_summary/assets/design/desktop-design.jpg"
          alt="desktop-design"
        />
      </router-link>
    </div>
    <div class="card">2</div>
    <div class="card">3</div>
    <div class="card">4</div>
    <div class="card">5</div>
    <div class="card">6</div>
  </div>
  <router-view />
</template>

<script>
export default {
  name: "NewbieView",
};
</script>

<style lang="scss" scoped>
div {
  border: 1px solid black;
}
@media (min-width: 1100px) {
  .grid-container {
    max-width: 80vw;
    min-width: 400px;
    margin: 0 auto;
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-template-rows: repeat(320px);
    gap: 20px;
  }
  .grid-container div {
    padding: 20px;
    gap: 20px;
  }
}

.card {
  background-color: lightgrey;
  border: 1px solid darkgray;
  border-radius: 10px;
  padding: 100px;
  margin: 10px;
}
.card img {
  width: 100%;
  border-radius: 5px;
}
</style>
