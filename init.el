(setq package-enable-at-startup nil)

(require 'package)
  

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'diminish)
  (package-refresh-contents)
  (package-install 'diminish))

(setq use-package-compute-statistics 1)

(setq ido-create-new-buffer 'always)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(ido-everywhere 1)

(use-package ido-completing-read+
  :ensure t
  :config
  (ido-ubiquitous-mode 1)
  (setq-default ido-auto-merge-work-directories-length -1))

(use-package smex
  :ensure t
  :bind
  ("M-x" . smex)
  ("M-X" . smex-major-mode-commands)
  :config
  (smex-initialize))

(use-package yasnippet
    :ensure t
    :defer 2
    :diminish (yas-minor-mode . "")
    :config (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t
  :defer t)

(use-package spacemacs-theme
    :ensure t
    :defer 1)

(use-package smart-mode-line
    :ensure t
    :config
    (setq sml/theme 'respectful)
    (setq sml/no-confirm-load-theme t)
    (setq sml/shorten-directory t)
    (setq sml/shorten-modes t)
    (column-number-mode 1)
    (add-to-list 'sml/replacer-regexp-list '("^~/dotfiles/" ":dots:") t)
    (sml/setup))

(use-package multi-term
    :ensure t
    :bind (("C-c t" . multi-term-dedicated-toggle)
           ("C-c z" . multi-term))
    :config
    (setq multi-term-program "/bin/bash")
    ;;(setq multi-term-program "/usr/bin/zsh")
    (setq multi-term-dedicated-close-back-to-open-buffer-p t)
    (setq multi-term-dedicated-select-after-open-p t)
    (setq multi-term-dedicated-window-height 10))

(recentf-mode 1)
(setq recentf-max-menu-items 25)

(require 'dired-x)
(setq dired-omit-files "^\\...+$")
(setq dired-listing-switches "-alh")
(add-hook 'dired-mode-hook (lambda () (dired-omit-mode 1)))

(use-package swiper
      :ensure t
      :bind ("C-c s" . swiper)
      :config
      (progn
        (setq ivy-use-virtual-buffers t)
        (setq enable-recursive-minibuffers t)))

(use-package ace-window
    :ensure t
    :diminish (ace-window-mode . "")
    :init
      (global-set-key [remap other-window] 'ace-window))

(use-package hungry-delete
  :ensure t
  :diminish (hungry-delete-mode . "")
  :config (global-hungry-delete-mode))

(use-package company
      :ensure t
      :defer 3
      :diminish (company-mode . "")
      :init
      (setq company-idle-delay 0.3)
      (setq company-begin-commands '(self-insert-command))
      (setq company-minimum-prefix-length 1)
      (setq company-tooltip-align-annotations t)
      (setq company-tooltip-limit 20)
      (setq company-dabbrev-downcase nil)
      :config
      (global-company-mode))

(use-package magit
    :ensure t
    :bind (("C-c g" . magit-status)
	   ("C-c l" . magit-log)))

(use-package speed-type
  :ensure t
  :defer t
  :config
  (add-hook 'speed-type-mode-hook 'visual-line-mode))

(defun kill-other-buffers ()
	"Kill all other buffers."
	(interactive)
	(mapc 'kill-buffer (delq (current-buffer) (buffer-list)))
	(message "Other buffers killed"))



(defun new-empty-buffer ()
    (interactive)
    (let (($buf (generate-new-buffer "zilch")))
      (switch-to-buffer $buf)
      (setq buffer-offer-save t)
      $buf
      (org-mode)
      ))

(defun dired-open-file ()
    "In dired, open the file named on this line."
    (interactive)
    (let* ((file (dired-get-filename nil t)))
      (message "Opening %s..." file)
      (call-process "xdg-open" nil 0 nil file)
      (message "Opening %s done" file)))

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(menu-bar-mode -1)
(tooltip-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(smart-mode-line-respectful spacemacs-dark))
 '(custom-safe-themes
   '("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" default))
 '(package-selected-packages
   '(speed-type hungry-delete ace-window multi-term smart-mode-line spacemacs-theme yasnippet-snippets web-mode swiper smex ido-completing-read+ diminish company))
 '(spacemacs-theme-comment-bg nil)
 '(spacemacs-theme-org-bold nil)
 '(spacemacs-theme-org-height nil)
 '(spacemacs-theme-org-highlight nil)
 '(spacemacs-theme-org-priority-bold nil))

(setq initial-scratch-message ";; Relax, its all good")

(global-set-key (kbd "<prior>")
		(lambda () (interactive) (next-line -5)))
(global-set-key (kbd "<next>")
		  (lambda () (interactive) (next-line 5)))

(global-unset-key (kbd "C-z"))

(global-set-key (kbd "C-c b") 'previous-buffer)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c d") 'dired-jump)
(global-set-key (kbd "C-c e") 'ibuffer)
(global-set-key (kbd "C-c f") 'next-buffer)
(global-set-key (kbd "C-c h") 'help)
(global-set-key (kbd "C-c j") 'clean-buffer-list)
(global-set-key (kbd "C-c k") 'kill-this-buffer)
(global-set-key (kbd "C-c n") 'new-empty-buffer)
(global-set-key (kbd "C-c m") 'flyspell-mode)
(global-set-key (kbd "C-c o") 'calc)
(global-set-key (kbd "C-c p") 'calculator)
(global-set-key (kbd "C-c q") 'read-only-mode)
(global-set-key (kbd "C-c r") 'recentf-open-files)
(global-set-key (kbd "C-c v") 'visual-line-mode)
(global-set-key (kbd "C-c x") 'imenu)
(global-set-key (kbd "C-c y") 'rename-buffer)
(global-set-key (kbd "C-c 1") 'insert-date)
(global-set-key (kbd "C-c 2") 'insert-time)
(global-set-key (kbd "C-c 3") 'insert-date-time)
(global-set-key (kbd "C-c \S-a") 'clone-indirect-buffer)
(global-set-key (kbd "C-c \S-c") 'calendar)
(global-set-key (kbd "C-c \S-d") 'ido-dired)
(global-set-key (kbd "C-c \S-e") 'eshell)
(global-set-key (kbd "C-c \S-g") 'goto-line)
(global-set-key (kbd "C-c \S-p") 'proced)
(global-set-key (kbd "C-c \S-l") 'eval-region)
(global-set-key (kbd "C-c \S-r") 'frame-resize)
(global-set-key (kbd "C-c \S-s") 'speedbar)
(global-set-key (kbd "C-c \S-w") 'eww)
(global-set-key (kbd "C-c \S-v") 'goto-todo)
(global-set-key (kbd "C-c \S-z") 'zone)

(define-key dired-mode-map (kbd "1") (lambda () (interactive) (find-alternate-file "~/")))
(define-key dired-mode-map (kbd "2") (lambda () (interactive) (find-alternate-file "~/Documents")))
(define-key dired-mode-map (kbd "3") (lambda () (interactive) (find-alternate-file "~/Downloads")))
(define-key dired-mode-map (kbd "4") (lambda () (interactive) (find-alternate-file "~/Documents/books")))
(define-key dired-mode-map (kbd "5") (lambda () (interactive) (find-alternate-file "~/code")))
(define-key dired-mode-map (kbd "6") (lambda () (interactive) (find-alternate-file "~/pCloudDrive")))
(define-key dired-mode-map (kbd "7") (lambda () (interactive) (find-alternate-file "~/pCloudDrive/sync")))
(define-key dired-mode-map (kbd "8") (lambda () (interactive) (find-alternate-file "~/Videos")))
(define-key dired-mode-map (kbd "9") (lambda () (interactive) (find-alternate-file "~/documents/books/")))
(define-key dired-mode-map (kbd "0") (lambda () (interactive) (find-alternate-file "~/documents/code/")))
(define-key dired-mode-map [S-down-mouse-1] 'dired-find-alternate-file)


(define-key dired-mode-map (kbd ",") 'dired-hide-details-mode)
(define-key dired-mode-map (kbd "z") 'dired-open-file)
(define-key dired-mode-map (kbd "/") 'dired-omit-mode)
(define-key dired-mode-map (kbd "s") 'dired-sort)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-region 'disabled nil)          ; C-x n n
(put 'narrow-to-page 'disabled nil)            ; C-x n p
(put 'scroll-left 'disabled nil)               ; C-x > or <
(put 'downcase-region 'disabled nil)           ; C-x C-l
(put 'upcase-region 'disabled nil)             ; C-x C-u
(put 'set-goal-column 'disabled nil)           ; C-x C-n ==> disable with C-u
(put 'dired-find-alternate-file 'disabled nil) ; a in dired


(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


;;This is for line wrapping
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)
(diminish 'visual-line-mode)
(diminish 'auto-revert-mode)

(delete-selection-mode t)

(setq-default cursor-type 'bar)
(blink-cursor-mode 1)

(setq zone-programs [zone-pgm-putz-with-case zone-pgm-rotate-LR-variable zone-pgm-rotate-RL-lockstep zone-pgm-rotate])

(setq confirm-kill-processes nil)


;;Go away
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;;Save Buffer State
;;(desktop-save-mode 1)

(defalias 'yes-or-no-p 'y-or-n-p)

;;highlight matching parentheses
(show-paren-mode 1)
(setq show-paren-delay 0)

;;Add other bracket
(electric-pair-mode 1)

;;new buffer mode
(setq-default major-mode 'org-mode)
(setq browse-url-new-window nil)

(defun my/org-mode-hook ()
  (set-face-attribute 'org-level-1 nil :height 1.0)
  (set-face-attribute 'org-level-2 nil :height 1.0)
  (set-face-attribute 'org-level-3 nil :height 1.0)
  (set-face-attribute 'org-level-4 nil :height 1.0)
  (set-face-attribute 'org-level-5 nil :height 1.0))

(add-hook 'org-mode-hook #'my/org-mode-hook)
