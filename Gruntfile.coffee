module.exports = (grunt) ->
  grunt.initConfig pkg: grunt.file.readJSON 'package.json'
  grunt.registerTask 'hello', 'Says hello', () ->
    grunt.log.write "Hello!"
