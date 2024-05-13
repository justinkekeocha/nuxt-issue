<script setup>
  const { data: test } = await useFetch('http://127.0.0.1:8000/api/test')
    console.log(test)
</script>

<template>
    <NuxtLink to="/">Home</NuxtLink>
    <br>
    <NuxtLink to="/tasks">Tasks</NuxtLink>

    <template v-if="test">
        {{ test }}
    </template>
</template>