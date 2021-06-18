;(require 'package)
;(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
;(add-to-list 'auto-mode-alist '("\\.\\(org\\  |org_archive\\|txt\\)$" . org-mode))
;(add-hook 'org-mode-hook 'turn-on-font-lock)
;(require 'org)
;(require 'org-habit)

(setq org-agenda-files (directory-files-recursively "~/org/" "\\.org$"))
(setq org-refile-targets '((nil :maxlevel . 3) (org-agenda-files :maxlevel . 3)))
(setq org-todo-keywords '((sequence "NEXT" "HOLD" "TODO(t@)" "|" "DONE(d@)" "FAIL(f@)")))
(setq org-default-notes-file "~/org/index.org") 
;(setq initial-buffer-choice (concat "~/org/journals/" (format-time-string "%Y_%m_%d.org")))
(setq initial-buffer-choice (concat "~/org/journals/" (format-time-string "%YW%W.org")))
;(setq initial-buffer-choice (concat "~/org/index.org"))

(setq org-capture-templates
   `(("t" "Todo" entry (file, (concat "~/org/journals/" (format-time-string "%Y_%m_%d.org")))
        "* TODO %?\n%<SHEDULED: <%Y-%m-%d>>")
    ("j" "Journal" entry (file, (concat "~/org/journals/" (format-time-string "%Y_%m_%d.org")))
        "* %<%H:%M> %?")))

(global-set-key "\C-cr" 'org-capture)
(global-set-key (kbd "C-c o") (lambda () (interactive) (find-file (concat "~/org/journals/" (format-time-string "%Y_%m_%d.org")))))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;(defun org-toc ()
  ;"Generate a table of contents for org-files in this directory."
  ;(interactive)
  ;(let ((org-agenda-files (f-entries "." (lambda (f) (f-ext? f "org")) t)))
    ;(helm-org-agenda-files-headings)))

;(defun org-toc ()
  ;(interactive)
  ;(let ((headings (delq nil (cl-loop for f in (f-entries "." (lambda (f) (f-ext? f "org")) t)
                  ;append
                  ;(with-current-buffer (find-file-noselect f)
                    ;(org-map-entries
                     ;(lambda ()
                       ;(when (> 2 (car (org-heading-components)))
                     ;(cons f (nth 1 (org-heading-components)))))))))))
    ;(switch-to-buffer (get-buffer-create "*toc*"))
    ;(erase-buffer)
    ;(org-mode)
    ;(cl-loop for (file . heading) in headings 
      ;do
      ;(insert (format "* [[%s::*%s]]\n" file heading)))))

(provide 'init-org)

(global-set-key (kbd "C-c p") 'switch-to-prev-buffer)
(global-set-key (kbd "C-c n") 'switch-to-next-buffer)
