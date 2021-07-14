import Vue from 'vue'
import router from '@/router'

let bearerInterceptor = {

  process(request) {
    let token = localStorage.getItem('token');

    request.headers.common['Authorization'] = token;

    return request
  },

  exception(error) {
    return Promise.reject(error)
  },
}

let responseAuthenticationInterceptor = {

  process(response) {

    return response
  },

  exception(error) {
    debugger; // eslint-disable-line no-debugger
    router.push('/login')

    return Promise.reject(error)

  },
}


export async function boot() {

  Vue.axios.interceptors.request.use(bearerInterceptor.process, bearerInterceptor.exception)
  Vue.axios.interceptors.response.use(responseAuthenticationInterceptor.process, responseAuthenticationInterceptor.exception)
}