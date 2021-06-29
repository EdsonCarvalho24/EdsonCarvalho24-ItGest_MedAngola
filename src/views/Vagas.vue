<template>
  <div>
      <Navbarpublico/>
      <h1> VAGAS </h1>
      <Footer/>
  </div>
</template>
<script>
  import Navbarpublico from '../components/Navbarpublico'
  import Footer from '../components/Footer'
  export default {
    name: 'Publico',
    components: {
      Navbarpublico,
      Footer
    },
  }
</script>