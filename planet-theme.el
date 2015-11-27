;;; planet-theme.el --- A dark theme inspired by Gmail's 'Planets' theme of yore

;; Copyright (C) 2012 - 2015 Charlie McMackin

;; Author: Charlie McMackin <charlie.mac@gmail.com>
;; URL: https://github.com/cmack/emacs-planet-theme
;; Keywords: themes
;; Version: 0.1
;; Package-Requires: ((emacs "24"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.



;;; Commentary:

;; Requirements: Emacs 24
;;
;; Source and preview screenshots can be found on github:
;; https://github.com/cmack/emacs-planet-theme

;;; Credits:

;; I started this theme's color palette based on a Google Gmail theme by the same
;; name. Google has since changed that theme completely but I still enjoy the
;; readability of the original. Palette wise, I plan to keep the ground colors
;; the same but will add accent colors as I find them and feel they fit.

;;; Code:

(deftheme planet
  "A dark theme inspired by Gmail's 'Planets' theme of yore")

(let ((class '((class color) (min-colors 89)))
      (planet-fg      "#8898a9")
      (planet-fg-1    "#d2dde8")
      (planet-fg-2    "#c4dde8")
      (planet-bg      "#192129")
      (planet-bg-2    "#090c10")
      (planet-bg-3    "#243248")
      (planet-bg-4    "#2A3A53")
      (planet-blue    "#729fcf")
      (planet-green   "#649d8a")
      (planet-purple  "#a6a1ea")
      (planet-warning "#e9b96e")
      (planet-error   "#ff8683"))
  (custom-theme-set-faces
   'planet

   `(default ((,class (:foreground ,planet-fg :background ,planet-bg))))

   ;; basic coloring
   '(bold ((t (:bold t))))
   '(bold-italic ((t (:bold t :italic t))))
   '(cursor ((t (:background "white"))))
   '(ff-paths-non-existant-file-face ((t (:foreground "NavyBlue" :bold t))))
   `(fringe ((,class (:background ,planet-bg-2))))
   `(header-line ((,class (:background ,planet-bg-3 :foreground ,planet-fg-2 :box nil))))
   `(highlight ((,class (:foreground ,planet-bg :background ,planet-fg-2))))
   '(italic ((t (:italic t))))
   `(lazy-highlight ((,class (:foreground ,planet-bg :background ,planet-blue :bold t))))
   '(mouse ((t (:background "sienna3"))))
   `(region ((,class (:foreground ,planet-bg :background ,planet-fg-2))))
   `(secondary-selection ((,class (:foreground ,planet-bg :background ,planet-blue))))
   '(underline ((t (:underline t))))

   ;; company
   `(company-echo-common ((t (:foreground ,planet-error))))
   `(company-preview ((t (:background ,planet-bg-4 :foreground "wheat"))))
   `(company-preview-common ((t (:inherit company-preview :foreground ,planet-fg-2 :weight bold))))
   '(company-scrollbar-bg ((t (:inherit company-tooltip))))
   `(company-scrollbar-fg ((t (:background ,planet-fg))))
   `(company-tooltip ((t (:background ,planet-bg-2 :foreground ,planet-fg-1))))
   `(company-tooltip-annotation ((t (:inherit company-tooltip :foreground ,planet-fg))))
   `(company-tooltip-common ((t (:inherit company-tooltip :foreground ,planet-warning))))
   `(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :foreground ,planet-warning))))
   `(company-tooltip-selection ((t (:inherit company-tooltip :background ,planet-bg-4))))

   ;; cperl
   `(cperl-array-face ((,class (:foreground ,planet-fg-2 :background ,planet-bg :bold t))))
   `(cperl-hash-face ((,class (:foreground ,planet-fg-2 :background ,planet-bg :bold t))))

   ;; custom
   '(custom-button-face ((t (nil))))
   '(custom-changed-face ((t (:foreground "white" :background "blue"))))
   '(custom-documentation-face ((t (nil))))
   '(custom-face-tag-face ((t (:underline t))))
   '(custom-group-tag-face ((t (:foreground "blue" :underline t))))
   '(custom-group-tag-face-1 ((t (:foreground "red" :underline t))))
   '(custom-invalid-face ((t (:foreground "yellow" :background "red"))))
   '(custom-modified-face ((t (:foreground "white" :background "blue"))))
   '(custom-rogue-face ((t (:foreground "pink" :background "black"))))
   '(custom-saved-face ((t (:underline t))))
   '(custom-set-face ((t (:foreground "blue" :background "white"))))
   '(custom-state-face ((t (:foreground "dark green"))))
   '(custom-variable-button-face ((t (:bold t :underline t))))
   '(custom-variable-tag-face ((t (:foreground "blue" :underline t))))

   ;; diff
   `(diff-removed ((,class (:foreground ,planet-bg-2 :background ,planet-error))))
   `(diff-added ((,class (:foreground ,planet-bg-2 :background ,planet-green))))

   ;; erc
   '(erc-action-face ((t (:bold t :weight bold))))
   '(erc-bold-face ((t (:bold t :weight bold))))
   '(erc-command-indicator-face ((t (:bold t :weight bold))))
   '(erc-current-nick-face ((t (:bold t :foreground "DarkTurquoise"))))
   '(erc-default-face ((t (nil))))
   '(erc-direct-msg-face ((t (:foreground "#e9b96e"))))
   '(erc-error-face ((t (:foreground "red"))))
   `(erc-header-line ((,class (:background ,planet-bg-3 :foreground ,planet-fg))))
   '(erc-input-face ((t (:foreground "brown"))))
   `(erc-inverse-face ((,class (:background ,planet-fg :foreground ,planet-bg))))
   '(erc-my-nick-face ((t (:bold t :foreground "brown" :weight bold))))
   '(erc-nick-default-face ((t (:bold t :weight bold))))
   '(erc-nick-msg-face ((t (:bold t :foreground "IndianRed" :weight bold))))
   '(erc-notice-face ((t (:bold t :foreground "SlateBlue" :weight bold))))
   `(erc-prompt-face ((,class (:bold t :background ,planet-bg :foreground ,planet-blue :weight bold))))
   ;; '(erc-timestamp-face ((t (:bold t :foreground "green"))))
   '(erc-underline-face ((t (:underline t))))

   ;; font-lock
   `(font-lock-builtin-face ((,class (:bold t :foreground ,planet-fg-1))))
   '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   '(font-lock-comment-face ((t (:foreground "grey40" :italic t))))
   `(font-lock-constant-face ((,class (:foreground ,planet-purple))))
   '(font-lock-doc-face ((t (:foreground "grey50"))))
   `(font-lock-function-name-face ((,class (:foreground ,planet-blue :bold t))))
   `(font-lock-keyword-face ((,class (:foreground ,planet-fg-2 :bold t))))
   `(font-lock-negation-char-face ((,class (:foreground ,planet-warning :bold nil))))
   '(font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face))))
   `(font-lock-string-face ((,class (:foreground ,planet-green :bold nil))))
   `(font-lock-type-face ((,class (:foreground ,planet-warning))))
   `(font-lock-variable-name-face ((,class (:foreground ,planet-fg-2))))
   `(font-lock-warning-face ((,class (:foreground ,planet-error :bold t))))

   ;; helm
   `(helm-candidate-number ((t (:foreground "yellow" :background ,planet-bg-4))))
   `(helm-ff-directory ((t (:foreground ,planet-blue :bold t))))
   `(helm-ff-dotted-directory ((t (:foreground ,planet-fg-1))))
   `(helm-ff-file ((t (:foreground ,planet-fg))))
   `(helm-ff-prefix ((t (:foreground ,planet-fg-2  :background ,planet-bg-3))))
   `(helm-match ((t (:foreground ,planet-fg-2 :bold t))))
   '(helm-selection ((t (:inherit highlight))))
   `(helm-source-header ((t (:background ,planet-bg-2 :foreground ,planet-fg :weight bold :height 1.3))))

   ;; ido
   `(ido-first-match ((t (:foreground ,planet-blue))))
   `(ido-incomplete-regexp ((t (:foreground ,planet-error))))
   `(ido-indicator ((t (:foreground ,planet-purple))))
   `(ido-only-match ((t (:foreground ,planet-green))))
   `(ido-subdir ((t (:foreground ,planet-warning))))
   `(ido-virtual ((t (:foreground ,planet-fg-1))))

   ;; js2
   `(js2-error-face ((,class (:foreground ,planet-error))))
   `(js2-external-variable ((,class (:foreground ,planet-warning))))
   `(js2-function-param ((,class (:foreground ,planet-green))))
   `(js2-warning-face ((,class (:underline ,planet-warning))))

   ;; magit
   `(magit-diff-add ((,class (:inherit diff-added))))
   `(magit-diff-del ((,class (:inherit diff-removed))))
   `(magit-diff-file-header ((,class (:background ,planet-bg-4 :foreground ,planet-fg-2))))
   `(magit-diff-hunk-header ((,class (:background ,planet-bg-2 :foreground ,planet-fg-1))))
   `(magit-diff-none ((,class (:foreground ,planet-fg :background ,planet-bg-2))))

   ;; minibuffer
   `(minibuffer-prompt ((t (:foreground ,planet-fg-2 :bold t :background nil))))

   ;; mode-line

   `(mode-line ((,class (:background ,planet-bg-4 :foreground ,planet-fg-2))))
   `(mode-line-buffer-id ((,class (:foreground ,planet-fg-1))))
   '(mode-line-emphasis ((t (:bold t :weight bold))))
   `(mode-line-highlight ((,class (:box (:line-width 1 :color ,planet-bg-2 :style released-button)))))
   `(mode-line-inactive ((,class (:background ,planet-bg-2 :foreground ,planet-fg :box (:line-width -1 :color ,planet-bg-2 :style nil) :weight light))))
   `(modeline-mousable ((t (:background ,planet-bg-4 :foreground ,planet-fg-2))))
   `(modeline-mousable-minor-mode ((t (:background ,planet-bg-4 :foreground ,planet-fg-2))))

   ;; org

   ;; show-paren
   '(show-paren-match-face ((t (:background "light blue"))))
   '(show-paren-mismatch-face ((t (:foreground "white" :background "purple"))))

   ;; slime
   `(slime-error-face ((,class (:underline ,planet-error))))
   ;; `(slime-note-face ((,class (:underline ,planet-warning))))
   `(slime-repl-inputed-output-face ((,class (:foreground ,planet-purple))))
   ;; `(slime-style-warning-face ((,class (:underline ,planet-warning))))
   `(slime-warning-face ((,class (:underline ,planet-warning))))



   ;; speedbar
   '(speedbar-button-face ((t (:foreground "green4"))))
   '(speedbar-directory-face ((t (:foreground "blue4"))))
   '(speedbar-file-face ((t (:foreground "cyan4"))))
   '(speedbar-highlight-face ((t (:background "green"))))
   '(speedbar-selected-face ((t (:foreground "red"))))
   '(speedbar-tag-face ((t (:foreground "brown"))))

   ;; whitespace-mode

   ;; widgets
   '(widget-button-face ((t (:bold t))))
   '(widget-button-pressed-face ((t (:foreground "red"))))
   '(widget-documentation-face ((t (:foreground "dark green"))))
   '(widget-field-face ((t (:background "gray85"))))
   '(widget-inactive-face ((t (:foreground "dim gray"))))
   '(widget-single-line-field-face ((t (:background "gray85"))))

   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'planet)

;;; planet-theme.el ends here
