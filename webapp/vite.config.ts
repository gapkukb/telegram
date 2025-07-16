import { resolve } from 'node:path'
import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import jsx from '@vitejs/plugin-vue-jsx'
import Icons from 'unplugin-icons/vite'
import AutoImport from 'unplugin-auto-import/vite'
import Components from 'unplugin-vue-components/vite'
import { VantResolver } from 'unplugin-vue-components/resolvers'
import IconsResovler from 'unplugin-icons/resolver'
import basicSsl from '@vitejs/plugin-basic-ssl'
import UnoCSS from 'unocss/vite'

export default defineConfig(function configure() {
    return {
        resolve: {
            alias: {
                '@': resolve(__dirname, 'src'),
            },
        },
        plugins: [
            // basicSsl(),
            vue(),
            jsx(),
            Components({
                dirs: ['./src/composables', './src/components', './src/utils'],
                dts: 'typings/components.d.ts',
                deep: true,
                globs: ['**/index.{vue,ts,tsx}'],
                resolvers: [IconsResovler({}), VantResolver()],
            }),
            AutoImport({
                dts: 'typings/auto-imports.d.ts',
                include: [
                    /\.[tj]sx?$/, // .ts, .tsx, .js, .jsx
                    /\.vue$/,
                    /\.vue\?vue/, // .vue
                ],
                imports: [
                    'vue',
                    'pinia',
                    'vue-router',
                    '@vueuse/core',

                    // {
                    //   'swiper-next/vue': [['Swiper', 'SwiperNext'], ['SwiperSlide', 'SwiperSlideNext'], 'useSwiper', 'useSwiperSlide'],
                    // },
                ],
            }),
            Icons(),
            UnoCSS(),
        ],
        build: {
            rollupOptions: {},
        },
        server: {
            // https: {},
            // host: '0.0.0.0',
        },
    }
})
