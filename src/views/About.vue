<template>
  <div>
    <Navbarpublico />
    <Footer />
    <h1>
      O Ministério da Educação como local de pesquisa, é o órgão público do<br>
      governo responsável pela elaboração e execução da política nacional da<br>
      educação (PNE). Esta instituição tem por objetivo preparar o indivíduo<br>
      para as exigências da vida política, económica e social do país, e é<br>
      constituída por profissionais, instituições escolares públicas e privadas.<br>
    </h1>
    <Map />
  </div>
</template>

<script>
import Navbarpublico from "../components/Navbarpublico";
import Footer from "../components/Footer";
import Map from "../components/Map";

export default {
  name: "Publico",

  components: {
    Navbarpublico,
    Footer,
    Map,
  },
};
</script>