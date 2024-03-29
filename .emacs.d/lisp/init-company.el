;; Auto completion
(use-package company
  :config
  (setq company-idle-delay 0
        company-minimum-prefix-length 4
        company-selection-wrap-around t))

(global-company-mode)
(global-display-line-numbers-mode)
;; Org-Mode initial setup
(use-package org
  :bind
  (("C-c C-l" . org-store-link)
   ("C-c a" . org-agenda)
   ("C-c c" . org-capture)))
;;(set-frame-font "CaskaydiaCove NF 12" nil t)
(setq org-hide-emphasis-markers t)


(use-package company
  ;; :after lsp-mode
  :hook (prog-mode . company-mode)
  :bind (:map company-active-map
              ("<tab>" . company-complete-selection))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0))

(use-package company-box
  :hook (company-mode . company-box-mode))
(use-package yasnippet :ensure t)
(require 'yasnippet)
(yas-global-mode 1)
(provide 'init-company)
