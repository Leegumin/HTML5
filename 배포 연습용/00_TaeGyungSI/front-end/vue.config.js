const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true
})

// 프록시 하는 방법
// module.exports = {
//   devServer: {
//     proxy: {
//       'api': {
//         target: 'http://localhost:9000',
//         ws: true,
//         changeOrigin: true
//       },
//     }
//   }
// }
