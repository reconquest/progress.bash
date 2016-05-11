
* [progress:spinner:new()](#progressspinnernew)
* [progress:spinner:spin()](#progressspinnerspin)


## progress:spinner:new()

Creates new spinner coprocess. Spinner is inactive until
`progress:spinner:spin()` is called.

### Arguments

* **$1** (var): Variable name to save ID reference to spinner.

## progress:spinner:spin()

Consume stdin and display spinner, rotated per each line.
Untouched stdin will be printed out back on stdout.

### Arguments

* **$1** (id): Spinner ID reference.

### Output on stdout

* Untouched stdin.

