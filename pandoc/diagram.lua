-- diagram.lua
-- Converts mermaid code blocks to raw HTML that Mermaid.js can render client-side

function CodeBlock(block)
  if block.classes[1] == "mermaid" then
    return pandoc.RawBlock("html", '<pre class="mermaid">\n' .. block.text .. '\n</pre>')
  end
end