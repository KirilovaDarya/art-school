<script setup>
const phone = '+7 (993) 514-28-15'
const phoneHref = 'tel:+79935142815'
const tgHref = 'https://t.me/azart_ekb'
const vkHref = 'https://vk.ru/shkola_risovaniya_azart'
const mapHref = 'https://clck.ru/3USsL9'
const { app } = useRuntimeConfig()
const schedule = { dates: '27 июля — 2 августа', ver: 'd103dd4e' }
const scheduleHref = `${app.baseURL}raspisanie.pdf?ver=${schedule.ver}`
const yandexHref = 'https://yandex.ru/maps/org/azart/56240254129/reviews/?add-review=true'
const dgisHref = 'https://2gis.ru/ekaterinburg/search/azart/firm/70000001089436167/60.614748%2C56.839963/tab/reviews'
const address = 'проспект Ленина 49, Екатеринбург'
const hours = '360 дней в году · 10:00–21:00'

const features = [
  { t: 'Мастерская с характером', d: 'Свет, зелень и чай — как дома, только с мольбертами.', c: 's-sun', rot: '-2deg', rd: 'rd1' },
  { t: 'От классики до цифры', d: 'Меняй направление под настроение — без потери прогресса.', c: 's-sky', rot: '1.5deg', rd: 'rd2' },
  { t: 'Под тебя, а не под шаблон', d: 'Подстраиваем обучение под твой темп и восприятие — персонально.', c: 's-lavender', rot: '-1deg', rd: 'rd4' },
  { t: 'Тарифы под твой ритм', d: 'Плати только за тот объём, который реально осваиваешь.', c: 's-lime', rot: '2deg', rd: 'rd1' },
  { t: 'Взрослым и будущим студентам', d: 'Готовим портфолио к поступлению и учим для души; детей берём по записи с 12 лет — усидчивых ребят.', c: 's-fuchsia', rot: '-1.5deg', rd: 'rd2' },
  { t: 'Тёплая компания без оценок', d: 'Здесь понимают и поддерживают — приходи со своим настроением.', c: 's-card', rot: '1deg', rd: 'rd4' }
]

const directions = [
  { emoji: '✏️', t: 'Академический рисунок', d: 'Композиция, перспектива и светотень — фундамент всего.', span: 'lg:col-span-7', c: 's-sky', rot: '-1.5deg' },
  { emoji: '🎨', t: 'Живопись', d: 'Масло, гуашь и акварель — пишем цветом и настроением.', span: 'lg:col-span-5', c: 's-sun', rot: '2deg' },
  { emoji: '💻', t: 'Цифровое искусство', d: 'Планшет, слои и кисти — современный рабочий процесс.', span: 'lg:col-span-4', c: 's-lavender', rot: '-1deg' },
  { emoji: '🖌️', t: 'Акрил', d: 'Яркий укрывистый материал для смелых мазков и фактур.', span: 'lg:col-span-8', c: 's-lime', rot: '1deg' },
  { emoji: '🌿', t: 'Пленэры', d: 'Выходим на воздух ловить свет, погоду и живой мотив.', span: 'lg:col-span-6', c: 's-sky', rot: '1deg' },
  { emoji: '🎓', t: 'Взрослым и абитуриентам', d: 'Портфолио для поступления и занятия для души; детей берём по записи с 12 лет — усидчивых ребят.', span: 'lg:col-span-6', c: 's-sun', rot: '-1.5deg' }
]

const events = {
  emoji: '🎉',
  t: 'Творческие мероприятия',
  d: 'Арт-вечера, тематические мастер-классы и события — творим в компании, без оценок. Следи за афишей!'
}

const basics = {
  badge: 'для тех, кто совсем с нуля',
  t: 'Аzбука художника',
  d: 'Базовый курс-фундамент. Собираем все основы в одну систему, чтобы потом уверенно идти в любую технику — от пастели до цифры.',
  modules: ['Основы рисунка', 'Колористика', 'Перспектива', 'Натюрморт', 'Драпировка']
}

const courses = [
  { emoji: '✏️', t: 'Академический рисунок', note: 'Постановка руки, форма и тон.' },
  { emoji: '🎨', t: 'Живопись', note: 'Масло, гуашь и акварель.' },
  { emoji: '🕯️', t: 'Голландская живопись', note: 'Тёплый свет, натюрморт и глубокие тени.' },
  { emoji: '🌻', t: 'Постимпрессионизм', note: 'Цвет, мазок и настроение по следам великих.' },
  { emoji: '💻', t: 'Цифровое искусство', note: 'Планшет и слои.' },
  { emoji: '🧑', t: 'Основы портрета', note: 'Пропорции, построение и характер лица.' },
  { emoji: '🎭', t: 'Портрет маслом', note: 'Объём, кожа и живой взгляд кистью.' },
  { emoji: '👗', t: 'Fashion-иллюстрация', note: 'Силуэт, поза и стиль в рисунке.' },
  { emoji: '🌿', t: 'Пленэры', note: 'Рисуем на воздухе.' }
]

const steps = [
  { n: '1', t: 'Запишись на пробное', d: 'Одно бесплатное занятие — в Telegram или по телефону, без предоплат.', c: 's-sun', rot: '-2deg' },
  { n: '2', t: 'Познакомимся со школой', d: 'Покажем мастерскую, нальём чай, познакомим с преподавателями и расскажем про абонементы.', c: 's-sky', rot: '1.5deg' },
  { n: '3', t: 'Выбери свой ритм', d: 'После пробного решаешь сам: абонемент, отдельный курс или «Аzбука».', c: 's-lime', rot: '-1deg' }
]

const plans = [
  { tag: 'Лайт', emoji: '🌱', d: 'Для неспешного ритма и мягкого входа в практику.', perks: ['Свободный график занятий', 'Одна техника на выбор', 'Мольберты и материалы в студии'], c: 's-card', rot: '-1.5deg', accent: false },
  { tag: 'Стандарт', emoji: '🔥', d: 'Регулярная практика и заметный рост из месяца в месяц.', perks: ['Стабильное расписание и прогресс', 'Все направления без потери роста', 'Участие в творческих мероприятиях', 'Разбор твоих работ'], c: 's-fuchsia', rot: '0deg', accent: true },
  { tag: 'Премиум', emoji: '👑', d: 'Максимум погружения и внимания для быстрого результата.', perks: ['Приоритетное расписание', 'Все техники и пленэры', 'Персональные рекомендации', 'Закрытые события комьюнити'], c: 's-card', rot: '1.5deg', accent: false }
]

const oneOffs = [
  { n: '1', label: 'занятие', term: 'неделя на посещение', c: 's-sky', rd: 'rd1', rot: '-2deg' },
  { n: '4', label: 'занятия', term: '1 месяц', c: 's-sun', rd: 'rd2', rot: '1.5deg' },
  { n: '8', label: 'занятий', term: '1 месяц', c: 's-lime', rd: 'rd1', rot: '-1deg' },
  { n: '∞', label: 'безлимит', term: '1 месяц · без ограничений по посещениям', c: 's-fuchsia', rd: 'rd2', rot: '2deg' }
]

const reviews = [
  { t: 'Это уютное место, в котором хочется творить. Я не рисовала с детства, но что-то стало получаться. Мне очень понравилась атмосфера и настроение, которое создавалось с каждым мазком кисти.', n: 'Наталья Ж., пробное занятие' },
  { t: 'В AZ.art я пришла по рекламному объявлению и… пропала на год. Это не просто школа — это место, куда хочется приходить, общаться, заниматься творчеством. Здесь прекрасно чувствуют себя и дети, и взрослые, здесь прекрасные преподаватели, увлечённые своим делом.', n: 'Ильсия Злоказова, живопись' },
  { t: 'Преподаватели очень внимательные — к каждому находят свой подход, всё подробно объясняют и мотивируют продолжать, даже когда что-то не получается. В школе уютно: много света, музыка, все материалы выдают на месте.', n: 'Дарья Эд, курс 9 месяцев' }
]

const socials = [
  { label: 'Telegram', handle: '@azart_ekb', href: tgHref, icon: 'i-simple-icons-telegram', c: 's-sky' },
  { label: 'ВКонтакте', handle: 'vk.ru/shkola_risovaniya_azart', href: vkHref, icon: 'i-simple-icons-vk', c: 's-lavender' },
  { label: 'MAX', handle: 'max.ru', href: null, icon: 'i-lucide-message-circle', c: 's-sun' },
  { label: '2ГИС', handle: '★ 4.9 · 284 отзыва', href: dgisHref, icon: 'i-lucide-map-pinned', c: 's-fuchsia' },
  { label: 'Отзывы', handle: 'Яндекс · пл. 1905 года', href: yandexHref, icon: 'i-lucide-star', c: 's-lime' }
]

const marquee = ['Рисуй без оглядки', 'AZ.art', 'Екатеринбург', 'проспект Ленина 49', '360 дней в году', 'с 10 до 21', 'живопись', 'пленэры']

const faqs = [
  { q: 'Я совсем не умею рисовать. Мне к вам можно?', a: 'Конечно! Большинство взрослых приходит с чистого листа — и это абсолютно нормально. Мы начинаем с основ и идём в твоём темпе, без сравнений и оценок.' },
  { q: 'Что брать с собой на занятие?', a: 'Ничего особенного — мольберты, краски, пастель и бумага уже ждут в студии. Приходи просто с желанием рисовать и настроением.' },
  { q: 'Я хочу поступать на худграфика. Поможете?', a: 'Да, это одна из наших сильных сторон: ставим руку, собираем портфолио и готовим к экзаменам. При этом у нас учатся и просто «для души» — атмосфера одна и та же, тёплая.' },
  { q: 'Берёте ли детей?', a: 'Да, по записи с 12 лет. Нам важно, чтобы ребёнок был усидчив — тогда занятие идёт в радость и ему, и всей группе. Приходите на пробное: познакомимся и посмотрим, комфортно ли вам у нас.' },
  { q: 'Сколько длится занятие и как часто ходить?', a: 'Занятие длится 1 час 45 минут — ровно столько, чтобы войти в поток и не устать. Частоту выбираешь сам — под неё и подбираем абонемент на пробном.' },
  { q: 'А если захочу поменять направление?', a: 'Легко, в любой момент и без потери прогресса. Сегодня пастель, завтра портрет маслом или пленэр — мы подстроимся под настроение.' },
  { q: 'Как оплатить и правда ли пробное бесплатное?', a: 'Да, первое занятие бесплатное и ни к чему не обязывает. Абонемент и стоимость обсудим там же — спокойно, за чашкой чая и без давления.' }
]

const teamPerks = [
  { icon: 'i-lucide-palette', t: 'Мастерская в центре', d: 'Свет, мольберты и материалы — всё готово для твоих занятий.', c: 's-sky' },
  { icon: 'i-lucide-calendar', t: 'Гибкий график', d: 'Собирай свои группы и часы так, как удобно именно тебе.', c: 's-sun' },
  { icon: 'i-lucide-users', t: 'Живое комьюнити', d: 'Художники, которые горят делом и поддерживают друг друга.', c: 's-lavender' },
  { icon: 'i-lucide-graduation-cap', t: 'Рост и обмен опытом', d: 'Методика, разборы и обучение — расти вместе с нами.', c: 's-lime' }
]

const openFaq = ref(null)
const toggleFaq = (i) => {
  openFaq.value = openFaq.value === i ? null : i
}

const dirScroll = ref(null)
const dirActive = ref(0)
const courseScroll = ref(null)
const courseActive = ref(0)
const planScroll = ref(null)
const planActive = ref(0)

const readActive = (scroller, active) => {
  const c = scroller.value
  if (!c) return
  const center = c.scrollLeft + c.clientWidth / 2
  let best = 0
  let bestDist = Infinity
  Array.from(c.children).forEach((child, i) => {
    const d = Math.abs(child.offsetLeft + child.clientWidth / 2 - center)
    if (d < bestDist) {
      bestDist = d
      best = i
    }
  })
  active.value = best
}

const slideTo = (scroller, i) => {
  const c = scroller.value
  const child = c?.children[i]
  if (!c || !child) return
  c.scrollTo({ left: child.offsetLeft - (c.clientWidth - child.clientWidth) / 2, behavior: 'smooth' })
}

const enableDrag = (scroller, active) => {
  const el = scroller.value
  if (!el) return
  let down = false
  let moved = false
  let startX = 0
  let startLeft = 0
  el.addEventListener('mousedown', (e) => {
    down = true
    moved = false
    startX = e.clientX
    startLeft = el.scrollLeft
    el.classList.add('is-dragging')
  })
  window.addEventListener('mousemove', (e) => {
    if (!down) return
    const dx = e.clientX - startX
    if (Math.abs(dx) > 5) moved = true
    el.scrollLeft = startLeft - dx
  })
  window.addEventListener('mouseup', () => {
    if (!down) return
    down = false
    el.classList.remove('is-dragging')
    readActive(scroller, active)
    slideTo(scroller, active.value)
  })
  el.addEventListener('click', (e) => {
    if (moved) {
      e.preventDefault()
      e.stopPropagation()
    }
  }, true)
}

onMounted(() => {
  enableDrag(dirScroll, dirActive)
  enableDrag(courseScroll, courseActive)
  enableDrag(planScroll, planActive)
})
</script>

<template>
  <div>
    <svg
      class="pointer-events-none absolute h-0 w-0"
      aria-hidden="true"
    >
      <filter id="rough-marker">
        <feTurbulence
          type="fractalNoise"
          baseFrequency="0.018 0.026"
          numOctaves="3"
          seed="7"
          result="noise"
        />
        <feDisplacementMap
          in="SourceGraphic"
          in2="noise"
          scale="6"
          xChannelSelector="R"
          yChannelSelector="G"
        />
      </filter>
    </svg>

    <section class="paper-tex relative overflow-hidden bg-paper">
      <div class="relative z-10 mx-auto grid max-w-6xl items-center gap-12 px-4 pt-16 pb-24 sm:pt-24 lg:grid-cols-12">
        <div class="lg:col-span-7">
          <span
            class="rise sticker rd1 s-lime inline-flex items-center gap-2 px-4 py-2 text-sm font-extrabold"
            style="--rot: -2deg"
          >
            <span class="relative flex size-2">
              <span class="absolute inline-flex size-full animate-ping rounded-full bg-ink opacity-60" />
              <span class="relative inline-flex size-2 rounded-full bg-ink" />
            </span>
            Екатеринбург · проспект Ленина 49
          </span>

          <h1
            class="rise mt-7 puffy text-7xl sm:text-8xl xl:text-9xl"
            style="animation-delay: 0.08s"
          >
            Рисуй
          </h1>
          <h1
            class="rise chalk-hand mt-2 text-fuchsia text-7xl lg:text-8xl xl:text-9xl"
            style="animation-delay: 0.16s"
          >
            без оглядки!
          </h1>

          <p
            class="rise mt-7 max-w-xl text-xl font-extrabold text-inksoft sm:text-2xl"
            style="animation-delay: 0.24s"
          >
            AZ.art — творческое комьюнити, где каждый взрослый открывает в себе
            художника в тёплой, домашней атмосфере: среди растений, понимания и
            <span class="marker-lime font-bold text-ink">без оценок</span>.
          </p>

          <div
            class="rise mt-9 flex flex-wrap gap-4"
            style="animation-delay: 0.32s"
          >
            <NuxtLink
              :to="tgHref"
              target="_blank"
              class="btn btn-fuchsia rd1"
            >
              <UIcon
                name="i-simple-icons-telegram"
                class="size-5"
              />
              Написать в Telegram
            </NuxtLink>
            <NuxtLink
              :to="phoneHref"
              class="btn btn-card rd2"
            >
              <UIcon
                name="i-lucide-phone"
                class="size-5"
              />
              {{ phone }}
            </NuxtLink>
          </div>
        </div>

        <div
          class="relative hidden h-[30rem] lg:col-span-5 lg:block"
          aria-hidden="true"
        >
          <img
            src="/chair-sticker.png?v=2"
            alt=""
            class="sticker-shadow pointer-events-none absolute -right-4 bottom-0 h-[28rem] w-auto select-none"
            style="--rot: 3deg"
          >
          <div
            class="sheet marker-frame absolute top-4 -left-8 w-40 animate-float-b p-2 shadow-[5px_7px_0_var(--sticker-shadow)]"
            style="--rot: 6deg"
          >
            <div class="aspect-[4/5] w-full overflow-hidden rounded-[3px]">
              <img
                src="/pastel.jpg?v=2"
                alt="Пастельный этюд: синие цветы на оранжевом фоне"
                class="h-full w-full scale-[1.18] object-cover"
              >
            </div>
          </div>
          <span
            class="sticker-text absolute top-60 -right-8 max-w-[9rem] text-right text-4xl animate-float-d"
            style="--rot: -7deg"
          >здесь не ставят оценок ✨</span>
          <div
            class="sheet marker-frame absolute bottom-0 left-2 w-44 animate-float-c p-2 shadow-[5px_7px_0_var(--sticker-shadow)]"
            style="--rot: 4deg"
          >
            <img
              src="/plein-air.jpg"
              alt="Набросок садовых ворот в зелени — пленэр"
              class="aspect-square w-full rounded-[3px] object-cover"
            >
          </div>
        </div>
      </div>
    </section>

    <div
      class="marquee-track relative z-10 -my-3 overflow-hidden border-y-2 border-ink bg-ink py-3"
      style="transform: rotate(-1.2deg)"
    >
      <div class="flex w-max animate-marquee">
        <div
          v-for="group in 2"
          :key="group"
          class="flex shrink-0 items-center"
        >
          <span
            v-for="(item, i) in marquee"
            :key="i"
            class="flex items-center font-display text-sm font-bold tracking-[0.18em] text-paper uppercase"
          >
            <span class="px-6">{{ item }}</span>
            <span class="text-lime">✦</span>
          </span>
        </div>
      </div>
    </div>

    <section class="relative bg-paper2 py-24 sm:py-28">
      <AzTear color="paper" />

      <div class="relative mx-auto max-w-6xl px-4">
        <div class="mb-12 text-center">
          <p class="font-hand text-3xl text-fuchsia">
            почему именно мы?
          </p>
          <h2 class="mt-1 puffy text-3xl sm:text-6xl">
            Место, где можно <span class="marker-lime">выдохнуть</span>
          </h2>
        </div>

        <div class="grid gap-8 sm:grid-cols-2 lg:grid-cols-3">
          <div
            v-for="(f, i) in features"
            :key="f.t"
            class="torn-wrap pt-3"
            :style="`--rot: ${f.rot}`"
          >
            <span class="masking-tape" />
            <div
              class="reveal torn-card p-7"
              :class="[f.c, ['torn-a', 'torn-b', 'torn-c'][i % 3]]"
            >
              <div class="relative z-10">
                <span class="font-hand text-4xl opacity-70">{{ String(i + 1).padStart(2, '0') }}</span>
                <h3 class="mt-1 font-display text-xl font-bold">
                  {{ f.t }}
                </h3>
                <p class="mt-2 font-semibold opacity-90">
                  {{ f.d }}
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section
      id="directions"
      class="relative bg-paper py-24 sm:py-28"
    >
      <AzTear color="paper2" />

      <div
        aria-hidden="true"
        class="pointer-events-none absolute top-28 right-2 z-0 hidden lg:block"
      >
        <div
          class="sticker s-card rd2 tape p-2"
          style="--rot: 5deg"
        >
          <img
            src="/blue-face.jpg"
            alt=""
            class="block aspect-[3/4] w-72 rounded-[3px] object-cover"
          >
        </div>
      </div>
      <div
        aria-hidden="true"
        class="pointer-events-none absolute top-20 -left-8 z-0 hidden xl:block"
      >
        <img
          src="/sunflower-sticker.png"
          alt=""
          class="sticker-shadow h-44 w-auto animate-float select-none"
          style="--rot: -8deg"
        >
      </div>
      <div
        aria-hidden="true"
        class="pointer-events-none absolute bottom-12 -left-2 z-0 hidden xl:block"
      >
        <div
          class="sticker s-card rd1 tape p-2"
          style="--rot: -4deg"
        >
          <img
            src="/directions-art.png"
            alt=""
            class="block aspect-[3/4] w-64 rounded-[3px] object-cover"
          >
        </div>
      </div>
      <div
        aria-hidden="true"
        class="pointer-events-none absolute right-0 bottom-6 z-0 hidden xl:block"
      >
        <img
          src="/lamp-sticker.png"
          alt=""
          class="sticker-shadow h-80 w-auto animate-float select-none"
          style="--rot: -4deg"
        >
      </div>

      <div class="relative mx-auto max-w-6xl px-4">
        <div class="mb-12 flex flex-wrap items-end justify-between gap-4">
          <h2 class="puffy text-3xl sm:text-6xl">
            Направления
          </h2>
          <p class="max-w-sm font-hand text-2xl text-inksoft">
            выбирай под настроение и меняй путь <span class="marker-sky font-bold text-ink">без потери прогресса</span> ✏️
          </p>
        </div>

        <div
          ref="dirScroll"
          class="no-scrollbar relative -mx-4 flex cursor-grab snap-x snap-mandatory gap-6 overflow-x-auto px-4 pb-2 lg:mx-0 lg:grid lg:cursor-default lg:grid-cols-12 lg:overflow-visible lg:px-0"
          @scroll="readActive(dirScroll, dirActive)"
        >
          <article
            v-for="d in directions"
            :key="d.t"
            class="reveal sticker group w-[85%] shrink-0 snap-center p-7 sm:w-[55%] lg:w-auto"
            :class="[d.c, d.span]"
            :style="`--rot: ${d.rot}`"
          >
            <div class="text-4xl transition-transform duration-300 group-hover:-rotate-3 group-hover:scale-105 sm:text-5xl">
              {{ d.emoji }}
            </div>
            <h3 class="mt-4 font-display text-xl font-bold break-words sm:text-2xl">
              {{ d.t }}
            </h3>
            <p class="mt-2 max-w-md font-semibold opacity-90">
              {{ d.d }}
            </p>
          </article>
        </div>
        <div class="mt-6 flex justify-center gap-2 lg:hidden">
          <button
            v-for="(d, i) in directions"
            :key="d.t"
            type="button"
            class="h-2.5 rounded-full transition-all duration-300"
            :class="dirActive === i ? 'w-7 bg-fuchsia' : 'w-2.5 bg-ink/25 hover:bg-ink/50'"
            :aria-label="`Направление ${i + 1}`"
            @click="slideTo(dirScroll, i)"
          />
        </div>

        <div
          class="reveal sticker s-fuchsia tape mt-6 flex flex-col gap-5 p-8 sm:flex-row sm:items-center sm:justify-between"
          style="--rot: -0.6deg"
        >
          <div class="flex flex-col items-start gap-3 sm:flex-row sm:items-center sm:gap-4">
            <span class="text-5xl group-hover-wiggle">{{ events.emoji }}</span>
            <div>
              <h3 class="font-display text-2xl font-bold sm:text-3xl">
                {{ events.t }}
              </h3>
              <p class="mt-1 max-w-xl font-semibold text-white/90">
                {{ events.d }}
              </p>
            </div>
          </div>
          <NuxtLink
            :to="tgHref"
            target="_blank"
            class="btn btn-card rd1 shrink-0"
          >
            Узнать о ближайших
            <UIcon
              name="i-lucide-arrow-right"
              class="size-4"
            />
          </NuxtLink>
        </div>
      </div>
    </section>

    <section
      id="schedule"
      class="relative overflow-hidden bg-paper2 py-24 sm:py-28"
    >
      <AzTear color="paper" />

      <div
        aria-hidden="true"
        class="pointer-events-none absolute top-14 right-6 z-0 hidden text-6xl animate-float lg:block"
        style="--rot: 8deg"
      >
        🗓️
      </div>
      <div
        aria-hidden="true"
        class="pointer-events-none absolute bottom-10 -left-4 z-0 hidden text-5xl animate-float-d xl:block"
        style="--rot: -10deg"
      >
        ✏️
      </div>

      <div class="relative mx-auto max-w-6xl px-4">
        <div class="mb-10 flex flex-wrap items-end justify-between gap-6">
          <div>
            <p class="font-hand text-3xl text-fuchsia">
              темы занятий на неделю
            </p>
            <h2 class="mt-1 puffy text-3xl sm:text-6xl">
              Расписание
            </h2>
            <p class="mt-4 max-w-md text-lg font-semibold text-inksoft">
              Что рисуем на этой неделе в «Доме печати» — проспект Ленина 49.
              Запись заранее — мест в мастерской немного.
            </p>
          </div>
          <span
            class="sticker rd5 s-sun px-6 py-4 text-center font-hand text-2xl leading-tight font-bold whitespace-nowrap"
            style="--rot: -4deg"
          >
            {{ schedule.dates }}
          </span>
        </div>

        <details
          open
          class="reveal sticker s-card tape group p-4 sm:p-6"
          style="--rot: -0.4deg"
        >
          <summary class="flex cursor-pointer list-none items-center justify-between gap-4 px-2 py-1 select-none [&::-webkit-details-marker]:hidden">
            <span class="flex items-center gap-3 font-display text-base font-bold sm:text-2xl">
              <span class="text-3xl group-hover-wiggle">📄</span>
              Темы занятий · Дом печати · {{ schedule.dates }}
            </span>
            <span class="flex shrink-0 items-center gap-2 font-hand text-2xl text-fuchsia">
              <span class="hidden sm:inline">
                <span class="group-open:hidden">показать</span>
                <span class="hidden group-open:inline">скрыть</span>
              </span>
              <UIcon
                name="i-lucide-chevron-down"
                class="size-6 transition-transform duration-300 group-open:rotate-180"
              />
            </span>
          </summary>
          <div class="mt-4 overflow-hidden rounded-[8px] border-2 border-ink/10">
            <iframe
              :src="scheduleHref"
              title="Расписание тем занятий — Дом печати"
              class="h-[70vh] min-h-[24rem] w-full bg-paper"
              loading="lazy"
            />
          </div>
        </details>

        <div class="mt-8 flex flex-wrap items-center gap-4">
          <a
            :href="scheduleHref"
            download
            class="btn btn-fuchsia rd1"
          >
            <UIcon
              name="i-lucide-download"
              class="size-5"
            />
            Скачать PDF
          </a>
          <a
            :href="scheduleHref"
            target="_blank"
            class="btn btn-ink rd2"
          >
            <UIcon
              name="i-lucide-external-link"
              class="size-5"
            />
            Открыть в новой вкладке
          </a>
          <span class="font-hand text-2xl text-inksoft">
            запись — в Telegram или по телефону ↓
          </span>
        </div>
      </div>
    </section>

    <div class="relative bg-paper py-14 text-center">
      <AzTear color="paper2" />
      <p class="font-hand text-2xl text-inksoft">
        листай дальше ↓
      </p>
      <h2 class="puffy outline-text mt-5 text-4xl sm:mt-1 sm:text-8xl">
        выбери своё
      </h2>
    </div>

    <section
      id="courses"
      class="relative bg-paper2 py-24 sm:py-28"
    >
      <AzTear color="paper" />

      <div class="relative mx-auto max-w-6xl px-4">
        <div
          class="reveal sticker s-card tape tape-wide relative p-8 sm:p-12"
          style="--rot: -0.5deg"
        >
          <span
            class="sticker rd5 s-lime absolute -top-4 right-8 px-4 py-2 font-hand text-xl font-bold"
            style="--rot: 6deg"
          >{{ basics.badge }}</span>
          <div class="grid gap-8 lg:grid-cols-[1fr_1.2fr_auto] lg:items-center">
            <div>
              <p class="font-hand text-3xl text-fuchsia">
                базовый курс
              </p>
              <h2 class="mt-1 puffy text-3xl sm:text-6xl">
                {{ basics.t }}
              </h2>
              <p class="mt-4 max-w-md text-lg font-semibold text-inksoft">
                {{ basics.d }}
              </p>
              <NuxtLink
                :to="tgHref"
                target="_blank"
                class="btn btn-ink rd1 mt-6"
              >
                Начать с основ
                <UIcon
                  name="i-lucide-arrow-right"
                  class="size-4"
                />
              </NuxtLink>
            </div>
            <div class="flex flex-wrap gap-3">
              <span
                v-for="(m, i) in basics.modules"
                :key="m"
                class="sticker px-5 py-3 font-display text-base font-bold"
                :class="[i % 2 ? 's-sun rd2' : 's-sky rd1']"
                :style="`--rot: ${i % 2 ? 2 : -2}deg`"
              >
                {{ m }}
              </span>
            </div>
            <div class="hidden justify-self-center lg:block">
              <div
                class="sticker sheet marker-frame w-36 p-2 xl:w-44"
                style="--rot: 4deg"
              >
                <img
                  src="/azbuka-sticker.png?v=2"
                  alt="Работа ученицы курса «Аzбука художника»"
                  class="aspect-[3/4] w-full rounded-[3px] object-cover"
                >
              </div>
            </div>
          </div>
        </div>

        <div class="mt-16 flex flex-wrap items-end justify-between gap-4">
          <h3 class="puffy text-3xl sm:text-6xl">
            Курсы по направлениям
          </h3>
          <p class="max-w-sm font-hand text-2xl text-inksoft">
            хочешь пройти одно направление отдельно? легко 🎯
          </p>
        </div>

        <div
          ref="courseScroll"
          class="no-scrollbar relative -mx-4 mt-8 flex cursor-grab snap-x snap-mandatory gap-6 overflow-x-auto px-4 pb-2 sm:mx-0 sm:grid sm:cursor-default sm:grid-cols-2 sm:overflow-visible sm:px-0 lg:grid-cols-3"
          @scroll="readActive(courseScroll, courseActive)"
        >
          <article
            v-for="(c, i) in courses"
            :key="c.t"
            class="reveal sticker s-card flex w-[92%] shrink-0 snap-center flex-col p-7 sm:w-auto"
            :class="i % 2 ? 'rd2' : 'rd1'"
            :style="`--rot: ${i % 3 === 0 ? -1 : i % 3 === 1 ? 1.5 : -0.5}deg`"
          >
            <div class="text-4xl">
              {{ c.emoji }}
            </div>
            <h4 class="mt-3 font-display text-base font-bold break-words sm:text-xl">
              {{ c.t }}
            </h4>
            <p class="mt-1 font-semibold text-inksoft">
              {{ c.note }}
            </p>
            <div class="mt-auto flex items-center justify-between pt-6">
              <span class="font-hand text-2xl text-fuchsia">по запросу</span>
              <NuxtLink
                :to="tgHref"
                target="_blank"
                class="btn btn-fuchsia rd1 !px-4 !py-2 text-sm"
              >
                Подробнее
              </NuxtLink>
            </div>
          </article>
        </div>
        <div class="mt-6 flex justify-center gap-2 sm:hidden">
          <button
            v-for="(c, i) in courses"
            :key="c.t"
            type="button"
            class="h-2.5 rounded-full transition-all duration-300"
            :class="courseActive === i ? 'w-7 bg-fuchsia' : 'w-2.5 bg-ink/25 hover:bg-ink/50'"
            :aria-label="`Курс ${i + 1}`"
            @click="slideTo(courseScroll, i)"
          />
        </div>
      </div>
    </section>

    <section
      id="trial"
      class="relative bg-paper py-24 sm:py-28"
    >
      <AzTear color="paper2" />

      <div class="relative mx-auto max-w-6xl px-4">
        <div class="mb-10 max-w-2xl">
          <p class="font-hand text-3xl text-fuchsia">
            как это устроено
          </p>
          <h2 class="mt-1 puffy text-3xl sm:text-6xl">
            Сначала знакомство,<br>потом — решение
          </h2>
        </div>

        <div
          class="reveal sticker s-sun mb-14 flex items-start gap-4 p-6"
          style="--rot: -0.8deg"
        >
          <UIcon
            name="i-lucide-coffee"
            class="mt-1 size-7 shrink-0"
          />
          <p class="text-lg font-bold">
            Пробное занятие бесплатное и ни к чему не обязывает. Никаких предоплат
            и «только сегодня» — просто час творчества, чашка чая и честный разговор.
          </p>
        </div>

        <div class="relative grid gap-8 md:grid-cols-3">
          <div class="absolute top-10 right-12 left-12 hidden border-t-4 border-dashed border-ink/25 md:block" />
          <div
            v-for="s in steps"
            :key="s.n"
            class="reveal sticker relative p-7"
            :class="[s.c, s.n === '2' ? 'rd2' : 'rd1']"
            :style="`--rot: ${s.rot}`"
          >
            <span class="sticker rd5 s-ink flex size-14 items-center justify-center font-display text-2xl font-bold">{{ s.n }}</span>
            <h3 class="mt-4 font-display text-xl font-bold">
              {{ s.t }}
            </h3>
            <p class="mt-2 font-semibold opacity-90">
              {{ s.d }}
            </p>
          </div>
        </div>
      </div>
    </section>

    <section
      id="plans"
      class="relative bg-paper2 py-24 sm:py-28"
    >
      <AzTear color="paper" />

      <div
        aria-hidden="true"
        class="pointer-events-none absolute bottom-10 -left-4 z-0 hidden xl:block"
      >
        <div
          class="sticker s-card rd1 tape p-2"
          style="--rot: -5deg"
        >
          <img
            src="/directions-art.png"
            alt=""
            class="block aspect-[3/4] w-40 rounded-[3px] object-cover"
          >
        </div>
      </div>

      <div class="relative mx-auto max-w-6xl px-4">
        <div class="mb-12 flex flex-wrap items-end justify-between gap-4">
          <div>
            <p class="font-hand text-3xl text-fuchsia">
              абонементы
            </p>
            <h2 class="mt-1 puffy text-3xl sm:text-6xl">
              Выбери <span class="marker-sun">свой ритм</span>
            </h2>
          </div>
          <p class="max-w-sm font-hand text-2xl text-inksoft">
            точную стоимость обсудим на пробном — подберём то, что подойдёт именно тебе 💛
          </p>
        </div>

        <div
          ref="planScroll"
          class="no-scrollbar relative -mx-4 flex cursor-grab snap-x snap-mandatory items-stretch gap-7 overflow-x-auto px-4 pt-5 pb-2 lg:mx-0 lg:grid lg:cursor-default lg:grid-cols-3 lg:overflow-visible lg:px-0 lg:pt-0"
          @scroll="readActive(planScroll, planActive)"
        >
          <article
            v-for="p in plans"
            :key="p.tag"
            class="reveal sticker flex w-[85%] shrink-0 snap-center flex-col p-8 sm:w-[60%] lg:w-auto"
            :class="[p.c, p.accent ? 'rd4 lg:-translate-y-5' : 'rd1']"
            :style="`--rot: ${p.rot}`"
          >
            <span
              v-if="p.accent"
              class="sticker rd5 s-sun absolute -top-4 left-4 px-4 py-1 font-display text-sm font-bold"
              style="--rot: -4deg"
            >чаще выбирают</span>
            <div class="flex items-center gap-3">
              <span class="text-4xl group-hover-wiggle">{{ p.emoji }}</span>
              <h3 class="font-display text-3xl font-bold">
                {{ p.tag }}
              </h3>
            </div>
            <p class="mt-3 font-semibold opacity-90">
              {{ p.d }}
            </p>
            <ul class="mt-6 space-y-3">
              <li
                v-for="perk in p.perks"
                :key="perk"
                class="flex items-start gap-3 font-semibold"
              >
                <UIcon
                  name="i-lucide-check"
                  class="mt-1 size-4 shrink-0"
                />
                <span>{{ perk }}</span>
              </li>
            </ul>
            <div class="mt-auto pt-8">
              <div class="flex items-baseline gap-2">
                <span class="puffy text-5xl">—</span>
                <span class="font-hand text-2xl opacity-80">₽ по запросу</span>
              </div>
              <NuxtLink
                :to="tgHref"
                target="_blank"
                class="btn rd1 mt-5 w-full justify-center"
                :class="p.accent ? 'btn-card' : 'btn-ink'"
              >
                {{ p.accent ? 'Записаться на пробное' : 'Подробнее' }}
              </NuxtLink>
            </div>
          </article>
        </div>
        <div class="mt-6 flex justify-center gap-2 lg:hidden">
          <button
            v-for="(p, i) in plans"
            :key="p.tag"
            type="button"
            class="h-2.5 rounded-full transition-all duration-300"
            :class="planActive === i ? 'w-7 bg-fuchsia' : 'w-2.5 bg-ink/25 hover:bg-ink/50'"
            :aria-label="`Абонемент ${i + 1}`"
            @click="slideTo(planScroll, i)"
          />
        </div>

        <div
          class="reveal sticker s-card tape mt-12 p-6 sm:p-8"
          style="--rot: 0.6deg"
        >
          <div class="flex flex-wrap items-end justify-between gap-3">
            <h3 class="font-display text-2xl font-bold sm:text-3xl">
              Разовые занятия
            </h3>
            <p class="font-hand text-2xl text-inksoft">
              начни с одного — ритм выберешь потом 💛
            </p>
          </div>
          <div class="mt-6 grid grid-cols-2 gap-5 lg:grid-cols-4">
            <div
              v-for="r in oneOffs"
              :key="r.n"
              class="sticker group p-5 text-center"
              :class="[r.c, r.rd]"
              :style="`--rot: ${r.rot}`"
            >
              <span class="puffy block text-5xl group-hover-wiggle">{{ r.n }}</span>
              <p class="mt-1 font-display text-sm font-bold tracking-wide uppercase">
                {{ r.label }}
              </p>
              <p class="mt-2 font-hand text-xl leading-tight opacity-80">
                {{ r.term }}
              </p>
            </div>
          </div>
          <p class="mt-5 text-center font-hand text-2xl text-fuchsia">
            стоимость — по запросу, обсудим на пробном
          </p>
        </div>
      </div>
    </section>

    <section
      id="reviews"
      class="relative bg-paper py-24 sm:py-28"
    >
      <AzTear color="paper2" />

      <div class="relative mx-auto grid max-w-6xl gap-8 px-4 lg:grid-cols-2">
        <div
          class="reveal watercolor-paper rd-paper tape tape-wide relative p-8 sm:p-10"
          style="--rot: -1deg"
        >
          <p class="font-hand text-3xl text-[#c2357f]">
            впечатления после пробного
          </p>
          <ul class="mt-5 space-y-5">
            <li
              v-for="r in reviews"
              :key="r.n"
              class="border-b-2 border-dashed border-[#2a1a12]/20 pb-4 last:border-0"
            >
              <p class="text-lg font-bold">
                «{{ r.t }}»
              </p>
              <p class="mt-1 font-hand text-xl opacity-70">
                — {{ r.n }}
              </p>
            </li>
          </ul>
          <div class="mt-6 flex items-center gap-3">
            <span class="puffy text-5xl">4.9</span>
            <div class="text-[#e0a23a]">
              ★★★★★
            </div>
          </div>
          <div class="mt-2 flex flex-col gap-1">
            <NuxtLink
              :to="yandexHref"
              target="_blank"
              class="font-hand inline-block text-xl text-[#2a1a12]/70 underline decoration-wavy"
            >
              читать отзывы на Яндексе →
            </NuxtLink>
            <NuxtLink
              :to="dgisHref"
              target="_blank"
              class="font-hand inline-block text-xl text-[#2a1a12]/70 underline decoration-wavy"
            >
              читать отзывы на 2ГИС →
            </NuxtLink>
          </div>
        </div>

        <div class="relative min-h-[21rem] sm:min-h-[22rem] lg:min-h-[24rem]">
          <div
            class="polaroid rd4 tape absolute top-0 left-2 w-40 sm:left-4 sm:w-56 lg:w-72"
            style="transform: rotate(-5deg)"
          >
            <img
              src="/first-work.jpg"
              alt="Моя первая работа"
              class="aspect-square w-full rounded-2xl object-cover"
            >
          </div>
          <div
            class="polaroid rd4 tape absolute top-8 right-0 w-32 sm:top-12 sm:right-2 sm:w-40 lg:w-48"
            style="transform: rotate(7deg)"
          >
            <img
              src="/watercolor-evening.jpg"
              alt="Акварельный вечер"
              class="aspect-square w-full rounded-2xl object-cover"
            >
          </div>
          <div
            class="polaroid rd4 tape absolute bottom-0 left-16 w-36 sm:left-40 sm:w-44 lg:left-32 lg:w-52"
            style="transform: rotate(4deg)"
          >
            <img
              src="/review-photo.jpg"
              alt="Работа ученицы AZ.art"
              class="aspect-square w-full rounded-2xl object-cover"
            >
          </div>
          <span
            class="sticker rd5 s-fuchsia absolute right-2 bottom-8 flex size-20 flex-col items-center justify-center text-center font-display text-sm font-bold leading-tight animate-float sm:right-4 sm:bottom-10 sm:size-24"
            style="--rot: -10deg"
          >
            рейтинг<br>4.9
          </span>
        </div>
      </div>
    </section>

    <section
      id="faq"
      class="relative bg-paper2 py-24 sm:py-28"
    >
      <AzTear color="paper" />

      <div class="relative mx-auto grid max-w-6xl gap-12 px-4 lg:grid-cols-12">
        <div class="lg:col-span-5">
          <p class="font-hand text-3xl text-fuchsia">
            остались вопросы?
          </p>
          <h2 class="mt-1 puffy text-3xl sm:text-6xl">
            Отвечаем <span class="marker-sky">честно</span>
          </h2>
          <p class="mt-5 max-w-sm text-lg font-semibold text-inksoft">
            Собрали то, о чём чаще всего спрашивают перед пробным. Не нашёл свой
            вопрос — напиши нам, ответим по-человечески.
          </p>
          <NuxtLink
            :to="tgHref"
            target="_blank"
            class="btn btn-fuchsia rd1 mt-7"
          >
            <UIcon
              name="i-simple-icons-telegram"
              class="size-5"
            />
            Задать свой вопрос
          </NuxtLink>
          <span
            class="sticker rd5 s-sun mt-8 hidden animate-float lg:inline-block px-4 py-3 font-hand text-2xl font-bold"
            style="--rot: -8deg"
          >
            без страха и оценок ✨
          </span>
        </div>

        <div class="space-y-4 lg:col-span-7">
          <div
            v-for="(f, i) in faqs"
            :key="f.q"
            class="reveal sticker s-card p-5 sm:p-6"
            :class="i % 2 ? 'rd2' : 'rd1'"
            :style="`--rot: ${i % 2 ? 0.6 : -0.6}deg`"
          >
            <button
              type="button"
              class="flex w-full items-center justify-between gap-4 text-left"
              :aria-expanded="openFaq === i"
              @click="toggleFaq(i)"
            >
              <span class="flex items-center gap-3 font-display text-lg font-bold sm:text-xl">
                <span class="font-hand text-2xl text-fuchsia">{{ String(i + 1).padStart(2, '0') }}</span>
                {{ f.q }}
              </span>
              <UIcon
                name="i-lucide-chevron-down"
                class="size-5 shrink-0 text-fuchsia transition-transform duration-300"
                :class="openFaq === i ? 'rotate-180' : ''"
              />
            </button>
            <div
              class="grid transition-[grid-template-rows] duration-300 ease-out"
              :style="{ gridTemplateRows: openFaq === i ? '1fr' : '0fr' }"
            >
              <div class="overflow-hidden">
                <p class="pt-3 pl-9 font-semibold text-inksoft">
                  {{ f.a }}
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section
      id="team"
      class="relative overflow-hidden bg-paper py-24 sm:py-28"
    >
      <AzTear color="paper2" />
      <div class="pointer-events-none absolute -top-20 -right-10 size-72 animate-drift rounded-full bg-lavender/20 blur-3xl" />
      <div class="pointer-events-none absolute -bottom-24 left-0 size-72 rounded-full bg-lime/20 blur-3xl" />

      <div class="relative mx-auto max-w-6xl px-4">
        <div class="mb-12 text-center">
          <p class="font-hand text-3xl text-fuchsia">
            мы ищем своих
          </p>
          <h2 class="mt-1 puffy text-3xl sm:text-6xl">
            Стань частью команды
          </h2>
        </div>

        <div class="grid gap-7 lg:grid-cols-2 lg:items-center">
          <div
            class="reveal sticker s-fuchsia tape relative p-8 sm:p-10"
            style="--rot: -1deg"
          >
            <span
              class="absolute -top-5 right-8 text-5xl animate-float"
              style="--rot: 10deg"
            >🎨</span>
            <h3 class="puffy text-3xl sm:text-4xl">
              Рисуешь сам&nbsp;—<br>научи других?
            </h3>
            <p class="mt-4 text-lg font-semibold text-white/90">
              Если ты художник и тебе нравится делиться — у нас есть место. Мы не
              ищем «идеальное резюме»: нам важны горящие глаза и умение зажечь
              других. Приходи знакомиться — расскажем, как устроена школа, и
              попробуем провести занятие вместе.
            </p>
            <div class="mt-7 flex flex-wrap gap-3">
              <NuxtLink
                :to="tgHref"
                target="_blank"
                class="btn btn-card rd1"
              >
                <UIcon
                  name="i-simple-icons-telegram"
                  class="size-5"
                />
                Написать нам
              </NuxtLink>
              <NuxtLink
                :to="phoneHref"
                class="btn btn-ink rd2"
              >
                <UIcon
                  name="i-lucide-phone"
                  class="size-5"
                />
                Позвонить
              </NuxtLink>
            </div>
          </div>

          <div class="grid gap-5 sm:grid-cols-2">
            <div
              v-for="(p, i) in teamPerks"
              :key="p.t"
              class="reveal sticker p-6"
              :class="[p.c, i % 2 ? 'rd2' : 'rd1']"
              :style="`--rot: ${i % 2 ? 1.5 : -1.5}deg`"
            >
              <UIcon
                :name="p.icon"
                class="size-7"
              />
              <h4 class="mt-3 font-display text-lg font-bold">
                {{ p.t }}
              </h4>
              <p class="mt-1 font-semibold opacity-90">
                {{ p.d }}
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section
      id="contacts"
      class="relative bg-paper2 py-24 sm:py-28"
    >
      <AzTear color="paper" />

      <div
        aria-hidden="true"
        class="pointer-events-none absolute top-20 right-6 z-0 hidden text-5xl animate-float lg:block"
        style="--rot: 8deg"
      >
        🌿
      </div>

      <div class="relative mx-auto max-w-6xl px-4">
        <div class="grid gap-12 lg:grid-cols-2">
          <div>
            <h2 class="puffy text-4xl sm:text-7xl">
              Приходи<br>рисовать!
            </h2>
            <p class="mt-5 max-w-md text-lg font-semibold text-inksoft">
              Покажем мастерскую, подберём направление и ритм — и ты нарисуешь
              первую работу уже на знакомстве.
            </p>
            <div class="mt-8 flex flex-wrap gap-4">
              <NuxtLink
                :to="tgHref"
                target="_blank"
                class="btn btn-fuchsia rd1"
              >
                <UIcon
                  name="i-simple-icons-telegram"
                  class="size-5"
                />
                Записаться
              </NuxtLink>
              <NuxtLink
                :to="phoneHref"
                class="btn btn-ink rd2"
              >
                <UIcon
                  name="i-lucide-phone"
                  class="size-5"
                />
                Позвонить
              </NuxtLink>
              <NuxtLink
                :to="yandexHref"
                target="_blank"
                class="btn btn-card rd1"
              >
                <UIcon
                  name="i-lucide-star"
                  class="size-5 text-[#fc3f1d]"
                />
                Мы на Яндексе
              </NuxtLink>
              <NuxtLink
                :to="dgisHref"
                target="_blank"
                class="btn btn-card rd2"
              >
                <UIcon
                  name="i-lucide-map-pinned"
                  class="size-5 text-[#2fa944]"
                />
                Мы на 2ГИС
              </NuxtLink>
            </div>
          </div>

          <div class="grid gap-5 sm:grid-cols-2">
            <NuxtLink
              :to="mapHref"
              target="_blank"
              class="reveal sticker s-card min-w-0 p-6"
              style="--rot: -1.5deg"
            >
              <UIcon
                name="i-lucide-map-pin"
                class="size-6 text-fuchsia"
              />
              <p class="mt-2 font-hand text-xl text-inksoft">адрес</p>
              <p class="font-display text-lg font-bold">{{ address }}</p>
            </NuxtLink>
            <NuxtLink
              :to="phoneHref"
              class="reveal sticker s-card min-w-0 p-6"
              style="--rot: 1.5deg"
            >
              <UIcon
                name="i-lucide-phone"
                class="size-6 text-fuchsia"
              />
              <p class="mt-2 font-hand text-xl text-inksoft">телефон</p>
              <p class="font-display text-lg font-bold">{{ phone }}</p>
            </NuxtLink>
            <NuxtLink
              :to="tgHref"
              target="_blank"
              class="reveal sticker s-card min-w-0 p-6"
              style="--rot: 1deg"
            >
              <UIcon
                name="i-simple-icons-telegram"
                class="size-6 text-fuchsia"
              />
              <p class="mt-2 font-hand text-xl text-inksoft">telegram</p>
              <p class="font-display text-base font-bold leading-tight break-all">@azart_ekb</p>
            </NuxtLink>
            <NuxtLink
              :to="vkHref"
              target="_blank"
              class="reveal sticker s-card min-w-0 p-6"
              style="--rot: -2deg"
            >
              <UIcon
                name="i-simple-icons-vk"
                class="size-6 text-fuchsia"
              />
              <p class="mt-2 font-hand text-xl text-inksoft">вконтакте</p>
              <p class="font-display text-base font-bold leading-tight break-all">vk.ru/shkola_risovaniya_azart</p>
            </NuxtLink>
            <NuxtLink
              :to="tgHref"
              target="_blank"
              class="reveal sticker s-card min-w-0 p-6"
              style="--rot: -1deg"
            >
              <UIcon
                name="i-lucide-clock"
                class="size-6 text-fuchsia"
              />
              <p class="mt-2 font-hand text-xl text-inksoft">
                часы работы
              </p>
              <p class="font-display text-base font-bold">
                {{ hours }}
              </p>
            </NuxtLink>
          </div>
        </div>

        <div class="mt-12 flex flex-wrap justify-center gap-4">
          <component
            :is="s.href ? 'NuxtLink' : 'button'"
            v-for="s in socials"
            :key="s.label"
            :to="s.href"
            :target="s.href ? '_blank' : undefined"
            :type="s.href ? undefined : 'button'"
            :title="s.href ? undefined : 'Скоро добавим'"
            class="reveal sticker flex items-center gap-3 px-5 py-3"
            :class="[s.c, 'rd1']"
          >
            <UIcon
              :name="s.icon"
              class="size-5"
            />
            <span class="font-display text-sm font-bold">{{ s.label }}</span>
          </component>
        </div>
      </div>
    </section>
  </div>
</template>
