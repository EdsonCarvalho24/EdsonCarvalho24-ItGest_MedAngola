<template>
  <div>
      <Navbarpublico/>
      <h1> VAGAS </h1>
      <Vaga/>
      <Footer/>
  </div>
</template>
<script>
  import Navbarpublico from '../components/Navbarpublico'
  import Footer from '../components/Footer'
  import Vaga from '../components/Vaga'
  export default {
    name: 'Publico',
    components: {
      Navbarpublico,
      Footer,
      Vaga
    },
  }
</script>