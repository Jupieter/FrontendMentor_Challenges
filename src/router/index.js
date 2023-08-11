import { createRouter, createWebHistory } from "vue-router";
import HomeView from "../views/HomeView.vue";
import NewbieView from "../views/newbie/NewbieView.vue";
import ResultSummaryComponent from "../views/newbie/result_summary/ResultSummaryComponent.vue";

const routes = [
  {
    path: "/",
    name: "home",
    component: HomeView,
  },
  {
    path: "/about",
    name: "about",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () =>
      import(/* webpackChunkName: "about" */ "../views/AboutView.vue"),
  },
  {
    path: "/newbie",
    name: "newbie",
    component: NewbieView,
  },
  {
    path: "/newbie/result_summary",
    name: "result_summary",
    component: ResultSummaryComponent,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
