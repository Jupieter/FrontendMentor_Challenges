<template>
  <div class="grid-container">
    <div class="b1 card">
      <router-link to="/newbie/result_summary">
        <p>
          <img
            src="./result_summary/assets/design/desktop-design.jpg"
            alt="desktop-design"
          />
        </p>
        <h4>Result Summary Component</h4>
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
    gap: 1vw;
  }
  .grid-container div {
    padding: 20px;
    gap: 5vw;
  }
  .card {
    margin: 0px;
  }
}
@media (max-width: 1100px) {
  .card {
    margin: 5vw;
  }
}

.card {
  background-color: lightgrey;
  border: 1px solid darkgray;
  border-radius: 10px;
  padding: 5vw;
}
.card img {
  width: 100%;
  border-radius: 5px;
}
</style>
