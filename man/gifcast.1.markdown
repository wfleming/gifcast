# gifcast(1) "April 2017" gifcast "User Manuals"

## NAME

`gifcast` - GIF screen recorder

## SYNOPSIS

`gifcast [options]...`

## DESCRIPTION

When no flag specifying what to record (i.e. `-a` or `-w`) is passed, gifcast
will prompt you to select an area of your screen to record with your mouse.

## OPTIONS

`-a`
  Record your entire screen.

`-w`
  Select a specific window to record with your mouse.

`-s` *N*
  Scale the final gif to width N. For larger recordings, this can help keep
  size down. Default is to not scale at all.

`-f` *N*
  Set the FPS of the final gif. Default is 15.

`-o` *FILE*
  Write the final GIF to the specified file. If not specified, the final GIF
  will be a timestamped file in $HOME.

`-h`
  Show this help message.

## AUTHOR

Will Fleming <will@flemi.ng>

## WEBSITE

https://github.com/wfleming/gifcast

## SEE ALSO

recordmydesktop(1), ffmpeg(1), xwininfo(1)
