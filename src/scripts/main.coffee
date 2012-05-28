workarea = CodeMirror document.getElementById('workarea'),
  value: '''
    ///\\b((?:https?://|www\\d{0,3}[.]|[a-z0-9.\\-]+[.][a-z]{2,4}/)(?:[^\\s()<>]+|\\(([^\\s()<>]+|(\\([^\\s()<>]+\\)))*\\))+(?:\\(([^\\s()<>]+|(\\([^\\s()<>]+\\)))*\\)|[^\\s`!()\\[\\]{};:'".,<>?«»“”‘’]))///gi
    '''
  mode:  'rexer'
  lineWrapping: true
  autofocus: true
  tabindex: 0
  autoClearEmptyLines: true
  tabSize: 2
  lineNumbers: true
  indentWithTabs: true
  theme: 'rexer'
  onChange: ->
    testarea.highlightMatches(workarea.getValue())

testarea = CodeMirror document.getElementById('testarea'),
  value: 'http://applio.us/\nhttp://asdasd/\nhttps://mail.google.com/'
  mode: 'plaintext'
  lineWrapping: true
  tabindex: 1
  tabSize: 2
  indentWithTabs: true
  onChange: ->
    testarea.highlightMatches(workarea.getValue())

testarea.highlightMatches(workarea.getValue())
