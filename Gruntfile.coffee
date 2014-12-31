module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    imagefiles:
      'raster/tileset1.png':
        background: "#fff"
      'raster/tileset2.png':
        background: "#fff"

  grunt.registerTask 'hello', 'Says hello', () ->
    grunt.log.write "Hello!"

  grunt.registerTask 'convert', 'Run PNG -> PPM convertion', () ->
    grunt.verbose.writeln 'gonna process ' + img for img of grunt.config 'imagefiles'

    #grunt.util.spawn cmd: 'pngtopnm' args: [], (error, result, code) -> TODO

  grunt.registerTask 'vectorize', 'Trace the source raster images', () ->
    grunt.task.requires 'convert'
    TODO
