<script setup>
const courses = [
  { emoji: '🎨', title: 'Живопись', text: 'Масло, акрил, гуашь — от первого мазка до готовой картины.' },
  { emoji: '✏️', title: 'Академический рисунок', text: 'Композиция, перспектива и светотень — база, на которой стоит всё.' },
  { emoji: '💧', title: 'Акварель', text: 'Лёгкость и воздух: учимся управлять самой капризной краской.' },
  { emoji: '🧒', title: 'Детская студия', text: 'Для детей от 6 лет: рисуем, играем и не боимся чистого листа.' }
]
</script>

<template>
  <div>
    <section class="relative overflow-hidden">
      <div class="pointer-events-none absolute -top-32 -right-32 size-96 rounded-full bg-primary/15 blur-3xl" />
      <div class="pointer-events-none absolute -bottom-40 -left-24 size-80 rounded-full bg-amber-300/20 blur-3xl" />

      <div class="mx-auto grid max-w-5xl items-center gap-10 px-4 py-20 sm:py-28 md:grid-cols-[1.4fr_1fr]">
        <div>
          <p class="mb-4 inline-flex items-center gap-2 rounded-full bg-primary/10 px-3 py-1 text-sm font-medium text-primary">
            ✨ Набор открыт
          </p>
          <h1 class="font-display text-4xl leading-tight font-bold sm:text-5xl">
            Научим рисовать <span class="text-primary">с нуля</span>
          </h1>
          <p class="mt-5 max-w-md text-lg text-muted">
            Школа рисования «Мазок»: небольшие группы, практикующие художники
            и никакой скуки. Приходите на пробное занятие — это бесплатно.
          </p>
          <div class="mt-8 flex flex-wrap gap-3">
            <UButton to="#courses" size="xl" trailing-icon="i-lucide-arrow-down">
              Выбрать направление
            </UButton>
            <UButton to="#trial" size="xl" color="neutral" variant="subtle">
              Пробное занятие
            </UButton>
          </div>
        </div>

        <div class="hidden select-none md:block" aria-hidden="true">
          <div class="animate-float text-center text-[10rem] leading-none">🖌️</div>
          <div class="mt-2 flex justify-center gap-6 text-5xl">
            <span class="transition-transform duration-300 hover:-translate-y-2 hover:rotate-12">🎨</span>
            <span class="transition-transform duration-300 hover:-translate-y-2 hover:-rotate-12">✏️</span>
            <span class="transition-transform duration-300 hover:-translate-y-2 hover:rotate-12">🖼️</span>
          </div>
        </div>
      </div>
    </section>

    <UPageSection id="courses" title="Направления" description="Чему учим в «Мазке»">
      <div class="grid gap-4 sm:grid-cols-2">
        <div
          v-for="course in courses"
          :key="course.title"
          class="group rounded-xl border border-default bg-default/50 p-6 transition-all duration-300 hover:-translate-y-1 hover:border-primary/50 hover:shadow-lg"
        >
          <div class="text-4xl transition-transform duration-300 group-hover:scale-125 group-hover:-rotate-6">
            {{ course.emoji }}
          </div>
          <h3 class="mt-4 text-lg font-bold">
            {{ course.title }}
          </h3>
          <p class="mt-2 text-sm text-muted">
            {{ course.text }}
          </p>
        </div>
      </div>
    </UPageSection>

    <UPageSection>
      <UPageCTA
        id="trial"
        title="🖌️ Первое занятие — бесплатно"
        description="Приходите познакомиться: покажем студию, подберём группу и нарисуем первую работу вместе."
        variant="subtle"
        :links="[{
          label: 'Записаться',
          to: 'mailto:hello@mazok.example',
          trailingIcon: 'i-lucide-arrow-right',
          color: 'neutral'
        }]"
      />
    </UPageSection>
  </div>
</template>
