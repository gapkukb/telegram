<script setup lang="ts"></script>

<template>
  <header class="home-header">Home Header</header>
  <main class="home-body">1111111111</main>
  <footer class="home-footer">Home Footer</footer>
</template>

<style lang="stylus">
.page-home{
    &-header, &-footer{
        position sticky
        left 0
        width 100%
        right 0
        height 48px;
        background #000
    }
    &-header{
        top 0;
    }
    &-body{
        height 1000vh;
    }
    &-footer{
        bottom 0;
    }
}
</style>
