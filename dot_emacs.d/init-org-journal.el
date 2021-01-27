(setq org-journal-dir "~/org/")
(setq org-journal-date-format "%A, %d %B %Y")
(setq org-journal-file-format "%Y_%m_%d.org")

(setq filePath (concat org-journal-dir (format-time-string "%Y-%m_%d.org")))
(global-set-key (kbd "C-c j")
    (lambda () (interactive) (find-file filePath)))
