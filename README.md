# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

---

## Documentation

Install the LazyVim Starter

- Make a backup of your current Neovim files:

```
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

- Clone the starter
```
git clone https://github.com/Daljeetone/LazyNeoVim.git ~/.config/nvim
```

- Remove the `.git` folder, so you can add it to your own repo later
```
rm -rf ~/.config/nvim/.git
```

- Start Neovim!
```
nvim
```

---

Apply the following diff to the jellybeans colorscheme to fix highlighting
of Comments:
In path: $HOME/.local/share/nvim/lazy/jellybeans.vim
```
diff --git a/colors/jellybeans.vim b/colors/jellybeans.vim
index 3b9bfb6..03acdb3 100644
--- a/colors/jellybeans.vim
+++ b/colors/jellybeans.vim
@@ -460,7 +460,7 @@ call s:X("Cursor",s:background_color,"b0d0f0","","","")

 call s:X("LineNr","605958",s:background_color,"NONE",s:termBlack,"")
 call s:X("CursorLineNr","ccc5c4","","NONE","White","")
-call s:X("Comment","888888","","italic","Grey","")
+call s:X("Comment","888888","","NONE","Grey","")
 call s:X("Todo","c7c7c7","","bold","White",s:termBlack)

 call s:X("StatusLine","000000","dddddd","italic","","White")
```
