-- Este plugin faz com que destaque no código as
-- outras palavras que sãi iguais a palavra onde o curos está atualmente
return {
  'RRethy/vim-illuminate',
  event = { 'BufReadPre', 'BufNewFile' },
  -- event = { 'BufEnter' },
}
