module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      compile:
        files:
          "public/js/*.js": "app/coffee/**/*.coffee"

        options:
          flatten: false
          bare: false

    jade:
      compile:
        files:
          "public/index.html": "app/jade/index.jade"

    stylus:
      compile:
        files:
          "public/css/styles.css": "app/stylus/*.styl"

        options:
          compress: true

    server:
      port: 8000
      base: "public"

    watch:
      coffee:
        files: ["app/coffee/**/*.coffee"]
        tasks: "coffee reload"

      stylus:
        files: ["app/stylus/*.styl"]
        tasks: "stylus reload"

      jade:
        files: ["app/jade/*.jade"]
        tasks: "jade reload"

    reload:
      port: 6001
      proxy:
        host: 'localhost'
        port: 8000

  grunt.loadNpmTasks "grunt-reload"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-jade"
  grunt.loadNpmTasks "grunt-contrib-stylus"

  grunt.registerTask "default", "coffee jade stylus server reload watch"
