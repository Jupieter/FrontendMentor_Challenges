# vue_frontend_mentor_challenges

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Run your unit tests
```
npm run test:unit
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

### Docker Dev under Windows
add to vue.config.js :
module.exports = defineConfig({
  configureWebpack: {
    entry: "./src/main.js",
    devServer: {
      hot: true,
    },
    watch: true,
    watchOptions: {
      ignored: "./node_modules/",
      poll: 1000,
    },
  },
  transpileDependencies: true,
});

### Docker commands:
### https://www.youtube.com/watch?v=NN_05ghAQEU&list=PLbcJ_vPJW9XNhg88VFlDfWcetjFr-yLKF&index=5
Hyper-V must be enabled => https://docs.docker.com/desktop/troubleshoot/topics/
docker build -t jupieter/vue_frontend_mentor_challenges .
### -d detached -v 
docker run -it -v "c:\GIT\vue_frontend_mentor_challenges:/app" -p 16100:8080 --name frontend_challenge jupieter/vue_frontend_mentor_challenges
docker run -it -p 16200:8080 --name VUE_no_mount jupieter/vue_frontend_mentor_challenges
docker run -it -v c:\GIT\vue_frontend_mentor_challenges\src:/app/src -p 16300:8080 --name frontend_challenge jupieter/vue_frontend_mentor_challenges

docker run --rm -it -v c:\GIT\vue_frontend_mentor_challenges\src:/app/src -p 16100:8080 --name frontend_ch_2 jupieter/vue_frontend_mentor_challenges
### docker run -it -v "//c/GIT/vue_frontend_mentor_challenges":/app -p 16300:8080 jupieter/vue_frontend_mentor_challenges
### docker run -it -v $PWD/:/app -p 16200:8080 jupieter/vue_frontend_mentor_challenges


docker images
docker ps -a
docker exec -it 6d06 bash
docker rename 6d06 peter_jung  
docker logs 6d06 -f

docker rm 6d06
docker container prune ### all deleted