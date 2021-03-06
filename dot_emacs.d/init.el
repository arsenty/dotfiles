(setq default-input-method "russian-computer")
(setq split-width-threshold 0)

;(add-to-list 'package-archives
    ;'("melpa-stable" . "https://melpa.org/packages/") t)
;(load "f")
;(load "~/.emacs.d/init-org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe org-mouse ol-rmail ol-w3m org-checklist org-mac-iCal org-mac-link org-notify org-panel))
 '(package-selected-packages '(org helm-org s f calfw-org calfw dashboard org-super-agenda helm ##))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(provide 'init)
