<template>
  <v-app>
    <v-content class="ma-4">
      <router-view></router-view>
    </v-content>
  </v-app>
</template>
<script>

import { mapActions, mapGetters } from "vuex";
import axios from 'axios';

export default {
  name: "App",
  components: {},

  data() {
    return {
      loading: false,
    };
  },

  computed: {
    ...mapGetters(["user", "token"]),

    isLoggedIn() {
      if (this.user && this.token) {
        return true;
      }
      return false;
    },
  },

  methods: {
    ...mapActions(["setUser", "setToken"]),

    restoreAuth() {
      this.loading = true;
      axios.get(`http://localhost:3000/login/restore-auth`).then((response) => {
        this.setUser(response.data);
        this.loading = false;
      });
    },

    refresh() {
      if (localStorage && localStorage.token) {
        this.setToken(localStorage.token);
        this.restoreAuth();
      } else {
        this.$router.push("/login").catch(() => {});
      }
    },
  },

  created() {
    this.refresh();
  },
};
</script>