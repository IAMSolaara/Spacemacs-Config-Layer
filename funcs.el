(defun my-backup-file-name (fpath)
  "Return a new file path of a given file path.
If the new path's directories does not exist, create them."
  (let* (
         (backupRootDir "~/.emacs.d/backup/")
         (filePath (replace-regexp-in-string "[A-Za-z]:" "" fpath )) ; remove Windows driver letter in path, for example, “C:”
         (backupFilePath (replace-regexp-in-string "//" "/" (concat backupRootDir filePath "~") ))
         )
    (make-directory (file-name-directory backupFilePath) (file-name-directory backupFilePath))
    backupFilePath
    )
  )
