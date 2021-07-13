<template>
  <div>
    <v-app>
      <v-content>
        <v-container class="fill-height" fluid>
          <v-row align="center" justify="center">
            <v-col cols="12" sm="8" md="8">
              <v-card class="elevation-12">
                <v-window >
                  <v-window-item :value="2">
                    <v-row class="fill-height">
                      <v-col cols="12" md="4" class="cyan">
                        <v-card-text class="white--text mt-12">
                          <h1 class="text-center display-1">SEJA BEM VINDO!</h1>
                        </v-card-text>
                        <div class="text-center">
                          <v-btn rounded outlined dark to="/login"
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
                              v-model="candidato.nome"
                              label="Nome"
                              prepend-icon="person"
                              color="cyan"
                            />
                            <v-text-field
                              v-model="candidato.email"
                              label="Email"
                              prepend-icon="email"
                              type="email"
                              color="cyan"
                            />
                            <v-text-field
                              v-model="candidato.senha"
                              label="Password"
                              prepend-icon="lock"
                              type="password"
                              color="cyan"
                            />
                            <v-text-field
                              v-model="candidato.telefone"
                              label="Telefone"
                              name="Telefone"
                              prepend-icon="phone"
                              type="text"
                              color="cyan"
                            />
                            <v-text-field
                              v-model="candidato.datanascimento"
                              color="cyan"
                    
                              type="date"
                              label="Data Nascimento"
                              prepend-icon="event"
                            />
                            
                            <v-select
                              v-model="candidato.selectProvincia"
                              :items="provincias"
                              item-value="id_provincia"
                              item-text="nome"
                              color="cyan"
                              label="Provincia"
                              prepend-icon="location_on"
                              required
                              @change="getMunicipios"
                            >
                            </v-select>
                            
                            <v-select
                              v-model="candidato.selectmunicipio"
                              :items="municipios"
                              item-value="id"
                              item-text="nome"
                              color="cyan"
                              label="Municipio"
                              prepend-icon="location_on"
                              required
                            >
                            </v-select>
                            
                            <v-select
                              v-model="candidato.selectgenero"
                              :items="generos"
                              item-value="id"
                              item-text="nome"
                              color="cyan"
                              label="Genero"
                              prepend-icon="location_on"
                              required
                            >
                            </v-select>
                            <v-select
                              v-model="candidato.selectescolaformacao"
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
                              v-model="candidato.selectnivelacademico"
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
                              v-model="candidato.selectespecialidade"
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
      candidato: {
        nome: "",
        email: "",
        senha: "",
        telefone: "",
        selectProvincia: [],
        selectmunicipio: [],
        selectgenero: [],
        selectescolaformacao: [],
        selectnivelacademico: [],
        selectespecialidade: [],
        datanascimento: "",
        //birthDate: null,
        birthDateRules: [(v) => !!v || "Data de nascimento é obrigatório"],
      },
      provincias:[],
      municipios:[],
      generos:[],
      escolaformacao:[],
      nivelacademico:[],
      especialidade:[]
      
    };
  },
  
  methods: {
    getProvincia() {
      this.axios
        .get("http://localhost:3000/registro/provincia")
        .then((response) => {
          this.provincias = response.data.data;
          console.log(this.candidato.selectProvincia)
        });
    },
    getMunicipios(provincia) {
      console.log(provincia)
      console.log(this.candidato.selectProvincia)
      this.axios
        .get(`http://localhost:3000/registro/municipio/${this.candidato.selectProvincia}`)
        .then((response) => {
          this.municipios = response.data.data;
          
        });
    },
    getGenero() {
      this.axios.get("http://localhost:3000/registro/genero")
      .then((response) => {
        this.generos = response.data.data;
        console.log(this.candidato.genero)
      });
    },
    getEscoladeformacao() {
      this.axios
        .get("http://localhost:3000/registro/escolaformacao")
        .then((response) => {
          this.escolaformacao = response.data.data;
        });
    },
    getnivelacademico() {
      this.axios
        .get("http://localhost:3000/registro/nivelacademico")
        .then((response) => {
          this.nivelacademico = response.data.data;
        });
    },
    getespecialidade() {
      this.axios
        .get("http://localhost:3000/registro/especialidade")
        .then((response) => {
            console.log(response.data.data)
          this.especialidade = response.data.data;
          console.log(this.candidato.selectespecialidade)
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