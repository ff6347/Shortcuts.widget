refreshFrequency: 60000

todolistfile = './Shortcuts.widget/Shortcuts.list'

command: "cat #{todolistfile}"

style: """

  top: 10px
  right: 100px
  color: #535353
  font-family: "Akko Rounded Pro"
  text-align:right


  tbody tr:nth-child(odd)
    background-color: rgba(#ccc, 0.2)

  h1
    display: block
    text-align: center
    font-size: 24px
    font-weight: 100
    margin: 10px

  h3
    font-size: 12px

  div
    display: block
    text-shadow: 0 0 1px rgba(#000, 0.5)
    font-size: 14px
    line-height:16px
"""


render:(output) -> """
  <div id='shortcuts'>#{output}</div>
"""

# update: (output, domEl) ->
#   $(domEl).find('#shortcuts').html(output)