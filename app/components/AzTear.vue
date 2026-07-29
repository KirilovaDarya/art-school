<script setup>
const props = defineProps({
  color: { type: String, default: 'paper' }
})

const fills = {
  paper: 'var(--paper)',
  paper2: 'var(--paper-2)',
  ink: 'var(--ink)'
}

const fill = fills[props.color] || props.color

const path = (() => {
  const W = 1200
  const top = 14
  const segs = 48
  const rnd = (i) => {
    const v = Math.sin(i * 12.9898) * 43758.5453
    return v - Math.floor(v)
  }
  let d = `M0,0 L${W},0 L${W},${top}`
  for (let i = segs; i >= 0; i--) {
    const x = Math.round((i / segs) * W)
    const y = Math.round(top + 6 + rnd(i) * 24)
    d += ` L${x},${y}`
  }
  d += ' Z'
  return d
})()
</script>

<template>
  <div
    class="pointer-events-none absolute inset-x-0 top-0 z-0"
    aria-hidden="true"
  >
    <svg
      class="tear-svg"
      viewBox="0 0 1200 46"
      preserveAspectRatio="none"
      :style="{ color: fill }"
    >
      <path
        fill="currentColor"
        :d="path"
      />
    </svg>
  </div>
</template>
