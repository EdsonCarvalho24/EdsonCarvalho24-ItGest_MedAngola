<template>
  <div>
    <v-app>
      <v-content>
        <v-container class="fill-height" fluid>
          <v-row align="center" justify="center">
            <v-col cols="12" sm="8" md="8">
              <v-card class="elevation-12">
                <v-window v-model="step">
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
                          <v-form>
                            <v-text-field
                              label="Email"
                              name="Email"
                              prepend-icon="email"
                              type="text"
                              color="cyan"
                            />
                            <v-text-field
                              id="password"
                              label="Password"
                              name="Password"
                              prepend-icon="lock"
                              type="password"
                              color="cyan"
                            />
                          </v-form>
                          <h3 class="text-center mt-3">
                            Esqueceu a sua senha?
                          </h3>
                        </v-card-text>
                        
                        <div class="text-center">
                          <v-btn rounded color="cyan" dark app to="/candidato"
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

<style scoped>
.btnentrar {
  margin-inline-end: 2%;
}
</style>