
* [progressbar:spinner:new()](#progressbarspinnernew)
* [progressbar:spinner:spin()](#progressbarspinnerspin)


## progressbar:spinner:new()

Creates new spinner coprocess. Spinner is inactive until
`progressbar:spinner:spin()` is called.

### Arguments

* **$1** (var): Variable name to save ID reference to spinner.

## progressbar:spinner:spin()

Consume stdin and display spinner, rotated per each line.
Untouched stdin will be printed out back on stdout.

### Arguments

* **$1** (id): Spinner ID reference.

### Output on stdout

* Untouched stdin.

