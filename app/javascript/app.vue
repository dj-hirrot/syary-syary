<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
import Vue from 'vue'
import VueRouter from 'vue-router'

import UserNewPage from 'users/New.vue'

const router = new VueRouter({
  routes: [
    {
      path: '/',
      component: UserNewPage
    }
  ]
})

Vue.use(VueRouter)

export default {
  router
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
