<script setup>
const { data: test } = await useFetch('https://jsonplaceholder.typicode.com/posts')
</script>

<template>
    <NuxtLink to="/">Home</NuxtLink>
    <br>
    <NuxtLink to="/tasks">Tasks</NuxtLink>

    {{ test }}
</template>