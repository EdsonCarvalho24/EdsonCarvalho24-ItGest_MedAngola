import Vue from 'vue'
import VueRouter from 'vue-router'
import Publico from '../views/Publico.vue'
import Login from '../views/Login.vue'
import Vagas from '../views/Vagas.vue'
import About from '../views/About.vue'
import Dashboard from '../views/Dashboard.vue'
import LoginAdmin from '../views/LoginAdmin.vue'
import Candidatos from '../views/Candidatos.vue'
import Candidato from '../views/Candidato.vue'
import Validar from '../views/Validar.vue'
import NProgress from 'nprogress';
Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'publico',
    component: Publico
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
  {
    path: '/dashboard',
    name: 'dashboard',
    component: Dashboard
  },
  {
    path: '/loginadmin',
    name: 'loginadmin',
    component: LoginAdmin
  },
  {
    path: '/candidatos',
    name: 'candidatos',
    component: Candidatos
  },

  {
    path: '/candidato',
    name: 'candidato',
    component: Candidato
  },
  {
    path: '/validar',
    name: 'validar',
    component: Validar
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

router.beforeResolve((to, from, next) =>{
  
  if(to.name){
    
    NProgress.configure({ easing: 'ease', speed: 1000 });
    NProgress.configure({ showSpinner: false });
    NProgress.start();
  }
  next();
});

router.afterEach(() =>{
  NProgress.done();
})
export default router




