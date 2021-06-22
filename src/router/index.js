import Vue from 'vue'
import VueRouter from 'vue-router'
import Publico from '../views/Publico.vue'
import Login from '../views/Login.vue'
import Vagas from '../views/Vagas.vue'
import About from '../views/About.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'publico',
    component: Publico
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },

  {
    path: '/login',
    name: 'login',
    component: Login
  },
  {
    path: '/vagas',
    name: 'vagas',
    component: Vagas
  },
  {
    path: '/about',
    name: 'about',
    component: About
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
