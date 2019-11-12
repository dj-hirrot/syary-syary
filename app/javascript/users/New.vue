<template>
  <form @submit.prevent="$emit('submit')">
    <!-- errors -->
    <div v-if="errors.length != 0">
      <ul v-for="e in errors" :key="e">
        <li><font color="red">{{ e }}</font></li>
      </ul>
    </div>
    <!-- errors -->

    <div>
      <label>Name</label>
      <input v-model="user.email" type="text">
    </div>

    <div>
      <label>Password</label>
      <input v-model="user.password" type="password">
    </div>

    <div>
      <label>PasswordConfirmation</label>
      <input v-model="user.password_confirmation" type="password">
    </div>

    <button type="submit">Commit</button>
  </form>
</template>

<script>
export default {
  data() {
    return {
      user: {
        email: '',
        password: '',
        password_confirmation: ''
      },
      errors: ''
    }
  }
}
</script>

<style scoped>
</style>
