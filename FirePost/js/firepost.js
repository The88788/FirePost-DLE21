/* FirePost UI for DLE 21. No dependency on Bootstrap JS or a jQuery version. */
(() => {
    'use strict';
    const root = document.documentElement;
    const search = document.querySelector('#header-search');
    let searchOpener;
    let typoRange;
    document.addEventListener('selectionchange', () => {
        const selection = window.getSelection();
        if (selection?.rangeCount && selection.toString().trim() && document.querySelector('.blog-content')?.contains(selection.anchorNode) && document.querySelector('.blog-content')?.contains(selection.focusNode)) {
            typoRange = selection.getRangeAt(0).cloneRange();
        }
    });
    // Keep DLE's generated tables and upload controls; add presentation only.
    document.querySelectorAll('.firepost-stats a[href*="doaction=newpm"]').forEach(link => {
        const cell = link.closest('td');
        if (!cell) return;
        cell.replaceChildren(link);
        link.textContent = 'Написать';
        link.title = 'Написать личное сообщение';
        link.classList.add('stats-message-link');
    });
    document.querySelectorAll('.firepost-stats thead td:last-child').forEach(cell => { cell.textContent = 'Сообщение'; });
    document.querySelectorAll('.qq-upload-button').forEach(button => {
        button.setAttribute('role', 'button');
        button.tabIndex = 0;
        button.addEventListener('keydown', event => {
            if (event.key === 'Enter' || event.key === ' ') { event.preventDefault(); button.click(); }
        });
    });
    const themeButton = document.querySelector('.theme-toggle');
    const themedFrames = new WeakSet();
    function themeEditors() {
        const dark = root.dataset.theme === 'dark';
        document.querySelectorAll('iframe.tox-edit-area__iframe').forEach(frame => {
            if (!themedFrames.has(frame)) {
                themedFrames.add(frame);
                frame.addEventListener('load', themeEditors);
            }
            try {
                const doc = frame.contentDocument;
                if (!doc?.head) return;
                let style = doc.getElementById('firepost-editor-theme');
                if (!style) { style = doc.createElement('style'); style.id = 'firepost-editor-theme'; doc.head.append(style); }
                const css = dark ? 'body{background:#181d2b!important;color:#edf0f7!important}a{color:#b9b4ff}blockquote{border-color:#3b4357}' : '';
                if (style.textContent !== css) style.textContent = css;
            } catch (_) { /* Only same-origin editor frames can be themed. */ }
        });
    }
    function setTheme(dark) {
        root.dataset.theme = dark ? 'dark' : 'light';
        themeEditors();
        if (themeButton) {
            themeButton.setAttribute('aria-pressed', String(dark));
            themeButton.setAttribute('aria-label', dark ? 'Включить светлую тему' : 'Включить тёмную тему');
        }
    }
    try { setTheme(localStorage.getItem('firepost-theme') === 'dark'); } catch (_) { setTheme(false); }
    new MutationObserver(records => {
        if (records.some(record => [...record.addedNodes].some(node => node.nodeType === 1 && (node.matches?.('iframe.tox-edit-area__iframe') || node.querySelector?.('iframe.tox-edit-area__iframe'))))) themeEditors();
    }).observe(document.body, {childList:true, subtree:true});
    document.querySelector('#pmlist_doaction')?.setAttribute('aria-label', 'Действие с выбранными сообщениями');
    function closeDropdowns() {
        document.querySelectorAll('.dropdown-menu.show').forEach(menu => menu.classList.remove('show'));
        document.querySelectorAll('[data-toggle="dropdown"]').forEach(button => button.setAttribute('aria-expanded', 'false'));
    }
    function closeSideMenu() {
        document.querySelectorAll('.fixed-sidebar').forEach(menu => menu.classList.remove('lg-menu-open'));
        document.querySelector('.closeMask')?.remove();
        document.querySelector('.toggler-open')?.setAttribute('aria-expanded', 'false');
    }
    function closeSearch() {
        if (!search?.classList.contains('open')) return;
        search.classList.remove('open');
        searchOpener?.focus();
    }
    document.addEventListener('click', async event => {
        const target = event.target;
        if (target.closest('.report-typo')) {
            const selection = window.getSelection();
            if (typoRange && selection) { selection.removeAllRanges(); selection.addRange(typoRange); }
            if (!selection?.toString().trim()) {
                window.DLEPush?.info('Сначала выделите в статье фрагмент с ошибкой — до 255 символов.');
            } else if (window.jQuery) {
                window.jQuery(document).trigger(window.jQuery.Event('keydown', {which:13, keyCode:13, ctrlKey:true}));
            }
        }
        const toggle = target.closest('[data-toggle="dropdown"]');
        if (toggle) {
            const menu = toggle.parentElement.querySelector('.dropdown-menu');
            if (!menu) return;
            const opening = !menu.classList.contains('show');
            closeDropdowns();
            menu.classList.toggle('show', opening);
            toggle.setAttribute('aria-expanded', String(opening));
            if (opening) menu.querySelector('input, a, button')?.focus();
            return;
        }
        if (!target.closest('.dropdown')) closeDropdowns();
        if (target.closest('.theme-toggle')) {
            const dark = root.dataset.theme !== 'dark';
            setTheme(dark);
            try { localStorage.setItem('firepost-theme', dark ? 'dark' : 'light'); } catch (_) { /* Storage may be blocked. */ }
        }
        if (target.closest('a[href="#header-search"]')) {
            event.preventDefault();
            searchOpener = target.closest('a');
            search?.classList.add('open');
            search?.querySelector('input[type="search"]')?.focus();
        }
        if (target === search || target.closest('#header-search .close')) closeSearch();
        if (target.closest('.toggler-open')) {
            closeSideMenu();
            target.closest('.fixed-sidebar').classList.add('lg-menu-open');
            target.closest('button').setAttribute('aria-expanded', 'true');
            const mask = document.createElement('div');
            mask.className = 'closeMask';
            document.querySelector('#wrapper').append(mask);
        }
        if (target.closest('.toggler-close, .closeMask')) closeSideMenu();
        if (target.closest('.drop-btn')) {
            const button = target.closest('.drop-btn');
            const menu = button.parentElement.querySelector('.drop-menu');
            const open = menu?.classList.toggle('show');
            button.setAttribute('aria-expanded', String(Boolean(open)));
        } else if (!target.closest('.search-filter')) {
            document.querySelectorAll('.drop-menu.show').forEach(menu => menu.classList.remove('show'));
        }
        if (target.closest('.share-article')) {
            const button = target.closest('.share-article');
            const status = button.parentElement.querySelector('.share-status');
            try {
                if (navigator.share) await navigator.share({title: document.title, url: location.href});
                else {
                    await navigator.clipboard.writeText(location.href);
                    status.textContent = 'Ссылка скопирована';
                }
            } catch (error) {
                if (error.name !== 'AbortError') {
                    status.textContent = '';
                    const input = document.createElement('input');
                    input.readOnly = true; input.value = location.href;
                    input.setAttribute('aria-label', 'Ссылка на публикацию');
                    status.append(input); input.select();
                }
            }
        }
    });
    document.addEventListener('keydown', event => {
        if (event.key === 'Escape') { closeDropdowns(); closeSideMenu(); closeSearch(); document.querySelectorAll('.drop-menu.show').forEach(menu => menu.classList.remove('show')); }
        if ((event.ctrlKey || event.metaKey) && event.code === 'KeyK') {
            event.preventDefault(); searchOpener = document.activeElement;
            search?.classList.add('open'); search?.querySelector('input[type="search"]')?.focus();
        }
        if (search?.classList.contains('open') && event.key === 'Tab') {
            const items = [...search.querySelectorAll('input:not([type="hidden"]),button')];
            const first = items[0], last = items[items.length - 1];
            if (event.shiftKey && document.activeElement === first) { event.preventDefault(); last.focus(); }
            else if (!event.shiftKey && document.activeElement === last) { event.preventDefault(); first.focus(); }
        }
    });
    function updateScroll() { document.querySelector('.scrollup')?.classList.toggle('back-top', window.scrollY > 500); }
    window.addEventListener('scroll', updateScroll, {passive:true});
    updateScroll();
})();
