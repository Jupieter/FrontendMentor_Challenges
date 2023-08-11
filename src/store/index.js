import { createStore } from "vuex";

export default createStore({
  state: {
    showAboutLink: false, // Kezdetben nem mutatjuk az About linket
  },
  getters: {},
  mutations: {
    setShowAboutLink(state, value) {
      state.showAboutLink = value;
    },
  },
  actions: {},
  modules: {},
});
