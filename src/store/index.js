import Vue from "vue";
import Vuex from "vuex";


Vue.use(Vuex)

export default new Vuex.Store({
    state: {
        user: null,
        token: null
    },

    getters: {
        user: state => state.user,
        token: state => state.token
    },

    mutations: {
        setUser(state, user) {

            state.user = user
            if (!user) {
                localStorage.removeItem('user')
            } else {
                localStorage.setItem('user', JSON.stringify(user))   // Json.parse reverso.
            }
        },
        setToken(state, token) {

            state.token = token
            if (!token) {
                localStorage.removeItem('token')
            } else {

                localStorage.setItem('token', token)
            }
        },

        // removeToken(state,token) {
        //   state.token = null
        //   localStorage.setItem('token', token)    
        // },

        // removeUser(state,user) {
        //   state.user = null
        //   localStorage.setItem('user', user)
        // }
    },



    actions: {
        setUser({ commit }, user) {

            commit('setUser', user)
        },
        setToken({ commit }, token) {
            commit('setToken', token)
        },
        // removeToken ({ commit }, token) {
        //   commit('removeTo', token)
        // },

    },
    modules: {
    }
})
