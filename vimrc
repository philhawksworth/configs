set nocompatible " must be the first line
filetype on
filetype indent on
filetype plugin on
set laststatus=2
syntax on
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
