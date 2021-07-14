<template>
 <div>
      <Navbarpublico/>
      <Footer/>
      <h1> O Ministério da Educação como local de pesquisa, é o órgão público do governo
responsável pela elaboração e execução da política nacional da educação (PNE). Esta
instituição tem por objetivo preparar o indivíduo para as exigências da vida política,
económica e social do país, e é constituída por profissionais, instituições escolares
públicas e privadas. </h1>
      <Map/>
      
      
  </div>
</template>

<script>
  import Navbarpublico from '../components/Navbarpublico';
  import Footer from '../components/Footer';
  import Map from '../components/Map';



  export default {
    name: 'Publico',

    components: {
      Navbarpublico,
      Footer,
      Map
    },
  }
</script>