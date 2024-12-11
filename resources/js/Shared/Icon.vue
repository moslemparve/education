<template>
  <svg v-if="name === 'cheveron-down'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" /></svg>
  <svg v-else-if="name === 'cheveron-right'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><polygon points="12.95 10.707 13.657 10 8 4.343 6.586 5.757 10.828 10 6.586 14.243 8 15.657 12.95 10.707" /></svg>
  <svg v-else-if="name === 'dashboard'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M10 20a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm-5.6-4.29a9.95 9.95 0 0 1 11.2 0 8 8 0 1 0-11.2 0zm6.12-7.64l3.02-3.02 1.41 1.41-3.02 3.02a2 2 0 1 1-1.41-1.41z" /></svg>
  <svg v-else-if="name === 'office'" xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 100 100"><path fill-rule="evenodd" d="M7 0h86v100H57.108V88.418H42.892V100H7V0zm9 64h11v15H16V64zm57 0h11v15H73V64zm-19 0h11v15H54V64zm-19 0h11v15H35V64zM16 37h11v15H16V37zm57 0h11v15H73V37zm-19 0h11v15H54V37zm-19 0h11v15H35V37zM16 11h11v15H16V11zm57 0h11v15H73V11zm-19 0h11v15H54V11zm-19 0h11v15H35V11z" /></svg>
  <svg v-else-if="name === 'printer'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M4 16H0V6h20v10h-4v4H4v-4zm2-4v6h8v-6H6zM4 0h12v5H4V0zM2 8v2h2V8H2zm4 0v2h2V8H6z" /></svg>
  <svg v-else-if="name === 'trash'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M6 2l2-2h4l2 2h4v2H2V2h4zM3 6h14l-1 14H4L3 6zm5 2v10h1V8H8zm3 0v10h1V8h-1z" /></svg>
  <svg v-else-if="name === 'users'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M7 8a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm0 1c2.15 0 4.2.4 6.1 1.09L12 16h-1.25L10 20H4l-.75-4H2L.9 10.09A17.93 17.93 0 0 1 7 9zm8.31.17c1.32.18 2.59.48 3.8.92L18 16h-1.25L16 20h-3.96l.37-2h1.25l1.65-8.83zM13 0a4 4 0 1 1-1.33 7.76 5.96 5.96 0 0 0 0-7.52C12.1.1 12.53 0 13 0z" /></svg>
  <svg v-else-if="name === 'events'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
  <path d="M15 2h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h2V0h2v2h6V0h2v2zm0 4H5v10h10V6zm-3 3H8v2h4V9z" />
</svg>
<svg v-else-if="name === 'notice'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
  <path d="M10 0a2 2 0 0 1 2 2v12a2 2 0 0 1-4 0V2a2 2 0 0 1 2-2zm0 16a2 2 0 1 0 0 4 2 2 0 0 0 0-4z" />
</svg>
<svg v-else-if="name === 'career'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
  <path d="M6 2a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2h4a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h4V2zm2 0v2h4V2H8zm10 6H2v8h16V8z" />
</svg>
<svg v-else-if="name === 'map'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
  <path d="M2 3a1 1 0 0 1 .8-.98l4-1a1 1 0 0 1 .4 0l5 1.5 5-1.5a1 1 0 0 1 1.4.98v14a1 1 0 0 1-.8.98l-4 1a1 1 0 0 1-.4 0l-5-1.5-5 1.5a1 1 0 0 1-1.4-.98V3zm5-.68v12.96l4 1.2V3.52L7 2.32zm6 1.2v12.96l4-1V3.52l-4 1z" />
  <!-- Marker -->
  <path d="M10 7a2 2 0 0 1 2 2c0 1.66-2 4-2 4s-2-2.34-2-4a2 2 0 0 1 2-2zm0 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
</svg>
<svg v-else-if="name === 'settings'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
  <path d="M10 2a1 1 0 0 1 1 1v1.22a5.97 5.97 0 0 1 1.57.9l1.03-.59a1 1 0 0 1 1.3.29l1 1.73a1 1 0 0 1-.29 1.3l-.9.52a6.02 6.02 0 0 1 0 1.8l.9.52a1 1 0 0 1 .29 1.3l-1 1.73a1 1 0 0 1-1.3.29l-1.03-.59a5.97 5.97 0 0 1-1.57.9V17a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-1.22a5.97 5.97 0 0 1-1.57-.9l-1.03.59a1 1 0 0 1-1.3-.29l-1-1.73a1 1 0 0 1 .29-1.3l.9-.52a6.02 6.02 0 0 1 0-1.8l-.9-.52a1 1 0 0 1-.29-1.3l1-1.73a1 1 0 0 1 1.3-.29l1.03.59a5.97 5.97 0 0 1 1.57-.9V3a1 1 0 0 1 1-1h2zm-1 6a3 3 0 1 0 0 6 3 3 0 0 0 0-6z" />
</svg>
<svg v-else-if="name === 'messages'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
  <path d="M2 3a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H6l-4 3V3zm2 0v12l2.5-2H16V3H4zm2 4h8v2H6V7zm0 4h5v2H6v-2z" />
</svg>
<svg v-else-if="name === 'news'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
  <path d="M2 3a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V3zm2 0v14h12V3H4zm2 3h8v2H6V6zm0 4h8v2H6v-2zm0 4h4v2H6v-2z" />
  <path d="M14 6h2v2h-2z" />
</svg>
<svg v-else-if="name === 'slider'" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
  <path d="M3 6h14a1 1 0 1 0 0-2H3a1 1 0 1 0 0 2zm4 4h10a1 1 0 1 0 0-2H7a1 1 0 1 0 0 2zm-4 6h14a1 1 0 1 0 0-2H3a1 1 0 1 0 0 2z" />
  <circle cx="6" cy="4" r="1.5" />
  <circle cx="14" cy="10" r="1.5" />
  <circle cx="10" cy="16" r="1.5" />
</svg>

</template>

<script>
export default {
  props: {
    name: String,
  },
}
</script>
