<template>
  <div>
    <v-app>
      <v-content>
        <v-container class="fill-height" fluid>
          <v-row align="center" justify="center">
            <v-col cols="12" sm="8" md="8">
              <v-card class="elevation-12">
                <v-window >
                  <v-window-item :value="1">
                    <v-row>
                      <v-col cols="12" md="8">
                        <v-card-text class="mt-12">
                          <h1
                            class="
                              text-center
                              display-2
                              teal--cyan
                              text--cyan text--cyan
                            "
                          >
                            ACESSO RESERVADO
                          </h1>
                          <div class="text-center" mt-4>
                            <v-btn class="mx-2" fab color="cyan" outlined>
                              <v-icon>fab fa-google-plus-g</v-icon>
                            </v-btn>
                            <v-btn class="mx-2" fab color="cyan" outlined>
                              <v-icon>fab fa-linkedin-in</v-icon>
                            </v-btn>
                          </div>
                          <h4 class="text-center mlt-4">
                            Assegura-se que já tens um perfil criado.
                          </h4>
                          <v-form v-on:submit.prevent="validar()">
                            <v-text-field
                              v-model="login.email"
                              label="Email"
                              prepend-icon="email"
                              type="email"
                              color="cyan"
                              :class="{ 'is-invalid': isSubmitted && $v.login.name.$error}"
                            />
                            <div v-if="isSubmitted && !$v.login.name.required" 
                            class="invalid-feedback"> Employee name field is required!
                            </div>
                            <v-text-field
                              v-model="login.senha"
                              label="Password"
                              prepend-icon="lock"
                              type="password"
                              color="cyan"
                              :class="{ 'is-invalid': isSubmitted && $v.login.senha.$error}"
                            />
                            <div v-if="isSubmitted && !$v.login.senha.required" 
                            class="invalid-feedback"> 'Employee senha' field is required!
                            </div>
                          </v-form>
                          <h3 class="text-center mt-3">
                            Esqueceu a sua senha?
                          </h3>
                        </v-card-text>

                        <div class="text-center">
                          <v-btn rounded color="cyan" dark app @click="entrar"
                            >ENTRAR</v-btn
                          >
                        </div>
                        <div>
                          <p></p>
                        </div>
                      </v-col>
                      <v-col cols="12" md="4" class="cyan">
                        <v-card-text class="white--text mt-12">
                          <h1 class="text-center display-1">SEJA BEM VINDO!</h1>
                          <h5 class="text-center">ENTRA NA SUA CONTA!</h5>
                        </v-card-text>
                        <div class="text-center">
                          <v-btn rounded outlined="" dark to="/registro"
                            >REGISTAR-SE</v-btn
                          >
                        </div>
                        <div class="text-center"></div>
                      </v-col>
                    </v-row>
                  </v-window-item>
                </v-window>
              </v-card>
            </v-col>
          </v-row>
        </v-container>
      </v-content>
    </v-app>
  </div>
</template>

<script>
/*import Navbarpublico from '../components/Navbarpublico'*/
import { mapActions, mapGetters } from "vuex";
import { required } from 'vuelidate/lib/validators';

export default {
  props: {
    source: String,
  },

  computed: {
    ...mapGetters(["user", "token"]),
  },

  name: "Publico",
  components: {
    /*Navbarpublico,*/
  },
  data() {
    return {
      login: {
        email: "",
        senha: "",
      },
       isSubmitted: false,
    };
  },
  validations: {
    login:{
      email:{ required },
      senha: { required }

    }

  },
 
  methods: {
    ...mapActions(["setUser", "setToken"]),

    validar(){
      this.isSubmitted = true;
      this.$v.$touch();
      if(this.$v.$invalind){
        return;
      }
    },

    entrar() {
      let data = {
        email: this.login.email,
        senha: this.login.senha,
      };
      console.log(data);

      this.axios
        .post("http://localhost:3000/login/login", data)
        .then((response) => {
          console.log(response);
          if (response.status == 200) {
            this.$swal({
              title: "Dados validos",
              icon: "success",
              showConfirmButton: true,
              allowOutsideClick: false,
              allowEscapekey: false,
            });

            this.setUser(response.user);
            this.setToken(response.token);

            this.$router.push({ name: "candidato" });
          } else
            this.$swal({
              title: "Dados Invalidos",
              icon: "error",
              showConfirmButton: true,
              allowOutsideClick: false,
              allowEscapekey: false,
            });
        });
    },
  },
  created() {},
};
</script>

<style scoped>
.btnentrar {
  margin-inline-end: 2%;
}
</style>