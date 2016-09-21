set guifont=Sauce\ Code\ Powerline\ ExtraLight:h14
if has("gui_macvim")
   let macvim_hig_shift_movement = 1
   set transparency=7

   let g:hybrid_custom_term_colors = 1
   let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
   colorscheme hybrid
endif
