function! s:main() abort
  call writefile(['called main'], '/dev/stderr')

  try
    call writefile(['try without error'], '/dev/stderr')
  catch
    call writefile(['catch 1'], '/dev/stderr')
  endtry

  try
    call writefile(['try w/ error'], '/dev/stderr')
    throw 'debug error!'
  catch
    call writefile(['catch debug error'], '/dev/stderr')
  endtry

  call writefile(['end main'], '/dev/stderr')
endfunction

call s:main()
