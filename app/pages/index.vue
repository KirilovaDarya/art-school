<script setup>
const phone = '+7 (993) 514-28-15'
const phoneHref = 'tel:+79935142815'
const tgHref = 'https://t.me/shkola_risovaniya_azart'
const vkHref = 'https://vk.ru/shkola_risovaniya_azart'
const mapHref = 'https://clck.ru/3USsL9'
const address = 'проспект Ленина 49, Екатеринбург'
const hours = '360 дней в году · 10:00–21:00'

const features = [
  { t: 'Мастерская с характером', d: 'Свет, зелень и чай — как дома, только с мольбертами.', c: 's-sun', rot: '-2deg', rd: 'rd1' },
  { t: 'От классики до цифры', d: 'Меняй направление под настроение — без потери прогресса.', c: 's-sky', rot: '1.5deg', rd: 'rd2' },
  { t: 'Под тебя, а не под шаблон', d: 'Подстраиваем обучение под твой темп и восприятие — персонально.', c: 's-lavender', rot: '-1deg', rd: 'rd4' },
  { t: 'Тарифы под твой ритм', d: 'Плати только за тот объём, который реально осваиваешь.', c: 's-lime', rot: '2deg', rd: 'rd1' },
  { t: 'Взрослым и будущим студентам', d: 'Готовим портфолио к поступлению и учим для души; детям — по записи с 10 лет.', c: 's-fuchsia', rot: '-1.5deg', rd: 'rd2' },
  { t: 'Тёплая компания без оценок', d: 'Здесь понимают и поддерживают — приходи со своим настроением.', c: 's-card', rot: '1deg', rd: 'rd4' }
]

const directions = [
  { emoji: '✏️', t: 'Академический рисунок', d: 'Композиция, перспектива и светотень — фундамент всего.', span: 'lg:col-span-7', c: 's-sky', rot: '-1.5deg' },
  { emoji: '🎨', t: 'Живопись', d: 'Масло, гуашь и акварель — пишем цветом и настроением.', span: 'lg:col-span-5', c: 's-sun', rot: '2deg' },
  { emoji: '💻', t: 'Цифровое искусство', d: 'Планшет, слои и кисти — современный рабочий процесс.', span: 'lg:col-span-4', c: 's-lavender', rot: '-1deg' },
  { emoji: '🖌️', t: 'Акрил', d: 'Яркий укрывистый материал для смелых мазков и фактур.', span: 'lg:col-span-8', c: 's-lime', rot: '1deg' },
  { emoji: '🖍️', t: 'Масляная пастель', d: 'Сочные штрихи ложатся как краска — без кисти и растворителей.', span: 'lg:col-span-5', c: 's-fuchsia', rot: '-2deg' },
  { emoji: '🌸', t: 'Сухая пастель', d: 'Бархатистая растушёвка и пудровые переходы цвета.', span: 'lg:col-span-7', c: 's-card', rot: '1.5deg' },
  { emoji: '🌿', t: 'Пленэры', d: 'Выходим на воздух ловить свет, погоду и живой мотив.', span: 'lg:col-span-6', c: 's-sky', rot: '1deg' },
  { emoji: '🎓', t: 'Взрослым и абитуриентам', d: 'Портфолио для поступления и занятия для души; детям — по записи с 10 лет.', span: 'lg:col-span-6', c: 's-sun', rot: '-1.5deg' }
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
  { emoji: '🖌️', t: 'Акрил', note: 'Плотный мазок и декор.' },
  { emoji: '🖍️', t: 'Масляная пастель', note: 'Насыщенный цвет без кисти.' },
  { emoji: '🌸', t: 'Сухая пастель', note: 'Пудровая растушёвка.' },
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

const reviews = [
  { t: 'Пришла на пробное «просто посмотреть» — и осталась на год. Здесь правда слышат и не сравнивают.', n: 'Анна, живопись' },
  { t: 'Готовила портфолио и впервые поняла: рисунок — это не талант, а разбор. Поступила туда, куда хотела.', n: 'Полина, абитуриентка' },
  { t: 'Хожу после работы как на терапию: растения, чай, свои люди и ни одной оценки за целый день.', n: 'Марина, пастель' }
]

const socials = [
  { label: 'Telegram', handle: '@shkola_risovaniya_azart', href: tgHref, icon: 'i-simple-icons-telegram', c: 's-sky' },
  { label: 'ВКонтакте', handle: 'vk.ru/shkola_risovaniya_azart', href: vkHref, icon: 'i-simple-icons-vk', c: 's-lavender' },
  { label: 'MAX', handle: 'max.ru', href: null, icon: 'i-lucide-message-circle', c: 's-sun' },
  { label: 'Отзывы', handle: 'Яндекс · пл. 1905 года', href: null, icon: 'i-lucide-star', c: 's-lime' }
]

const marquee = ['Рисуй без оглядки', 'AZ.art', 'Екатеринбург', 'проспект Ленина 49', '360 дней в году', 'с 10 до 21', 'масляная пастель', 'пленэры']

const faqs = [
  { q: 'Я совсем не умею рисовать. Мне к вам можно?', a: 'Конечно! Большинство взрослых приходит с чистого листа — и это абсолютно нормально. Мы начинаем с основ и идём в твоём темпе, без сравнений и оценок.' },
  { q: 'Что брать с собой на занятие?', a: 'Ничего особенного — мольберты, краски, пастель и бумага уже ждут в студии. Приходи просто с желанием рисовать и настроением.' },
  { q: 'Я хочу поступать на худграфика. Поможете?', a: 'Да, это одна из наших сильных сторон: ставим руку, собираем портфолио и готовим к экзаменам. При этом у нас учатся и просто «для души» — атмосфера одна и та же, тёплая.' },
  { q: 'Сколько длится занятие и как часто ходить?', a: 'Занятие идёт примерно 2–3 часа, чтобы успеть войти в поток. Частоту выбираешь сам — под неё и подбираем абонемент на пробном.' },
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

    <section class="relative overflow-hidden bg-paper">
      <div class="pointer-events-none absolute -top-24 -right-16 size-80 animate-drift rounded-full bg-fuchsia/20 blur-3xl" />
      <div class="pointer-events-none absolute -bottom-32 -left-20 size-72 rounded-full bg-sun/25 blur-3xl" />

      <div class="relative mx-auto grid max-w-6xl items-center gap-12 px-4 pt-16 pb-24 sm:pt-24 lg:grid-cols-12">
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
            class="rise mt-7 puffy text-6xl sm:text-8xl"
            style="animation-delay: 0.08s"
          >
            Рисуй
          </h1>
          <h1
            class="rise mt-1 puffy pop-text text-6xl text-fuchsia sm:text-8xl"
            style="animation-delay: 0.16s"
          >
            без оглядки!
          </h1>

          <p
            class="rise mt-7 max-w-xl text-lg font-semibold text-inksoft"
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
          class="relative hidden h-[26rem] lg:col-span-5 lg:block"
          aria-hidden="true"
        >
          <div
            class="polaroid rd4 absolute top-2 left-4 w-44"
            style="transform: rotate(-7deg)"
          >
            <div class="flex aspect-square items-center justify-center rounded-2xl bg-sky text-7xl">
              🎨
            </div>
            <p class="mt-2 text-center font-hand text-2xl text-ink">
              первый мазок
            </p>
          </div>
          <div
            class="polaroid rd4 absolute top-10 right-2 w-40 tape"
            style="transform: rotate(6deg)"
          >
            <div class="flex aspect-square items-center justify-center rounded-2xl bg-lime text-7xl">
              🖍️
            </div>
            <p class="mt-2 text-center font-hand text-2xl text-ink">
              пастель
            </p>
          </div>
          <div
            class="sheet marker-frame absolute bottom-2 left-16 w-44 p-2 shadow-[5px_7px_0_var(--sticker-shadow)]"
            style="transform: rotate(4deg)"
          >
            <img
              src="/plein-air.jpg"
              alt="Набросок садовых ворот в зелени — пленэр"
              class="aspect-square w-full rounded-[3px] object-cover"
            >
            <p class="mt-1 text-center font-hand text-3xl text-sketch underline decoration-wavy decoration-2 underline-offset-4">
              пленэр
            </p>
          </div>

          <span
            class="sticker rd5 s-ink absolute -top-2 right-10 flex size-24 flex-col items-center justify-center text-center font-display text-xs font-bold leading-tight animate-float"
            style="--rot: 12deg"
          >
            360<br>дней<br>в году
          </span>
          <span
            class="absolute right-0 bottom-0 font-hand text-3xl text-fuchsia"
            style="transform: rotate(-8deg)"
          >с нуля — ок!</span>
          <span
            class="sticker rd5 s-card absolute -bottom-3 left-0 flex size-12 items-center justify-center text-2xl animate-float"
            style="--rot: -10deg"
          >🪴</span>
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
          <h2 class="mt-1 puffy text-4xl sm:text-6xl">
            Место, где можно <span class="marker-lime">выдохнуть</span>
          </h2>
        </div>

        <div class="grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
          <div
            v-for="(f, i) in features"
            :key="f.t"
            class="reveal sticker p-7"
            :class="[f.c, f.rd]"
            :style="`--rot: ${f.rot}`"
          >
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
          <AzSketch
            name="busts"
            class="w-36 text-ink"
          />
        </div>
      </div>
      <div
        aria-hidden="true"
        class="pointer-events-none absolute bottom-12 -left-2 z-0 hidden xl:block"
      >
        <div
          class="sticker s-card rd1 p-2"
          style="--rot: -4deg"
        >
          <AzSketch
            name="columns"
            class="w-32"
          />
        </div>
      </div>

      <div class="relative mx-auto max-w-6xl px-4">
        <div class="mb-12 flex flex-wrap items-end justify-between gap-4">
          <h2 class="puffy text-5xl sm:text-7xl">
            Направления
          </h2>
          <p class="max-w-sm font-hand text-2xl text-inksoft">
            выбирай под настроение и меняй путь <span class="marker-sky font-bold text-ink">без потери прогресса</span> ✏️
          </p>
        </div>

        <div class="grid gap-6 lg:grid-cols-12">
          <article
            v-for="d in directions"
            :key="d.t"
            class="reveal sticker group p-7"
            :class="[d.c, d.span]"
            :style="`--rot: ${d.rot}`"
          >
            <div class="text-5xl transition-transform duration-300 group-hover:-rotate-3 group-hover:scale-105">
              {{ d.emoji }}
            </div>
            <h3 class="mt-4 font-display text-2xl font-bold">
              {{ d.t }}
            </h3>
            <p class="mt-2 max-w-md font-semibold opacity-90">
              {{ d.d }}
            </p>
          </article>
        </div>

        <div
          class="reveal sticker s-fuchsia tape mt-6 flex flex-col gap-5 p-8 sm:flex-row sm:items-center sm:justify-between"
          style="--rot: -0.6deg"
        >
          <div class="flex items-center gap-4">
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

    <div class="relative bg-paper py-14 text-center">
      <p class="font-hand text-2xl text-inksoft">
        листай дальше ↓
      </p>
      <h2 class="puffy outline-text mt-1 text-5xl sm:text-8xl">
        выбери своё
      </h2>
    </div>

    <section
      id="courses"
      class="relative bg-paper2 py-24 sm:py-28"
    >
      <AzTear color="paper" />

      <div
        aria-hidden="true"
        class="pointer-events-none absolute top-28 right-4 z-0 hidden lg:block"
      >
        <div
          class="sticker s-card rd1 p-2"
          style="--rot: -5deg"
        >
          <AzSketch
            name="portrait"
            class="w-24 text-sketch"
          />
        </div>
      </div>

      <div class="relative mx-auto max-w-6xl px-4">
        <div
          class="reveal sticker s-card tape relative overflow-hidden p-8 sm:p-12"
          style="--rot: -0.5deg"
        >
          <span
            class="sticker rd5 s-lime absolute -top-4 right-8 px-4 py-2 font-hand text-xl font-bold"
            style="--rot: 6deg"
          >{{ basics.badge }}</span>
          <div class="grid gap-8 lg:grid-cols-[1fr_1.2fr] lg:items-center">
            <div>
              <p class="font-hand text-3xl text-fuchsia">
                базовый курс
              </p>
              <h2 class="mt-1 puffy text-5xl sm:text-6xl">
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
          </div>
        </div>

        <div class="mt-16 flex flex-wrap items-end justify-between gap-4">
          <h3 class="puffy text-4xl sm:text-5xl">
            Курсы по направлениям
          </h3>
          <p class="max-w-sm font-hand text-2xl text-inksoft">
            хочешь пройти одно направление отдельно? легко 🎯
          </p>
        </div>

        <div class="mt-8 grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
          <article
            v-for="(c, i) in courses"
            :key="c.t"
            class="reveal sticker s-card flex flex-col p-7"
            :class="i % 2 ? 'rd2' : 'rd1'"
            :style="`--rot: ${i % 3 === 0 ? -1 : i % 3 === 1 ? 1.5 : -0.5}deg`"
          >
            <div class="text-4xl">
              {{ c.emoji }}
            </div>
            <h4 class="mt-3 font-display text-xl font-bold">
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
          <h2 class="mt-1 puffy text-4xl sm:text-6xl">
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
        class="pointer-events-none absolute top-24 right-3 z-0 hidden lg:block"
      >
        <div
          class="sticker s-card rd2 tape p-2 animate-float"
          style="--rot: 6deg"
        >
          <AzSketch
            name="bouquet"
            class="w-28 text-sketch"
          />
        </div>
      </div>

      <div class="relative mx-auto max-w-6xl px-4">
        <div class="mb-12 flex flex-wrap items-end justify-between gap-4">
          <div>
            <p class="font-hand text-3xl text-fuchsia">
              абонементы
            </p>
            <h2 class="mt-1 puffy text-5xl sm:text-7xl">
              Выбери <span class="marker-sun">свой ритм</span>
            </h2>
          </div>
          <p class="max-w-sm font-hand text-2xl text-inksoft">
            точную стоимость обсудим на пробном — подберём то, что подойдёт именно тебе 💛
          </p>
        </div>

        <div class="grid items-stretch gap-7 lg:grid-cols-3">
          <article
            v-for="p in plans"
            :key="p.tag"
            class="reveal sticker flex flex-col p-8"
            :class="[p.c, p.accent ? 'rd4 lg:-translate-y-5' : 'rd1']"
            :style="`--rot: ${p.rot}`"
          >
            <span
              v-if="p.accent"
              class="sticker rd5 s-sun absolute -top-4 left-8 px-4 py-1 font-display text-xs font-bold"
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
      </div>
    </section>

    <section
      id="reviews"
      class="relative bg-paper py-24 sm:py-28"
    >
      <AzTear color="paper2" />

      <div class="relative mx-auto grid max-w-6xl gap-8 px-4 lg:grid-cols-2">
        <div
          class="reveal watercolor-paper rd-paper tape relative p-8 sm:p-10"
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
            <span class="puffy text-5xl">5.0</span>
            <div class="text-[#e0a23a]">
              ★★★★★
            </div>
          </div>
          <NuxtLink
            to="https://yandex.ru"
            target="_blank"
            class="font-hand mt-2 inline-block text-xl text-[#2a1a12]/70 underline decoration-wavy"
          >
            читать отзывы на Яндексе →
          </NuxtLink>
        </div>

        <div class="relative min-h-[22rem]">
          <div
            class="polaroid rd4 absolute top-0 left-4 w-52"
            style="transform: rotate(-5deg)"
          >
            <div class="flex aspect-square items-center justify-center rounded-2xl bg-lavender text-7xl">
              🖌️
            </div>
            <p class="mt-2 text-center font-hand text-2xl text-ink">
              моя первая работа
            </p>
          </div>
          <div
            class="polaroid rd4 absolute top-12 right-2 w-48 tape"
            style="transform: rotate(7deg)"
          >
            <div class="flex aspect-square items-center justify-center rounded-2xl bg-sun text-7xl">
              🎨
            </div>
            <p class="mt-2 text-center font-hand text-2xl text-ink">
              акварельный вечер
            </p>
          </div>
          <div
            aria-hidden="true"
            class="absolute bottom-0 left-2 w-32"
            style="transform: rotate(-4deg)"
          >
            <div class="sticker s-card rd1 p-2">
              <AzSketch
                name="portrait"
                class="w-full text-sketch"
              />
            </div>
          </div>
          <span
            class="sticker rd5 s-fuchsia absolute right-6 bottom-6 flex size-24 flex-col items-center justify-center text-center font-display text-sm font-bold leading-tight animate-float"
            style="--rot: -10deg"
          >
            рейтинг<br>5.0
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
          <h2 class="mt-1 puffy text-5xl sm:text-7xl">
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
          <h2 class="mt-1 puffy text-5xl sm:text-7xl">
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
              Рисуешь сам —<br>научи других?
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
            <h2 class="puffy text-5xl sm:text-7xl">
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
              <p class="font-display text-base font-bold leading-tight break-all">@shkola_risovaniya_azart</p>
            </NuxtLink>
            <div
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
            </div>
          </div>
        </div>

        <div class="mt-12 flex flex-wrap gap-4">
          <component
            :is="s.href ? 'NuxtLink' : 'div'"
            v-for="s in socials"
            :key="s.label"
            :to="s.href"
            :target="s.href ? '_blank' : undefined"
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
