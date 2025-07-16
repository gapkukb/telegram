<script setup lang="ts"></script>

<template>
  <van-nav-bar :title="$route.meta.title" left-arrow style="position: sticky" />
  <router-view />
</template>
