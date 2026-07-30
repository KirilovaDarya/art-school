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
const description = 'AZ.art — школа рисования в центре Екатеринбурга. Рисуй без оглядки: от классики до цифрового искусства, для взрослых и детей с 12 лет.'

useSeoMeta({
  title,
  description,
  ogTitle: title,
  ogDescription: description,
  twitterCard: 'summary'
})

const nav = [
  { label: 'направления', to: '#directions' },
  { label: 'расписание', to: '#schedule' },
  { label: 'курсы', to: '#courses' },
  { label: 'пробное', to: '#trial' },
  { label: 'абонементы', to: '#plans' },
  { label: 'отзывы', to: '#reviews' },
  { label: 'контакты', to: '#contacts' }
]

const menuOpen = ref(false)
const colorMode = useColorMode()
</script>

<template>
  <UApp>
    <header class="sticky top-0 z-50 border-b-2 border-ink/10 bg-paper/90 backdrop-blur-sm">
      <div class="mx-auto flex max-w-6xl items-center justify-between gap-4 px-4 py-3">
        <NuxtLink
          to="/"
          aria-label="AZ.art — школа рисования, на главную"
          class="sticker sheet inline-block overflow-hidden p-1 sm:p-1.5"
          style="--rot: -2deg"
        >
          <img
            src="/logo.jpg"
            alt="AZ.art"
            class="block h-16 w-auto object-cover aspect-[2.3/1] mix-blend-multiply sm:h-12"
          >
        </NuxtLink>

        <nav class="hidden items-center gap-5 lg:flex">
          <NuxtLink
            v-for="(item, i) in nav"
            :key="item.to"
            :to="item.to"
            class="font-hand text-xl font-bold text-ink/80 underline-offset-[6px] transition-all duration-200 hover:-translate-y-0.5 hover:text-fuchsia hover:underline hover:decoration-wavy hover:decoration-2 lg:text-2xl"
            :style="`--rot: ${i % 2 ? 1.5 : -1.5}deg; transform: rotate(var(--rot))`"
          >
            {{ item.label }}
          </NuxtLink>
        </nav>

        <div class="relative flex items-center gap-2">
          <button
            type="button"
            class="sticker rd5 s-card flex size-10 items-center justify-center lg:hidden"
            :aria-label="menuOpen ? 'Закрыть меню' : 'Открыть меню'"
            :aria-expanded="menuOpen"
            @click="menuOpen = !menuOpen"
          >
            <UIcon
              :name="menuOpen ? 'i-lucide-x' : 'i-lucide-menu'"
              class="size-5"
            />
          </button>

          <NuxtLink
            to="https://t.me/azart_ekb"
            target="_blank"
            class="btn btn-fuchsia rd1 hidden text-sm sm:inline-flex"
          >
            <UIcon
              name="i-simple-icons-telegram"
              class="size-4"
            />
            Записаться
          </NuxtLink>
          <button
            type="button"
            class="theme-toggle group sticker rd5 s-card !size-10"
            :aria-label="colorMode.value === 'dark' ? 'Включить светлую тему' : 'Включить тёмную тему'"
            @click="colorMode.preference = colorMode.value === 'dark' ? 'light' : 'dark'"
          >
            <UIcon
              :name="colorMode.value === 'dark' ? 'i-lucide-moon' : 'i-lucide-sun'"
              class="size-5 transition-transform duration-300 group-hover:rotate-45"
            />
          </button>

          <div
            v-if="menuOpen"
            class="rise sticker s-card rd2 absolute right-0 top-full z-50 mt-3 w-60 p-3 lg:hidden"
            style="--rot: 1deg"
          >
            <NuxtLink
              v-for="(item, i) in nav"
              :key="item.to"
              :to="item.to"
              class="block px-3 py-2 font-hand text-2xl font-bold text-ink transition-colors hover:text-fuchsia"
              :style="`--rot: ${i % 2 ? 1 : -1}deg; transform: rotate(var(--rot))`"
              @click="menuOpen = false"
            >
              {{ item.label }}
            </NuxtLink>
            <NuxtLink
              to="https://t.me/azart_ekb"
              target="_blank"
              class="btn btn-fuchsia rd1 mt-2 w-full justify-center text-base"
              @click="menuOpen = false"
            >
              <UIcon
                name="i-simple-icons-telegram"
                class="size-4"
              />
              Записаться
            </NuxtLink>
          </div>
        </div>
      </div>
    </header>

    <main>
      <NuxtPage />
    </main>

    <footer class="relative bg-ink text-paper">
      <div class="mx-auto max-w-6xl px-4 py-14">
        <div class="flex flex-col gap-10 md:flex-row md:items-start md:justify-between">
          <div class="max-w-sm">
            <span
              class="sticker sheet inline-block overflow-hidden p-1.5"
              style="--rot: -2deg"
            >
              <img
                src="/logo.jpg"
                alt="AZ.art"
                class="block h-11 w-auto object-cover aspect-[2.3/1] mix-blend-multiply"
              >
            </span>
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
              to="https://t.me/azart_ekb"
              target="_blank"
              class="text-paper/70 transition-colors hover:text-lime"
            >
              @azart_ekb
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
