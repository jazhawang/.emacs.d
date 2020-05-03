

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'calendar)
(defvar package-download-directory "~/.emacs.d/jack_emacs_packages.el")
(defvar package-setup-directory "~/.emacs.d/jack_emacs_package_load.el")
(defvar jack-mode-directory "~/.emacs.d/jack_mode.el")


(load jack-mode-directory)
(load package-download-directory)
(load package-setup-directory)


(setq initial-major-mode 'lisp-mode)

(setq initial-scratch-message (format "\

;;      ██╗ █████╗  ██████╗██╗  ██╗██╗███████╗
;;      ██║██╔══██╗██╔════╝██║ ██╔╝╚═╝██╔════╝
;;      ██║███████║██║     █████╔╝    ███████╗
;; ██   ██║██╔══██║██║     ██╔═██╗    ╚════██║
;; ╚█████╔╝██║  ██║╚██████╗██║  ██╗   ███████║
;;  ╚════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚══════╝
                                            
;; ███████╗███╗   ███╗ █████╗  ██████╗███████╗ 
;; ██╔════╝████╗ ████║██╔══██╗██╔════╝██╔════╝ 
;; █████╗  ██╔████╔██║███████║██║     ███████╗ 
;; ██╔══╝  ██║╚██╔╝██║██╔══██║██║     ╚════██║ 
;; ███████╗██║ ╚═╝ ██║██║  ██║╚██████╗███████║ 
;; ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝                                
;; %s
" (calendar-date-string (calendar-current-date) nil)))


;; Sets the default indent style for c-like programming languages
(setq c-default-style '((java-mode . "bsd")
                        (awk-mode . "awk")
                        (other . "bsd")))

;; Sets the default indent spacing for c-like programming languages
(setq c-basic-offset 2)

;; changes how scrolling works, only scrolls down by one line at a time
(setq scroll-step 1
      scroll-conservatively 10000)

(setq-default indent-tabs-mode nil) ; stop using tabs to indent
                                        ;(setq tab-always-indent 'complete)

(setq-default tab-width 2)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; disable startup screen
(setq inhibit-startup-screen t)



(menu-bar-mode -1) ;; no menubar
(tool-bar-mode -1) ;; no toolbar
;; (scroll-bar-mode -1) ;; disable scroll bars
;; (set-frame-font "Anonymous Pro-9")
(setq-default truncate-lines 1) ;; no wordwrap


(setq user-full-name "Zhao Wang")
(put 'narrow-to-region 'disabled nil)

;; enable narrowing commands
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-defun 'disabled nil)



(load-theme 'solarized-light t)
;;(add-hook 'text-mode-hook 'jack-mode)

(jack-mode)


(toggle-debug-on-error t)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a06658a45f043cd95549d6845454ad1c1d6e24a99271676ae56157619952394a" "939ea070fb0141cd035608b2baabc4bd50d8ecc86af8528df9d41f4d83664c6a" "aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" default)))
 '(debug-on-error t)
 '(package-selected-packages
   (quote
    (xterm-keybinder gruvbox-theme markdown-mode treemacs zoom docker-api docker chess latex-pretty-symbols typescript javascript multiple-cursors aggressive-indent which-key helm rainbow-delimiters smart-mode-line solarized-theme yasnippet fancy-narrow anzu ace-window smex smartparens avy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
