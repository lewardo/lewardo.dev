<script setup>
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <header>
    <nav>
      <RouterLink to="/">home</RouterLink>
      <RouterLink to="/about">about</RouterLink>
      <RouterLink to="/projects">projects</RouterLink>
      <RouterLink to="/contact">contact</RouterLink>
    </nav>
  </header>
  <main>
    <RouterView />
  </main>
</template>

<style scoped lang="scss">

</style>
