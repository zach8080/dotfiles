(let ((file-name-handler-alist nil))
(setq-default gc-cons-threshold 100000000)

;;(package-initialize)
(org-babel-load-file (concat user-emacs-directory "config.org"))
(put 'narrow-to-region 'disabled nil)
(setq-default gc-cons-threshold 1000000)
)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "2a739405edf418b8581dcd176aaf695d319f99e3488224a3c495cb0f9fd814e3" "cdfc5c44f19211cfff5994221078d7d5549eeb9feda4f595a2fd8ca40467776c" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" default))
 '(fci-rule-color "#383838")
 '(ls-lisp-verbosity '(links uid gid))
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(org-agenda-files '("~/documents/uni/checklist.org" "~/sync/_.org"))
 '(package-selected-packages
   '(rust-mode spacemacs-theme yasnippet-snippets esup emms ac-org zenburn-theme yasnippet web-mode use-package speed-type spacegray-theme magit iedit hungry-delete ace-window ac-helm ivy ace-window auctex company company-auctex deft ido-completing-read+ use-package smex smart-mode-line swiper wttrin ag multi-term diminish nov))
 '(pdf-tools-handle-upgrades nil)
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(show-paren-mode t)
 '(spacemacs-theme-comment-bg nil)
 '(spacemacs-theme-org-bold nil)
 '(spacemacs-theme-org-height nil)
 '(spacemacs-theme-org-highlight nil)
 '(spacemacs-theme-org-priority-bold nil)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Roboto Mono" :foundry "pyrs" :slant normal :weight normal :height 120 :width normal)))))
(put 'dired-find-alternate-file 'disabled nil)
