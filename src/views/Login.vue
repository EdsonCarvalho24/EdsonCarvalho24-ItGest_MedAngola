<template>
  <div>
    <!-- <Navbarpublico/> -->
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
                            Assegura-se que já tens um perfl criado.
                          </h4>
                          <v-form>
                            <v-text-field
                              v-model="email"
                              label="Email"
                              prepend-icon="email"
                              type="text"
                              color="cyan"
                            />
                            <v-text-field
                            v-model="email"
                              id="password"
                              label="Password"
                              prepend-icon="lock"
                              type="password"
                              color="cyan"
                            />
                          </v-form>
                          <h3 class="text-center mt-3">
                            Esqueceu a sua senha?
                          </h3>
                        </v-card-text>
                        <div class="text-center mt-3">
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
                          <v-btn rounded outlined="" dark @click="step++"
                            >REGISTAR-SE</v-btn
                          >
                        </div>
                      </v-col>
                    </v-row>
                  </v-window-item>
                  <v-window-item :value="2">
                    <v-row class="fill-height">
                      <v-col cols="12" md="4" class="cyan">
                        <v-card-text class="white--text mt-12">
                          <h1 class="text-center display-1">SEJA BEM VINDO!</h1>
                        </v-card-text>
                        <div class="text-center">
                          <v-btn rounded outlined dark @click="step--"
                            >VOLTAR</v-btn
                          >
                        </div>
                      </v-col>
                      <v-col cols="12" md="8">
                        <v-card-text class="mt-12">
                          <h1
                            class="text-center display-2 tool--text text--cyan"
                          >
                            CRIAR CONTA
                          </h1>
                          <div class="text-center mt-4">
                            <v-btn class="mx-2" fab color="cyan" outlined>
                              <v-icon>fab fa-google-plus-g</v-icon>
                            </v-btn>
                            <v-btn class="mx-2" fab color="cyan" outlined>
                              <v-icon>fab fa-linkedin-in</v-icon>
                            </v-btn>
                          </div>
                          <h4 class="text-center mt-4">INSIRA OS SEUS DADOS</h4>
                          <v-form>
                            <v-text-field
                              v-model="nome"
                              label="Nome"
                              prepend-icon="person"
                              color="cyan"
                            />
                            <v-text-field
                              v-model="email"
                              label="Email"
                              prepend-icon="email"
                              type="email"
                              color="cyan"
                            />
                            <v-text-field
                              v-model="password"
                              label="Password"
                              prepend-icon="lock"
                              type="password"
                              color="cyan"
                            />
                            <v-text-field
                              v-model="telefone"
                              label="Telefone"
                              name="Telefone"
                              prepend-icon="phone"
                              type="text"
                              color="cyan"
                            />
                            <v-text-field
                              v-model="datanascimento"
                              color="cyan"
                              :rules="birthDateRules"
                              type="date"
                              label="Data Nascimento"
                              prepend-icon="event"
                            />
                            <v-select
                              v-model="selectProvincia"
                              :items="provincias"
                              item-value="id"
                              item-text="nome"
                              color="escolaformacao"
                              label="Provincia"
                              prepend-icon="location_on"
                              required
                            >
                            </v-select>

                            <v-select
                              v-model="selectmunicipio"
                              :items="municipio"
                              item-value="id"
                              item-text="nome"
                              color="cyan"
                              label="Municipio"
                              prepend-icon="location_on"
                              required
                            >
                            </v-select>
                            <v-select
                              v-model="selectgenero"
                              :items="genero"
                              item-value="id"
                              item-text="nome"
                              color="cyan"
                              label="Genero"
                              prepend-icon="location_on"
                              required
                            >
                            </v-select>

                            <v-select
                              v-model="selectescolaformacao"
                              :items="escolaformacao"
                              item-value="id"
                              item-text="nome"
                              color="blue accent-3"
                              label="Escola de Formação"
                              prepend-icon="school"
                              required
                            >
                            </v-select>
                            <v-select
                              v-model="selectnivelacademico"
                              :items="nivelacademico"
                              item-value="id"
                              item-text="nome"
                              color="cyan"
                              label="Nivel Academico"
                              prepend-icon="school"
                              required
                            >
                            </v-select>
                            <v-select
                              v-model="selectespecialidade"
                              :items="especialidade"
                              item-value="id"
                              item-text="nome"
                              color="cyan"
                              label="Especialidade"
                              prepend-icon="school"
                              required
                            >
                            </v-select>
                          </v-form>
                        </v-card-text>
                        <div class="text-center mt-n5">
                          <v-btn rounded color="cyan" dark to="/candidato"
                            >REGISTAR-SE</v-btn
                          >
                        </div>
                        <div>
                          <p></p>
                        </div>
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
export default {
  name: "Publico",
  components: {
    /*Navbarpublico,*/
  },
  data() {
    return {
      step: 1,
      selectProvincia: "",
      selectmunicipio: "",
      selectgenero: "",
      birthDate: "",
      birthDateRules: [(v) => !!v || "Data de nascimento é obrigatório"],
    };
  },

  watch: {
    selectProvincia(prov) {
      this.getMunicipios(prov);
    },
  },

  methods: {
    getProvincia() {
      this.axios
        .get("http://localhost:3000/login/provincia")
        .then((response) => {
          this.provincias = response.data.data;
        });
    },
    getMunicipios() {
      this.axios
        .get(`http://localhost:3000/login/municipio/${this.id_provincia}`)
        .then((response) => {
          this.municipio = response.data.data;
        });
    },
    getGenero() {
      this.axios.get("http://localhost:3000/login/genero").then((response) => {
        this.genero = response.data.data;
      });
    },
    getEscoladeformacao() {
      this.axios
        .get("http://localhost:3000/login/escolaformacao")
        .then((response) => {
          this.escolaformacao = response.data.data;
        });
    },
    getnivelacademico() {
      this.axios
        .get("http://localhost:3000/login/nivelacademico")
        .then((response) => {
          this.nivelacademico = response.data.data;
        });
    },
    getespecialidade() {
      this.axios
        .get("http://localhost:3000/login/especialidade")
        .then((response) => {
          this.especialidade = response.data.data;
        });
    },
  },
  created() {
    this.getProvincia();
    this.getGenero();
    this.getEscoladeformacao();
    this.getnivelacademico();
    this.getespecialidade();
  },
  props: {
    source: String,
  },
};
</script>
