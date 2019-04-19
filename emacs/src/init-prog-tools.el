;;; -*- lexical-binding: t; -*-

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package ediff
  :config
  (setq ediff-window-setup-function 'ediff-setup-windows-plain))

(use-package magit
  :defer t
  :config
  (setq magit-completing-read-function 'ivy-completing-read))

(use-package evil-magit :after magit)

(use-package git-timemachine
  ;; mode key bindings provided by evil-collection
  :commands git-timemachine)

(use-package flycheck
  :hook (haskell-mode . flycheck-mode))

(add-hook 'prog-mode-hook
          '(lambda ()
             (setq show-trailing-whitespace t)))

(use-package attrap :commands attrap-attrap)

(use-package fill-column-indicator
  :commands fci-mode)

(provide 'init-prog-tools)