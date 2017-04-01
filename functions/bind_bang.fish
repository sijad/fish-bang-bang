function bind_bang
  switch (commandline -t)
  case "!"
    commandline -t (history -n 1); commandline -f repaint
  case "*"
    commandline -i !
  end
end
