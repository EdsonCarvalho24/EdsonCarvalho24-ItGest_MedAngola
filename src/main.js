import Vue from 'vue'
import Vuelidate from 'vuelidate'
import App from './App.vue'
import router from './router'
import vuetify from './plugins/vuetify'
import axios from 'axios'
import VueAxios from 'vue-axios'
import '../node_modules/nprogress/nprogress.css'
import {boot} from '@/app-bootstrap'
import store from './store'

import VueSweetalert2 from 'vue-sweetalert2'
import 'sweetalert2/dist/sweetalert2.min.css'

Vue.use(VueSweetalert2)
Vue.use(Vuelidate)

Vue.config.productionTip = false
Vue.use(VueAxios,axios)
new Vue({
  router,
  vuetify,
  render: h => h(App)
}).$mount('#app')

boot().then(() => {
  new Vue({
    router,
    store,
    vuetify,
    render: h => h(App),
  }).$mount('#app')
})