function bind_bang
  switch (commandline -t)
  case "!"
    set last (string trim -r -- (history -n 1))
    commandline -t "$last "; commandline -f repaint
  case "*"
    commandline -i !
  end
end
