function numeronym --description 'show numeronym'
  echo -n "Input base string: "
  read base
  
  set strlen (string length $base)
  set mid (math $strlen -2)
  set first (string sub --start=1 --length=1 $base)
  set last (string sub --start=-1 --length=1 $base)
  set numeronym (string join "" $first $mid $last)
  echo $numeronym
end
