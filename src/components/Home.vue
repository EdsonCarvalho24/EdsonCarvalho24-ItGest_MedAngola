<template>
  <v-carousel>
    <v-carousel-item
      v-for="(item, i) in items"
      :key="i"
      :src="item.src"
      reverse-transition="fade-transition"
      transition="fade-transition"
    ></v-carousel-item>
  </v-carousel>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {
          src: "/image5.png",
        },
        {
          src: "/image4.png",
        },
        {
          src: "/image2.png",
        },
        {
          src: "/image3.png",
        },
        
        {
          src: "/image2.png",
        },
      ],
    };
  },
};
</script>