<template>
 <div>
      <Navbarpublico/>
      <Footer/>
      <h1>  Sobre nos </h1>
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