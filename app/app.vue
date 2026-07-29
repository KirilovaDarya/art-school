<script setup>
useHead({
  meta: [
    { name: 'viewport', content: 'width=device-width, initial-scale=1' }
  ],
  link: [
    { rel: 'icon', href: '/favicon.svg' },
    { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Unbounded:wght@500;700&family=Golos+Text:wght@400;500;600&display=swap' }
  ],
  htmlAttrs: {
    lang: 'ru'
  }
})

const title = 'Школа рисования «Мазок»'
const description = 'Учим рисовать с нуля: живопись, академический рисунок, акварель и детская студия. Первое занятие — бесплатно.'

useSeoMeta({
  title,
  description,
  ogTitle: title,
  ogDescription: description,
  twitterCard: 'summary'
})
</script>

<template>
  <UApp>
    <UHeader>
      <template #left>
        <NuxtLink to="/" class="flex items-center gap-2 font-display text-base font-bold">
          <span class="text-2xl">🖌️</span>
          <span>Мазок</span>
        </NuxtLink>
      </template>

      <template #right>
        <UColorModeButton />
      </template>
    </UHeader>

    <UMain>
      <NuxtPage />
    </UMain>

    <USeparator icon="🎨" />

    <UFooter>
      <template #left>
        <p class="text-sm text-muted">
          Школа рисования «Мазок» • © {{ new Date().getFullYear() }}
        </p>
      </template>
    </UFooter>
  </UApp>
</template>
