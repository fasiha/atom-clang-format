ClangFormat = require './clang-format'

module.exports =
  config:
    formatCPlusPlusOnSave:
      type: 'boolean'
      default: true
      title: 'Format C++ on save'
      order: 1
    formatCOnSave:
      type: 'boolean'
      default: true
      title: 'Format C on save'
      order: 2
    formatObjectiveCOnSave:
      type: 'boolean'
      default: false
      title: 'Format Objective-C on save'
      order: 3
    formatJavascriptOnSave:
      type: 'boolean'
      default: false
      title: 'Format JavaScript on save'
      order: 4
    executable:
      type: 'string'
      default: ''
      order: 5
    style:
      type: 'string'
      default: 'file'
      order: 6
      description: 'Default "file" uses the file ".clang-format" in one of the parent directories of the source file.'
    fallbackStyle:
      type: 'string'
      default: 'none'
      description: 'Default "none" together with style "file" ensures that if no ".clang-format" file exists, no reformatting takes place.'

  activate: ->
    @clangFormat = new ClangFormat()

  deactivate: ->
    @clangFormat.destroy()
