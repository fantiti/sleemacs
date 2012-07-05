;; PHP-Mode
(add-to-list 'load-path "~/.emacs.d/plugins/php")
(add-to-list 'load-path "/opt/php-mode")
(require 'php-mode)
(require 'php-electric)
(require 'php-completion)

;; PHP+-mode
;; Install : git clone https://github.com/echosa/phpplus-mode.git /opt/phpplus-mode
(add-to-list  'load-path "/opt/phpplus-mode")
;(require 'php+-mode)
;(php+-mode-setup)
(require 'php-test)
(require 'php-project)
(require 'php-tags)


(setq php-manual-path "~/.emacs.d/php-manual")

(add-hook  'php-mode-hook
           (lambda ()
               (make-variable-buffer-local 'ac-sources)
               (add-to-list 'ac-sources 'ac-source-php-completion)
               ;; if you like patial match,
               ;; use `ac-source-php-completion-patial' instead of `ac-source-php-completion'.
               ;;(add-to-list 'ac-sources 'ac-source-php-completion-patial)
               (auto-complete-mode t)))
