import Vue from 'vue'
import App from './App.vue'
import router from './router'
import vuetify from './plugins/vuetify'
import axios from 'axios'
import VueAxios from 'vue-axios'
import '../node_modules/nprogress/nprogress.css'


Vue.config.productionTip = false
Vue.use(VueAxios,axios)
new Vue({
  router,
  vuetify,
  render: h => h(App)
}).$mount('#app')
