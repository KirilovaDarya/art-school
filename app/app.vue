<script setup>
useHead({
  meta: [
    { name: 'viewport', content: 'width=device-width, initial-scale=1' }
  ],
  link: [
    { rel: 'icon', href: '/favicon.svg' },
    { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Unbounded:wght@600;700;800&family=Nunito:wght@400;600;700;800&family=Caveat:wght@500;700&display=swap' }
  ],
  htmlAttrs: {
    lang: 'ru'
  }
})

const title = 'Школа рисования AZ.art'
const description = 'AZ.art — школа рисования в центре Екатеринбурга. Рисуй без оглядки: от классики до цифрового искусства, для взрослых и детей с 10 лет.'

useSeoMeta({
  title,
  description,
  ogTitle: title,
  ogDescription: description,
  twitterCard: 'summary'
})

const nav = [
  { label: 'направления', to: '#directions' },
  { label: 'курсы', to: '#courses' },
  { label: 'пробное', to: '#trial' },
  { label: 'абонементы', to: '#plans' }
]
</script>

<template>
  <UApp>
    <header class="sticky top-0 z-50 border-b-2 border-ink/10 bg-paper/90 backdrop-blur-sm">
      <div class="mx-auto flex max-w-6xl items-center justify-between gap-4 px-4 py-3">
        <NuxtLink
          to="/"
          aria-label="AZ.art — школа рисования, на главную"
          class="sticker rd1 s-card flex items-center gap-2 px-3 py-1.5"
          style="--rot: -2deg"
        >
          <LogoAz class="h-7 w-auto text-ink" />
        </NuxtLink>

        <nav class="hidden items-center gap-1 md:flex">
          <NuxtLink
            v-for="(item, i) in nav"
            :key="item.to"
            :to="item.to"
            class="font-hand text-xl font-bold text-ink/80 transition-colors hover:text-fuchsia"
            :style="`--rot: ${i % 2 ? 1.5 : -1.5}deg; transform: rotate(var(--rot))`"
          >
            {{ item.label }}
          </NuxtLink>
        </nav>

        <div class="flex items-center gap-2">
          <NuxtLink
            to="https://t.me/shkola_risovaniya_azart"
            target="_blank"
            class="btn btn-fuchsia rd1 hidden text-sm sm:inline-flex"
          >
            <UIcon
              name="i-simple-icons-telegram"
              class="size-4"
            />
            Записаться
          </NuxtLink>
          <UColorModeButton class="sticker rd5 s-card !size-10" />
        </div>
      </div>
    </header>

    <main>
      <NuxtPage />
    </main>

    <footer class="relative bg-ink text-paper">
      <div class="wave -mt-px text-ink">
        <svg
          viewBox="0 0 1200 60"
          preserveAspectRatio="none"
          aria-hidden="true"
        >
          <path
            fill="currentColor"
            d="M0,32 C150,64 350,0 600,28 C850,56 1050,4 1200,30 L1200,60 L0,60 Z"
          />
        </svg>
      </div>

      <div class="mx-auto max-w-6xl px-4 py-14">
        <div class="flex flex-col gap-10 md:flex-row md:items-start md:justify-between">
          <div class="max-w-sm">
            <LogoAz class="h-9 w-auto text-paper" />
            <p class="mt-4 font-hand text-2xl text-paper/80">
              Рисуй без оглядки!
            </p>
            <p class="mt-2 text-sm text-paper/60">
              Творческое комьюнити в центре Екатеринбурга. © {{ new Date().getFullYear() }}
            </p>
          </div>

          <nav class="flex flex-wrap gap-x-6 gap-y-2 text-sm">
            <NuxtLink
              to="tel:+79935142815"
              class="text-paper/70 transition-colors hover:text-lime"
            >
              +7 (993) 514-28-15
            </NuxtLink>
            <NuxtLink
              to="https://t.me/shkola_risovaniya_azart"
              target="_blank"
              class="text-paper/70 transition-colors hover:text-lime"
            >
              @shkola_risovaniya_azart
            </NuxtLink>
            <NuxtLink
              to="https://vk.ru/shkola_risovaniya_azart"
              target="_blank"
              class="text-paper/70 transition-colors hover:text-lime"
            >
              ВКонтакте
            </NuxtLink>
            <span class="text-paper/70">проспект Ленина 49, Екатеринбург</span>
          </nav>
        </div>
      </div>
    </footer>
  </UApp>
</template>
