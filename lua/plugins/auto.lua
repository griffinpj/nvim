vim.cmd([[
augroup load_session
    autocmd!
    autocmd VimEnter * nested lua load_session()
augroup END
]])

function load_session()
    if vim.fn.argc() == 0 and vim.v.this_session == nil and not vim.bo.modified then
        if vim.fn.filereadable('Session.vim') ~= 0 then
            vim.cmd('source Session.vim')
        elseif vim.fn.exists(':Obsession') ~= 0 then
            vim.cmd('Obsession')
        end
    end
end

