<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="alternate" type="application/rss+xml" title="JunkHack &raquo; フィード" href="//feed/">
<link rel="alternate" type="application/rss+xml" title="JunkHack &raquo; Yahoo フィード" href="//feed/yahoo/">
<link rel="alternate" type="application/rss+xml" title="JunkHack &raquo; SmartNews フィード" href="//feed/smartnews/">
<link rel="manifest" href="/wp-content/themes/jh-hew/manifest.json">
<link rel="icon alternate" href="/wp-content/themes/jh-hew/img/favicon-48.png" type="image/png">
<link rel="apple-touch-icon" href="/wp-content/themes/jh-hew/img/apple-touch-icon180.png" sizes="180x180">
<meta name="theme-color" content="#FAD641">
<meta name="apple-mobile-web-app-title" content="JunkHack">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default"> <script>if ('serviceWorker' in navigator && 'localhost' !== window.location.hostname) {
	window.addEventListener('load', function () {
		navigator.serviceWorker.register('/sw.js').then(
			function (registration) {
				console.log('ServiceWorker registration successful with scope: ', registration.scope);
			},
			function (err) {
				console.log('ServiceWorker registration failed: ', err);
			}
		);
	});
}</script> <title>WordPress.com でドメインマッピングしてサブドメインの独自ドメインを利用 &#8211; JunkHack</title>
<meta name="robots" content="max-image-preview:large">
<link rel="dns-prefetch" href="//www.googletagmanager.com">
<link rel="dns-prefetch" href="//fonts.googleapis.com">
<link rel="dns-prefetch" href="//pagead2.googlesyndication.com">
<link rel="stylesheet" id="wp-block-library-css" href="/wp-includes/css/dist/block-library/style.min.css?ver=5.9.3" type="text/css" media="all">
<style id="global-styles-inline-css" type="text/css">body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');--wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');--wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');--wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');--wp--preset--duotone--midnight: url('#wp-duotone-midnight');--wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');--wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');--wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}</style>
<link rel="stylesheet" id="wpel-style-css" href="/wp-content/plugins/wp-external-links/public/css/wpel.css?ver=2.51" type="text/css" media="all">
<link rel="stylesheet" id="mouse-css" href="/wp-content/plugins/wp-keypopup-algolia/mouse.css?ver=5.9.3" type="text/css" media="all">
<link rel="stylesheet" id="wpfront-scroll-top-css" href="/wp-content/plugins/wpfront-scroll-top/css/wpfront-scroll-top.min.css?ver=2.0.7.08086" type="text/css" media="all">
<link rel="stylesheet" id="related-frontend-css-css" href="/wp-content/plugins/ccrw_related/css/frontend-style.css?ver=0.1.0" type="text/css" media="all">
<link rel="stylesheet" id="JankHack-Hew-fonts-css" href="https://fonts.googleapis.com/css?family=Open+Sans%3A400%2C600%2C700%2C400italic%2C600italic%2C700italic%7CNoto+Serif%3A400%2C700%2C400italic%2C700italic&#038;subset=latin" type="text/css" media="all">
<link rel="stylesheet" id="genericons-css" href="/wp-content/themes/jh-hew/genericons/genericons.css?ver=3.4.1" type="text/css" media="all">
<link rel="stylesheet" id="JankHack-Hew-style-css" href="/wp-content/themes/jh-hew/style.css?ver=5.9.3" type="text/css" media="all">
<link rel="stylesheet" id="algolia-autocomplete-css" href="/wp-content/plugins/wp-search-with-algolia/css/algolia-autocomplete.css?ver=2.2.0" type="text/css" media="all"> <script type="text/javascript" src="/wp-content/plugins/jquery-manager/assets/js/jquery-3.5.1.min.js" id="jquery-core-js"></script> <script type="text/javascript" src="/wp-content/plugins/jquery-manager/assets/js/jquery-migrate-3.3.0.min.js" id="jquery-migrate-js"></script> <script type="text/javascript" src="/wp-content/plugins/wp-keypopup-algolia/mousetrap.min.js?ver=5.9.3" id="mice-js"></script> <script type="text/javascript" id="mouse-js-extra">var mouse = {"home":"\/","list":"\/list\/","search":"\/s\/"};</script> <script type="text/javascript" src="/wp-content/plugins/wp-keypopup-algolia/mouse.js?ver=5.9.3" id="mouse-js"></script>  <script type="text/javascript" src="https://www.googletagmanager.com/gtag/js?id=UA-199105184-1" id="google_gtagjs-js" async></script> <script type="text/javascript" id="google_gtagjs-js-after">window.dataLayer = window.dataLayer || [];function gtag(){dataLayer.push(arguments);}
gtag('set', 'linker', {"domains":["hack.gpl.jp"]} );
gtag("js", new Date());
gtag("set", "developer_id.dZTNiMT", true);
gtag("config", "UA-199105184-1", {"anonymize_ip":true});</script> <link rel="https://api.w.org/" href="/wp-json/">
<link rel="alternate" type="application/json" href="/wp-json/wp/v2/posts/4649">
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="/wp-includes/wlwmanifest.xml">
<meta name="generator" content="WordPress 5.9.3">
<link rel="canonical" href="/2018/10/18/domain-mapping-on-wordpress.com">
<link rel="shortlink" href="/?p=4649">
<link rel="alternate" type="application/json+oembed" href="/wp-json/oembed/1.0/embed?url=https%3A%2F%2F%2F2018%2F10%2F18%2Fdomain-mapping-on-wordpress.com">
<link rel="alternate" type="text/xml+oembed" href="/wp-json/oembed/1.0/embed?url=https%3A%2F%2F%2F2018%2F10%2F18%2Fdomain-mapping-on-wordpress.com&#038;format=xml">
<meta name="generator" content="Site Kit by Google 1.75.0">
<meta name="google-adsense-platform-account" content="ca-host-pub-2644536267352236">
<meta name="google-adsense-platform-domain" content="sitekit.withgoogle.com"> <style>.algolia-search-highlight {
				background-color: #fffbcc;
				border-radius: 2px;
				font-style: normal;
			}</style> <script async="async" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-2711753458083215" crossorigin="anonymous" type="text/javascript"></script> </head>  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-161935417-3"></script> <script>window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-161935417-3');</script> <body class="post-template-default single single-post postid-4649 single-format-standard has-sidebar has-header-image">
<div id="page" class="hfeed site">
<div id="widgets-wrapper" class="hide"><div id="secondary" class="wrap top-widget-area" role="complementary"><div id="sidebar-4" class="widget-area" role="complementary"><aside id="block-9" class="widget widget_block"><p><script async="" src="https://cse.google.com/cse.js?cx=df8210082ba786774"></script></p>
<div class="gcse-search"></div></aside></div></div></div> <a class="skip-link screen-reader-text" href="#content">コンテンツへ移動</a><header id="masthead" class="site-header" role="banner"> <a class="site-logo" href="/" title="JunkHack" rel="home noopener noreferrer" data-wpel-link="internal"> <img src="https://secure.gravatar.com/avatar/997681319c3cbb0bdcca95770d5edaa6/?s=80&#038;d=mm" width="80" height="80" alt="" class="no-grav header-image"> </a><div class="site-branding">
<h1 class="site-title"><a href="/" rel="home noopener noreferrer" data-wpel-link="internal">JunkHack</a></h1>
<h2 class="site-description">アリエクでポチった JUNKHACK</h2>
</div>
<nav id="site-navigation" class="main-navigation" role="navigation"> <button class="menu-toggle toggle-button"><span class="screen-reader-text">メインメニュー</span></button><div class="menu-new-menu-container"><ul id="menu-new-menu" class="menu">
<li id="menu-item-10686" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10686"><a href="/list/" data-wpel-link="internal" rel="noopener noreferrer">List</a></li>
<li id="menu-item-11016" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11016"><a href="/mail/" data-wpel-link="internal" rel="noopener noreferrer">CONTACT</a></li>
<li id="menu-item-10671" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10671"><a href="https://jh.gpl.jp/" data-wpel-link="external" target="_blank" rel="external noopener noreferrer" class="wpel-icon-right">Mirror Netlify<span class="wpel-icon wpel-image wpel-icon-1"></span></a></li>
</ul></div></nav><div class="toggle-wrapper"> <a href="#" class="widgets-toggle toggle-button" title="ウィジェット"> <span class="screen-reader-text">ウィジェット</span> </a>
</div></header><div id="content" class="site-content"><div id="primary" class="content-area"><main id="main" class="site-main" role="main"><article id="post-4649" class="post-4649 post type-post status-publish format-standard hentry category-wordpress category-wordpress-com"><div class="entry-wrapper">
<header class="entry-header"> <span class="entry-format theme-genericon"></span><div class="entry-meta"> <span class="posted-on">投稿日: <a href="/2018/10/18/domain-mapping-on-wordpress.com" rel="bookmark noopener noreferrer" data-wpel-link="internal"><time class="entry-date published updated" datetime="2018-10-18T04:11:52+09:00">2018年10月18日</time></a> </span><span class="posted-on">更新日:2018年10月18日</span> <span class="categories"> <a href="/category/wordpress/" rel="category tag noopener noreferrer" data-wpel-link="internal">WordPress</a>, <a href="/category/wordpress-com/" rel="category tag noopener noreferrer" data-wpel-link="internal">wordpress.com</a></span>
</div>
<div class="flex"><h1 class="entry-title">WordPress.com でドメインマッピングしてサブドメインの独自ドメインを利用</h1></div></header><div class="entry-content">
<p>さて、前回 WordPress.com の一番下の有料プラン「パーソナル」という月額400円（支払いは年間一括4800円税込）を開始しました。</p>
<p>独自ドメインは、GPL.JP というドメインでこれのサブドメイン部分に、junkhack をつけた形です。</p>
<p>で、使えるようにするにはどうしたらいいかってことを簡単に紹介します。</p>
<p>オフィシャルの日本語サポートにも情報があります。</p>
<p><a title="https://ja.support.wordpress.com/domains/" href="https://ja.support.wordpress.com/domains/" target="_blank" rel="noopener noreferrer external" data-wpel-link="external" class="wpel-icon-right">https://ja.support.wordpress.com/domains/<span class="wpel-icon wpel-image wpel-icon-1"></span></a></p>
<p>&nbsp;</p> <!--noindex--><div class="lwptoc lwptoc-center lwptoc-baseItems lwptoc-white lwptoc-notInherit" data-smooth-scroll="1" data-smooth-scroll-offset="24"><div class="lwptoc_i" style="width:80%">
<div class="lwptoc_header"> <b class="lwptoc_title" style="font-weight:800;">もくじ</b> <span class="lwptoc_toggle"> <a href="#" class="lwptoc_toggle_label" data-label="表示">非表示</a> </span>
</div>
<div class="lwptoc_items lwptoc_items-visible"><div class="lwptoc_itemWrap">
<div class="lwptoc_item"> <a href="#mu_ci"> <span class="lwptoc_item_number">1</span> <span class="lwptoc_item_label">目次</span> </a>
</div>
<div class="lwptoc_item"> <a href="#rejisutoradeDNS_she_ding"> <span class="lwptoc_item_number">2</span> <span class="lwptoc_item_label">レジストラでDNS設定</span> </a>
</div>
<div class="lwptoc_item"> <a href="#WordPresscom_de_she_ding"> <span class="lwptoc_item_number">3</span> <span class="lwptoc_item_label">WordPress.com で設定</span> </a><div class="lwptoc_itemWrap">
<div class="lwptoc_item"> <a href="#340282366920938463463374607431768211456"> <span class="lwptoc_item_number">3.1</span> <span class="lwptoc_item_label">340,282,366,920,938,463,463,374,607,431,768,211,456</span> </a>
</div>
<div class="lwptoc_item"> <a href="#zhaotoka_jingtokanomotto_shangno_dumi_fangdesu"> <span class="lwptoc_item_number">3.2</span> <span class="lwptoc_item_label">（※兆とか京とかのもっと上の読み方です）</span> </a>
</div>
</div>
</div>
</div></div>
</div></div>
<!--/noindex--><h3><span id="mu_ci">目次</span></h3>
<p>まず、前提条件としては以下です。</p>
<p>・ドメイン登録は他の会社（お名前コムとかムームードメインなどなど）</p>
<p>・サブドメインを割り当て（abc.example.jp の abc 部分をサブドメインといいます）</p>
<p>&nbsp;</p>
<p>今回のドメインは、他の会社で管理しています。いわゆるレジストラというのはバリュードメインで、今はGMO資本になってブランド名だけ使われています。</p>
<p>レジストラは、無料のDNSをだいたい運営していますのでその設定がWEB上で行えるコントロールパネルが存在するところをお勧めします。昔はDNSも自前で運営していましたがあまり意味がないので今は大手のレジストラのDNSを使っている感じです。</p>
<p>&nbsp;</p>
<h3><span id="rejisutoradeDNS_she_ding">レジストラでDNS設定</span></h3>
<p>サブドメインをこのブログに割り当てるよう、お名前コムとかムームードメインとか自分が取得したレジストラにコンパネがある場合、そこで設定をします。</p>
<p>バリュードメインの場合は、テキストボックス内に以下を記載する感じ。（この簡易的なスタイルが好きです。いちいち、個別にテキスト入力しなくて一括で張り付けられる）</p>
<blockquote><p>ns junkhack ns1.wordpress.com.<br> ns junkhack ns2.wordpress.com.<br> ns junkhack ns3.wordpress.com.</p></blockquote>
<p>TTL の時間はキャッシュされますのでしばらく、反映されるまで待ちましょう。</p>
<p>&nbsp;</p>
<h3><span id="WordPresscom_de_she_ding">WordPress.com で設定</span></h3>
<p>ドメインをマッピングしても、主要ドメインをマッピングしたドメインに設定しないとリダイレクトされません。</p>
<p><img style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="domain" src="/wp-content/uploads/2018/10/domain.png" alt="domain" width="899" height="1026" border="0"></p>
<p>以下のような状態にする必要があります。</p>
<p><img loading="lazy" style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="domain2" src="/wp-content/uploads/2018/10/domain2.png" alt="domain2" width="639" height="330" border="0"></p>
<p>設定は以上で完了です。</p>
<p>&nbsp;</p>
<p>これで、リダイレクトされます。さらに、リダイレクトするときはHSTS という規格でSSL接続されます。これは想定外だったので、ちょっと得した感じです。</p>
<p>つまり簡単にいえば常時SSL接続されて暗号化通信されています。自分のドメインはSSL証明書とったわけじゃないのに不思議ですね。</p>
<p>&nbsp;</p>
<p><img loading="lazy" style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="ssl1" src="/wp-content/uploads/2018/10/ssl1.png" alt="ssl1" width="748" height="407" border="0"></p>
<p>証明書の詳細は以下のように出ています。</p>
<p>&nbsp;</p>
<p><img loading="lazy" style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="ssl2" src="/wp-content/uploads/2018/10/ssl2.png" alt="ssl2" width="600" height="540" border="0"></p>
<p>認証したところは、Let’s Encrypt というCAのようです。</p>
<p>128bit の鍵長で、TLS1.2 のようです。ちなみに、この鍵は、2の128乗、10進法では39桁の数値</p>
<h4 align="center"><span id="340282366920938463463374607431768211456">340,282,366,920,938,463,463,374,607,431,768,211,456</span></h4>
<h4 align="center"><span id="zhaotoka_jingtokanomotto_shangno_dumi_fangdesu">（※兆とか京とかのもっと上の読み方です）</span></h4>
<p>という十分なものです。IPv6アドレスの数と同じですね。</p>
<p>CNのドメインは、tls.automattic.com のようですね。この説明は以下にあります。</p>
<p><a title="https://en.support.wordpress.com/https-ssl/" href="https://en.support.wordpress.com/https-ssl/" target="_blank" rel="noopener noreferrer external" data-wpel-link="external" class="wpel-icon-right">https://en.support.wordpress.com/https-ssl/<span class="wpel-icon wpel-image wpel-icon-1"></span></a></p>
<p><img loading="lazy" style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="ssl3" src="/wp-content/uploads/2018/10/ssl3.png" alt="ssl3" width="611" height="616" border="0"></p>
<p>他のドメインの証明書なのに、ブラウザで安全な接続となるのは、HTTPSレスポンスでStrict-Transport-Security（HSTS）ヘッダーを送信してブラウザが認識するとう内容のようですが、詳細はよく理解できていません。もう少し、コマンドラインのクライアントで詳細を見学してみます。</p>
<p>wget で見てみると以下のようになります。</p>
<blockquote><p>$ wget -S –spider hack.gpl.jp<br> Spider mode enabled. Check if remote file exists.<br> –2018-10-18 00:38:23–  <a href="/" data-wpel-link="internal" rel="noopener noreferrer">/</a><br> Resolving hack.gpl.jp… 192.0.78.25, 192.0.78.24<br><strong>Connecting to hack.gpl.jp|192.0.78.25|:80</strong>… connected.<br> HTTP request sent, awaiting response…<br> HTTP/1.1 301 Moved Permanently<br> Server: nginx<br> Date: Wed, 17 Oct 2018 15:38:23 GMT<br> Content-Type: text/html<br> Content-Length: 178<br> Connection: keep-alive<br> Location: <a href="/" data-wpel-link="internal" rel="noopener noreferrer">/</a><br> X-ac: 3.nrt _bur<br> Location: <a href="/" data-wpel-link="internal" rel="noopener noreferrer">/</a> [following]<br> Spider mode enabled. Check if remote file exists.<br> –2018-10-18 00:38:23–  <a href="/" data-wpel-link="internal" rel="noopener noreferrer">/</a><br><strong>Connecting to hack.gpl.jp|192.0.78.25|:443</strong>… connected.<br> HTTP request sent, awaiting response…<br> HTTP/1.1 200 OK<br> Server: nginx<br> Date: Wed, 17 Oct 2018 15:38:23 GMT<br> Content-Type: text/html; charset=UTF-8<br> Connection: keep-alive<br><strong>Strict-Transport-Security: <span style="color:#ff0000;">max-age=86400</span></strong><br> Vary: Accept-Encoding<br> Vary: Cookie<br> X-hacker: If you’re reading this, you should visit automattic.com/jobs and apply to join the fun, mention this header.<br> Link: &lt;<a href="https://wp.me/1kMA4" data-wpel-link="external" target="_blank" rel="external noopener noreferrer" class="wpel-icon-right">https://wp.me/1kMA4<span class="wpel-icon wpel-image wpel-icon-1"></span></a>&gt;; rel=shortlink<br> X-ac: 3.nrt _bur<br> Length: unspecified [text/html]<br> Remote file exists and could contain further links,<br> but recursion is disabled — not retrieving.</p></blockquote>
<p>まず初回アクセスは、http アクセスで、hack.gpl.jp へアクセスします。名前解決し、192.0.78.25, 192.0.78.24のいずれかに接続。この時は、192.0.78.25に接続しています。</p>
<p>接続したのは、nginx のWEBサーバのようです。301は恒久的なリダイレクトで、その接続先は、<a href="/" data-wpel-link="internal" rel="noopener noreferrer">/</a> です。</p>
<p>SSL接続したときは、Strict-Transport-Security: max-age=86400　というヘッダーがついていますね。1日（86400秒）は、https でSSL接続するというブラウザの挙動（実装による）となるようです。</p>
<p>X-hackerヘッダーがついているのが笑えます。</p>
<p>X-hacker: If you’re reading this, you should visit automattic.com/jobs and apply to join the fun, mention this header.</p>
<p>アクセスすると、以下にリダイレクト</p>
<p><a title="https://automattic.com/work-with-us/" href="https://automattic.com/work-with-us/" data-wpel-link="external" target="_blank" rel="external noopener noreferrer" class="wpel-icon-right">https://automattic.com/work-with-us/<span class="wpel-icon wpel-image wpel-icon-1"></span></a></p>
<p>この中の、happiness engineersってのに興味を覚えました。</p>
<p>この人たちは、以下のような仕事環境のようです。</p>
<p><a title="https://artiss.blog/2017/06/a-day-in-the-life-of-a-vip-wrangler/" href="https://artiss.blog/2017/06/a-day-in-the-life-of-a-vip-wrangler/" data-wpel-link="external" target="_blank" rel="external noopener noreferrer" class="wpel-icon-right">https://artiss.blog/2017/06/a-day-in-the-life-of-a-vip-wrangler/<span class="wpel-icon wpel-image wpel-icon-1"></span></a></p>
<p>楽しそう。<a href="https://p2theme.com/" target="_blank" rel="noopener noreferrer external" data-wpel-link="external" class="wpel-icon-right">P2ブログ<span class="wpel-icon wpel-image wpel-icon-1"></span></a>とか使っているようです。P2 ってブログのテーマなんですが、これがコミュニケーションツールになっているようです。</p>
<p>&nbsp;</p>
<p>で、違うコマンドラインクライアントを使って確認。</p>
<p>まず、curl では、何もオプションをつけないと見れません。</p>
<blockquote>
<p>$ curl -V<br> curl 7.43.0 (x86_64-apple-darwin15.0) libcurl/7.43.0 SecureTransport zlib/1.2.5</p>
<p>$ curl hack.gpl.jp<br> &lt;html&gt;<br> &lt;head&gt;&lt;title&gt;301 Moved Permanently&lt;/title&gt;&lt;/head&gt;<br> &lt;body bgcolor=”white”&gt;<br> &lt;center&gt;&lt;h1&gt;301 Moved Permanently&lt;/h1&gt;&lt;/center&gt;<br> &lt;hr&gt;&lt;center&gt;nginx&lt;/center&gt;<br> &lt;/body&gt;<br> &lt;/html&gt;</p>
</blockquote>
<p>tls1.2 で通信すると見えます。</p>
<blockquote><p>$ curl -v –tlsv1.2 <a href="/" data-wpel-link="internal" rel="noopener noreferrer">/</a><br> *   Trying 192.0.78.24…<br> * Connected to hack.gpl.jp (192.0.78.24) port 443 (#0)<br> * TLS 1.2 connection using TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256<br> * Server certificate: tls.automattic.com<br> * Server certificate: Let’s Encrypt Authority X3<br> * Server certificate: DST Root CA X3<br> &gt; GET / HTTP/1.1<br> &gt; Host: hack.gpl.jp<br> &gt; User-Agent: curl/7.43.0<br> &gt; Accept: */*<br> &gt;<br> &lt; HTTP/1.1 200 OK<br> &lt; Server: nginx<br> &lt; Date: Wed, 17 Oct 2018 18:19:33 GMT<br> &lt; Content-Type: text/html; charset=UTF-8<br> &lt; Transfer-Encoding: chunked<br> &lt; Connection: keep-alive<br> &lt; Strict-Transport-Security: max-age=86400<br> &lt; Vary: Accept-Encoding<br> &lt; Vary: Cookie<br> &lt; X-hacker: If you’re reading this, you should visit automattic.com/jobs and apply to join the fun, mention this header.<br> &lt; Link: &lt;<a href="https://wp.me/1kMA4" data-wpel-link="external" target="_blank" rel="external noopener noreferrer" class="wpel-icon-right">https://wp.me/1kMA4<span class="wpel-icon wpel-image wpel-icon-1"></span></a>&gt;; rel=shortlink<br> &lt; X-ac: 3.nrt _bur<br> &lt;<br> &lt;!DOCTYPE html&gt;</p></blockquote>
<blockquote><p>::（略）</p></blockquote>
<p>openssl の s_client を使ってみます。</p>
<blockquote><p>$ openssl s_client -connect hack.gpl.jp:443<br> CONNECTED(00000003)<br> depth=2 /C=GB/ST=Greater Manchester/L=Salford/O=COMODO CA Limited/CN=COMODO RSA Certification Authority<br> verify error:num=20:unable to get local issuer certificate<br> verify return:0<br> —<br> Certificate chain<br> 0 s:/OU=Domain Control Validated/OU=EssentialSSL Wildcard/CN=*.wordpress.com<br> i:/C=GB/ST=Greater Manchester/L=Salford/O=COMODO CA Limited/CN=COMODO RSA Domain Validation Secure Server CA<br> 1 s:/C=GB/ST=Greater Manchester/L=Salford/O=COMODO CA Limited/CN=COMODO RSA Domain Validation Secure Server CA<br> i:/C=GB/ST=Greater Manchester/L=Salford/O=COMODO CA Limited/CN=COMODO RSA Certification Authority<br> 2 s:/C=GB/ST=Greater Manchester/L=Salford/O=COMODO CA Limited/CN=COMODO RSA Certification Authority<br> i:/C=SE/O=AddTrust AB/OU=AddTrust External TTP Network/CN=AddTrust External CA Root<br> —<br> Server certificate<br> —–BEGIN CERTIFICATE—–<br> MIIG2TCCBcGgAwIBAgIRAKeBC2S1KcGoaQC27YwaCGgwDQYJKoZIhvcNAQELBQAw<br> gZAxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAO<br> BgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMTYwNAYD<br> VQQDEy1DT01PRE8gUlNBIERvbWFpbiBWYWxpZGF0aW9uIFNlY3VyZSBTZXJ2ZXIg<br> Q0EwHhcNMTgwOTA2MDAwMDAwWhcNMjAwOTA1MjM1OTU5WjBdMSEwHwYDVQQLExhE<br> b21haW4gQ29udHJvbCBWYWxpZGF0ZWQxHjAcBgNVBAsTFUVzc2VudGlhbFNTTCBX<br> aWxkY2FyZDEYMBYGA1UEAwwPKi53b3JkcHJlc3MuY29tMIIBIjANBgkqhkiG9w0B<br> AQEFAAOCAQ8AMIIBCgKCAQEAtX8qlG2EEfbt976zryjdtGbx89fdxpoAUfwTmW6Y<br> 8DY0LCvtejfR3w8kPEO6e3iRwyAmXoDBtA7cU06AsUP3e5cQyoWXcrW3ijsETOd9<br> aBA58CeCsZJ47KfFxCU91Fijpv1VarlJblydVx1JouEj0HlGqAghLsrDehkQwczs<br> EwWtz5gOvenRGPIXVw1g/Or/QYv1fwcvOglhOgbKN2HpHnIPOp9RAFbYPWhDC7sc<br> a4lK2o85siaoe7563fSd+FfsiQ6Ssh4fK2sMqXbWqoyKonem+6rCWdWPvVsIBDH2<br> 8v2HZ6s74CQSeMuAy5CZJOwv8emqlByp9GtuGWECqOgLpwIDAQABo4IDXjCCA1ow<br> HwYDVR0jBBgwFoAUkK9qOpRaC9iQ6hJWc99DtDoo2ucwHQYDVR0OBBYEFA1qB7w5<br> rS0dqQtaLzRiiA9WS7X2MA4GA1UdDwEB/wQEAwIFoDAMBgNVHRMBAf8EAjAAMB0G<br> A1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjBPBgNVHSAESDBGMDoGCysGAQQB<br> sjEBAgIHMCswKQYIKwYBBQUHAgEWHWh0dHBzOi8vc2VjdXJlLmNvbW9kby5jb20v<br> Q1BTMAgGBmeBDAECATBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8vY3JsLmNvbW9k<br> b2NhLmNvbS9DT01PRE9SU0FEb21haW5WYWxpZGF0aW9uU2VjdXJlU2VydmVyQ0Eu<br> Y3JsMIGFBggrBgEFBQcBAQR5MHcwTwYIKwYBBQUHMAKGQ2h0dHA6Ly9jcnQuY29t<br> b2RvY2EuY29tL0NPTU9ET1JTQURvbWFpblZhbGlkYXRpb25TZWN1cmVTZXJ2ZXJD<br> QS5jcnQwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmNvbW9kb2NhLmNvbTApBgNV<br> HREEIjAggg8qLndvcmRwcmVzcy5jb22CDXdvcmRwcmVzcy5jb20wggF/BgorBgEE<br> AdZ5AgQCBIIBbwSCAWsBaQB2AO5Lvbd1zmC64UJpH6vhnmajD35fsHLYgwDEe4l6<br> qP3LAAABZayjjkoAAAQDAEcwRQIhAKz7RLxwEe2RASIQxFmK0wa5cL+UkxNsca2L<br> rQY3cOjMAiARjKGfL3sPAj3NaiKaJceVxd2xKIqgVFiyn+nUNLziUQB3AF6nc/nf<br> VsDntTZIfdBJ4DJ6kZoMhKESEoQYdZaBcUVYAAABZayjjocAAAQDAEgwRgIhAP6F<br> dPFHxFhI07FV6PGss0u34O3IKh7t5bdInq1yzfGHAiEA2CPZamK6a3DLTOPmdFfk<br> BVl51AekibMouaopWKH9cAwAdgBVgdTCFpA2AUrqC5tXPFPwwOQ4eHAlCBcvo6od<br> BxPTDAAAAWWso45sAAAEAwBHMEUCIQChMawM9D4XL9Rty9yIHVt5nSAWlnWO9mUa<br> 5PukI4ogIQIgbbnceypgG1l21iW7p9PKMxG1aVILjVLPyM5bvEX1T/8wDQYJKoZI<br> hvcNAQELBQADggEBAHs2PmSUv9MLxHibC/FugGZkr9zOgkxEVVtQlNVUZkNPGeGx<br> 017Vwhi37+mNHp8uyT6zTOtKw1YBEDlEKvGWH7L86hK57kP+BdpVkjiuRA7jtVZ/<br> wVSzD8mUv3IT6YAN3Xe8ZRRm1wkrjgaF8tPVLDC3IAqgq7PRGKF6YMdYdC3VtO4J<br> pfLhODzOmQEWgHTq/6avc2AkvOCdtOEyJNayEFcGhWGKoSkEXKt3UF5+UPn2XFyO<br> hSmJErVCPQv6E8iwsAc1ugRZuEubiP0dp1RLiyLoPW8Pmzm2bidp55Tkm7zfqjjk<br> O4h2j0/57jEg1LPNvtUTFgZr0ULj3tOxoSTmesc=<br> —–END CERTIFICATE—–<br> subject=/OU=Domain Control Validated/OU=EssentialSSL Wildcard/CN=*.wordpress.com<br> issuer=/C=GB/ST=Greater Manchester/L=Salford/O=COMODO CA Limited/CN=COMODO RSA Domain Validation Secure Server CA<br> —<br> No client certificate CA names sent<br> —<br> SSL handshake has read 4880 bytes and written 456 bytes<br> —<br> New, TLSv1/SSLv3, Cipher is AES128-SHA<br> Server public key is 2048 bit<br> Secure Renegotiation IS supported<br> Compression: NONE<br> Expansion: NONE<br> SSL-Session:<br> Protocol  : TLSv1<br> Cipher    : AES128-SHA<br> Session-ID: 9E6C6DA392FA51DB27F9AD7538AADF5CC51120F9DA1C3227856758BCE95A315C<br> Session-ID-ctx:<br> Master-Key: CCE0E882CEE0E74DF78679DE4829F00B20F39C84A6F538BFA52C8026F7F8438E6A62E848AA0A1DBB4284B2076875B53D<br> Key-Arg   : None<br> Start Time: 1539800715<br> Timeout   : 300 (sec)<br> Verify return code: 0 (ok)<br> —</p></blockquote>
<p>証明書は、Wildcard/CN=*.wordpress.com　ということのようですね。これをnginx に設定して、ドメインマッピングしたドメインはHSTS定義されたnginx ホストに渡しているようです。</p>
<p>従来のドメインでアクセスするサーバ（ロードバランサー）と、ドメインからアクセスするサーバとはIPが違います。</p>
<p>まず、従来のドメイン。</p>
<blockquote>
<p>$ dig hack.gpl.jp</p>
<p>::</p>
<p>;; ANSWER SECTION:<br> hack.gpl.jp.    14400    IN    CNAME    lb.wordpress.com.<br> lb.wordpress.com.    230    IN    A    192.0.78.12<br> lb.wordpress.com.    230    IN    A    192.0.78.13</p>
<p>::</p>
</blockquote>
<p>ドメインマッピングされたもの</p>
<blockquote>
<p>$ dig hack.gpl.jp</p>
<p>::</p>
<p>;; ANSWER SECTION:<br> hack.gpl.jp.    184    IN    A    192.0.78.25<br> hack.gpl.jp.    184    IN    A    192.0.78.24</p>
<p>::</p>
</blockquote>
<p>内部構成はわかりませんが、パーソナルプランは、保存スペースが3GBから6GBになっていて広告がなくなっています。</p>
<p>リバースプロキシーみたいに使っているのかもしれません。ま、400円でこの構成になるならお得感はあります。一般的なレンタルサーバより確実に可用性はありますし、また自前で１台構成よりぜんぜん安心感が違います。</p>
<p>&nbsp;</p>
<p>WordPress ならではのカスタマイズはまだできませんが、月額2900円のビジネスプランまでアップグレードする価値があるか、随時試してみたいなと思います。チャットで確認しましたが、どうやらオフィシャルのプラグインサイトにないものも、zip 圧縮した開発したプラグインをアップロードして使えるということです。</p>
<p>これはいいですね。</p>
</div>
<footer class="entry-footer"></footer>
</div></article><nav class="navigation post-navigation" aria-label="投稿"><h2 class="screen-reader-text">投稿ナビゲーション</h2>
<div class="nav-links">
<div class="nav-previous"><a href="/2018/10/17/20181017/" rel="prev noopener noreferrer" data-wpel-link="internal">Linuxエンジニアがサーバを作らず結局、WordPress.com の有料プランに入ることにしたよ</a></div>
<div class="nav-next"><a href="/2018/10/19/consider-wheel-color/" rel="next noopener noreferrer" data-wpel-link="internal">ホイールの色に迷う、画像合成して検討中</a></div>
</div></nav></main></div></div>
<footer id="colophon" class="site-footer wrap" role="contentinfo"><div class="site-info"> Copyleft - all rights reversed. <span class="sep"> | </span> JunkHack 2011 - 2022 <span class="sep"> | </span> <a href="/about-junkhack/" data-wpel-link="internal" rel="noopener noreferrer">運営者情報<span class="gf"></span></a><span class="sep"> | </span> <a href="/mail/" data-wpel-link="internal" rel="noopener noreferrer">お問い合わせ<span class="gf"></span></a><span class="sep"> | </span> <a href="/privacy/" data-wpel-link="internal" rel="noopener noreferrer">プライバシーポリシー<span class="gf"></span></a>
</div></footer>
</div>
<div id="mouse"><div class="inner">
<h1>Search</h1>
<form class="uagb-search-wrapper" role="search" action="/" method="get"><div class="uagb-search-form__container" role="tablist"> <input placeholder="Search" class="uagb-search-form__input aa-input" id="searchbox" type="search" name="s" title="Search" autocomplete="off" spellcheck="false" role="combobox" aria-autocomplete="list" aria-expanded="false" aria-owns="algolia-autocomplete-listbox-0" dir="auto" style="width: 80%;"><pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; word-spacing: 0px; letter-spacing: normal; text-indent: 0px; text-rendering: auto; text-transform: none;">
                            </pre>
</div></form>
<table><tr>
<td class="divide"><table>
<tr>
<td>
<span class="cmd">g</span> <span class="thn">then</span> <span class="cmd">h</span>
</td>
<td><span class="help">&rarr; home</span></td>
<td>Go to front page</td>
</tr>
<tr>
<td>
<span class="cmd">g</span> <span class="thn">then</span> <span class="cmd">l</span>
</td>
<td><span class="help">&rarr; list</span></td>
<td>Go to List page</td>
</tr>
<tr>
<td>
<span class="cmd">g</span> <span class="thn">then</span> <span class="cmd">s</span>
</td>
<td><span class="help">&rarr; search</span></td>
<td>Go to Search page</td>
</tr>
</table></td>
<td class="divide"><table>
<tr>
<td><span class="cmd">/ or esc</span></td>
<td><span class="help">&rarr; search</span></td>
<td>Toggle , Close the search box</td>
</tr>
<tr>
<td><span class="cmd">.</span></td>
<td><span class="help">&rarr; Focus</span></td>
<td>Focus the search box</td>
</tr>
<tr>
<td><span class="cmd">Mouse Click</span></td>
<td><span class="help">&rarr; unFocus</span></td>
<td>unFocus the search box</td>
</tr>
</table></td>
</tr></table>
</div></div>
<div id="wpfront-scroll-top-container"> <img src="/wp-content/plugins/wpfront-scroll-top/images/icons/1.png" alt="">
</div> <script type="text/javascript">function wpfront_scroll_top_init() {
                if (typeof wpfront_scroll_top === "function" && typeof jQuery !== "undefined") {
                    wpfront_scroll_top({"scroll_offset":100,"button_width":0,"button_height":0,"button_opacity":0.8,"button_fade_duration":200,"scroll_duration":400,"location":1,"marginX":20,"marginY":20,"hide_iframe":false,"auto_hide":false,"auto_hide_after":2,"button_action":"top","button_action_element_selector":"","button_action_container_selector":"html, body","button_action_element_offset":0});
                } else {
                    setTimeout(wpfront_scroll_top_init, 100);
                }
            }
            wpfront_scroll_top_init();</script> <script type="text/javascript">var algolia = {"debug":false,"application_id":"8DCPU3VRUU","search_api_key":"052e9cca1df4182ec607663dc893c235","powered_by_enabled":true,"query":"","autocomplete":{"sources":[{"index_id":"posts_post","index_name":"wp_posts_post","label":"投稿","admin_name":"投稿","position":10,"max_suggestions":10,"tmpl_suggestion":"autocomplete-post-suggestion","enabled":true}],"input_selector":"input[name='s']:not('.no-autocomplete')"},"indices":{"searchable_posts":{"name":"wp_searchable_posts","id":"searchable_posts","enabled":true,"replicas":[]},"posts_post":{"name":"wp_posts_post","id":"posts_post","enabled":true,"replicas":[]}}};</script> <script type="text/html" id="tmpl-autocomplete-header"><div class="autocomplete-header">
		<div class="autocomplete-header-title">{{{ data.label }}}</div>
		<div class="clear"></div>
	</div></script> <script type="text/html" id="tmpl-autocomplete-post-suggestion"><a class="suggestion-link" href="{{ data.permalink }}" title="{{ data.post_title }}">
		<# if ( data.images.thumbnail ) { #>
			<img class="suggestion-post-thumbnail" src="{{ data.images.thumbnail.url }}" alt="{{ data.post_title }}">
		<# } #>
		<div class="suggestion-post-attributes">
			<span class="suggestion-post-title">{{{ data._highlightResult.post_title.value }}}</span>
			<# if ( data._snippetResult['content'] ) { #>
				<span class="suggestion-post-content">{{{ data._snippetResult['content'].value }}}</span>
			<# } #>
		</div>
	</a></script> <script type="text/html" id="tmpl-autocomplete-term-suggestion"><a class="suggestion-link" href="{{ data.permalink }}" title="{{ data.name }}">
		<svg viewBox="0 0 21 21" width="21" height="21">
			<svg width="21" height="21" viewBox="0 0 21 21">
				<path
					d="M4.662 8.72l-1.23 1.23c-.682.682-.68 1.792.004 2.477l5.135 5.135c.7.693 1.8.688 2.48.005l1.23-1.23 5.35-5.346c.31-.31.54-.92.51-1.36l-.32-4.29c-.09-1.09-1.05-2.06-2.15-2.14l-4.3-.33c-.43-.03-1.05.2-1.36.51l-.79.8-2.27 2.28-2.28 2.27zm9.826-.98c.69 0 1.25-.56 1.25-1.25s-.56-1.25-1.25-1.25-1.25.56-1.25 1.25.56 1.25 1.25 1.25z"
					fill-rule="evenodd"></path>
			</svg>
		</svg>
		<span class="suggestion-post-title">{{{ data._highlightResult.name.value }}}</span>
	</a></script> <script type="text/html" id="tmpl-autocomplete-user-suggestion"><a class="suggestion-link user-suggestion-link" href="{{ data.posts_url }}" title="{{ data.display_name }}">
		<# if ( data.avatar_url ) { #>
			<img class="suggestion-user-thumbnail" src="{{ data.avatar_url }}" alt="{{ data.display_name }}">
		<# } #>
		<span class="suggestion-post-title">{{{ data._highlightResult.display_name.value }}}</span>
	</a></script> <script type="text/html" id="tmpl-autocomplete-footer"><div class="autocomplete-footer">
		<div class="autocomplete-footer-branding">
			<a href="#" class="algolia-powered-by-link" title="Algolia">
				<svg width="130" viewbox="0 0 130 18" xmlns="http://www.w3.org/2000/svg">
					<title>Search by Algolia</title>
					<defs>
						<lineargradient x1="-36.868%" y1="134.936%" x2="129.432%" y2="-27.7%" id="a">
							<stop stop-color="#00AEFF" offset="0%"></stop>
							<stop stop-color="#3369E7" offset="100%"></stop>
						</lineargradient>
					</defs>
					<g fill="none" fill-rule="evenodd">
						<path d="M59.399.022h13.299a2.372 2.372 0 0 1 2.377 2.364V15.62a2.372 2.372 0 0 1-2.377 2.364H59.399a2.372 2.372 0 0 1-2.377-2.364V2.381A2.368 2.368 0 0 1 59.399.022z" fill="url(#a)"></path>
						<path d="M66.257 4.56c-2.815 0-5.1 2.272-5.1 5.078 0 2.806 2.284 5.072 5.1 5.072 2.815 0 5.1-2.272 5.1-5.078 0-2.806-2.279-5.072-5.1-5.072zm0 8.652c-1.983 0-3.593-1.602-3.593-3.574 0-1.972 1.61-3.574 3.593-3.574 1.983 0 3.593 1.602 3.593 3.574a3.582 3.582 0 0 1-3.593 3.574zm0-6.418v2.664c0 .076.082.131.153.093l2.377-1.226c.055-.027.071-.093.044-.147a2.96 2.96 0 0 0-2.465-1.487c-.055 0-.11.044-.11.104l.001-.001zm-3.33-1.956l-.312-.311a.783.783 0 0 0-1.106 0l-.372.37a.773.773 0 0 0 0 1.101l.307.305c.049.049.121.038.164-.011.181-.245.378-.479.597-.697.225-.223.455-.42.707-.599.055-.033.06-.109.016-.158h-.001zm5.001-.806v-.616a.781.781 0 0 0-.783-.779h-1.824a.78.78 0 0 0-.783.779v.632c0 .071.066.12.137.104a5.736 5.736 0 0 1 1.588-.223c.52 0 1.035.071 1.534.207a.106.106 0 0 0 .131-.104z" fill="#FFF"></path>
						<path d="M102.162 13.762c0 1.455-.372 2.517-1.123 3.193-.75.676-1.895 1.013-3.44 1.013-.564 0-1.736-.109-2.673-.316l.345-1.689c.783.163 1.819.207 2.361.207.86 0 1.473-.174 1.84-.523.367-.349.548-.866.548-1.553v-.349a6.374 6.374 0 0 1-.838.316 4.151 4.151 0 0 1-1.194.158 4.515 4.515 0 0 1-1.616-.278 3.385 3.385 0 0 1-1.254-.817 3.744 3.744 0 0 1-.811-1.351c-.192-.539-.29-1.504-.29-2.212 0-.665.104-1.498.307-2.054a3.925 3.925 0 0 1 .904-1.433 4.124 4.124 0 0 1 1.441-.926 5.31 5.31 0 0 1 1.945-.365c.696 0 1.337.087 1.961.191a15.86 15.86 0 0 1 1.588.332v8.456h-.001zm-5.954-4.206c0 .893.197 1.885.592 2.299.394.414.904.621 1.528.621.34 0 .663-.049.964-.142a2.75 2.75 0 0 0 .734-.332v-5.29a8.531 8.531 0 0 0-1.413-.18c-.778-.022-1.369.294-1.786.801-.411.507-.619 1.395-.619 2.223zm16.12 0c0 .719-.104 1.264-.318 1.858a4.389 4.389 0 0 1-.904 1.52c-.389.42-.854.746-1.402.975-.548.229-1.391.36-1.813.36-.422-.005-1.26-.125-1.802-.36a4.088 4.088 0 0 1-1.397-.975 4.486 4.486 0 0 1-.909-1.52 5.037 5.037 0 0 1-.329-1.858c0-.719.099-1.411.318-1.999.219-.588.526-1.09.92-1.509.394-.42.865-.741 1.402-.97a4.547 4.547 0 0 1 1.786-.338 4.69 4.69 0 0 1 1.791.338c.548.229 1.019.55 1.402.97.389.42.69.921.909 1.509.23.588.345 1.28.345 1.999h.001zm-2.191.005c0-.921-.203-1.689-.597-2.223-.394-.539-.948-.806-1.654-.806-.707 0-1.26.267-1.654.806-.394.539-.586 1.302-.586 2.223 0 .932.197 1.558.592 2.098.394.545.948.812 1.654.812.707 0 1.26-.272 1.654-.812.394-.545.592-1.166.592-2.098h-.001zm6.962 4.707c-3.511.016-3.511-2.822-3.511-3.274L113.583.926l2.142-.338v10.003c0 .256 0 1.88 1.375 1.885v1.792h-.001zm3.774 0h-2.153V5.072l2.153-.338v9.534zm-1.079-10.542c.718 0 1.304-.578 1.304-1.291 0-.714-.581-1.291-1.304-1.291-.723 0-1.304.578-1.304 1.291 0 .714.586 1.291 1.304 1.291zm6.431 1.013c.707 0 1.304.087 1.786.262.482.174.871.42 1.156.73.285.311.488.735.608 1.182.126.447.186.937.186 1.476v5.481a25.24 25.24 0 0 1-1.495.251c-.668.098-1.419.147-2.251.147a6.829 6.829 0 0 1-1.517-.158 3.213 3.213 0 0 1-1.178-.507 2.455 2.455 0 0 1-.761-.904c-.181-.37-.274-.893-.274-1.438 0-.523.104-.855.307-1.215.208-.36.487-.654.838-.883a3.609 3.609 0 0 1 1.227-.49 7.073 7.073 0 0 1 2.202-.103c.263.027.537.076.833.147v-.349c0-.245-.027-.479-.088-.697a1.486 1.486 0 0 0-.307-.583c-.148-.169-.34-.3-.581-.392a2.536 2.536 0 0 0-.915-.163c-.493 0-.942.06-1.353.131-.411.071-.75.153-1.008.245l-.257-1.749c.268-.093.668-.185 1.183-.278a9.335 9.335 0 0 1 1.66-.142l-.001-.001zm.181 7.731c.657 0 1.145-.038 1.484-.104v-2.168a5.097 5.097 0 0 0-1.978-.104c-.241.033-.46.098-.652.191a1.167 1.167 0 0 0-.466.392c-.121.169-.175.267-.175.523 0 .501.175.79.493.981.323.196.75.289 1.293.289h.001zM84.109 4.794c.707 0 1.304.087 1.786.262.482.174.871.42 1.156.73.29.316.487.735.608 1.182.126.447.186.937.186 1.476v5.481a25.24 25.24 0 0 1-1.495.251c-.668.098-1.419.147-2.251.147a6.829 6.829 0 0 1-1.517-.158 3.213 3.213 0 0 1-1.178-.507 2.455 2.455 0 0 1-.761-.904c-.181-.37-.274-.893-.274-1.438 0-.523.104-.855.307-1.215.208-.36.487-.654.838-.883a3.609 3.609 0 0 1 1.227-.49 7.073 7.073 0 0 1 2.202-.103c.257.027.537.076.833.147v-.349c0-.245-.027-.479-.088-.697a1.486 1.486 0 0 0-.307-.583c-.148-.169-.34-.3-.581-.392a2.536 2.536 0 0 0-.915-.163c-.493 0-.942.06-1.353.131-.411.071-.75.153-1.008.245l-.257-1.749c.268-.093.668-.185 1.183-.278a8.89 8.89 0 0 1 1.66-.142l-.001-.001zm.186 7.736c.657 0 1.145-.038 1.484-.104v-2.168a5.097 5.097 0 0 0-1.978-.104c-.241.033-.46.098-.652.191a1.167 1.167 0 0 0-.466.392c-.121.169-.175.267-.175.523 0 .501.175.79.493.981.318.191.75.289 1.293.289h.001zm8.682 1.738c-3.511.016-3.511-2.822-3.511-3.274L89.461.926l2.142-.338v10.003c0 .256 0 1.88 1.375 1.885v1.792h-.001z" fill="#182359"></path>
						<path d="M5.027 11.025c0 .698-.252 1.246-.757 1.644-.505.397-1.201.596-2.089.596-.888 0-1.615-.138-2.181-.414v-1.214c.358.168.739.301 1.141.397.403.097.778.145 1.125.145.508 0 .884-.097 1.125-.29a.945.945 0 0 0 .363-.779.978.978 0 0 0-.333-.747c-.222-.204-.68-.446-1.375-.725-.716-.29-1.221-.621-1.515-.994-.294-.372-.44-.82-.44-1.343 0-.655.233-1.171.698-1.547.466-.376 1.09-.564 1.875-.564.752 0 1.5.165 2.245.494l-.408 1.047c-.698-.294-1.321-.44-1.869-.44-.415 0-.73.09-.945.271a.89.89 0 0 0-.322.717c0 .204.043.379.129.524.086.145.227.282.424.411.197.129.551.299 1.063.51.577.24.999.464 1.268.671.269.208.466.442.591.704.125.261.188.569.188.924l-.001.002zm3.98 2.24c-.924 0-1.646-.269-2.167-.808-.521-.539-.782-1.281-.782-2.226 0-.97.242-1.733.725-2.288.483-.555 1.148-.833 1.993-.833.784 0 1.404.238 1.858.714.455.476.682 1.132.682 1.966v.682H7.357c.018.577.174 1.02.467 1.329.294.31.707.465 1.241.465.351 0 .678-.033.98-.099a5.1 5.1 0 0 0 .975-.33v1.026a3.865 3.865 0 0 1-.935.312 5.723 5.723 0 0 1-1.08.091l.002-.001zm-.231-5.199c-.401 0-.722.127-.964.381s-.386.625-.432 1.112h2.696c-.007-.491-.125-.862-.354-1.115-.229-.252-.544-.379-.945-.379l-.001.001zm7.692 5.092l-.252-.827h-.043c-.286.362-.575.608-.865.739-.29.131-.662.196-1.117.196-.584 0-1.039-.158-1.367-.473-.328-.315-.491-.761-.491-1.337 0-.612.227-1.074.682-1.386.455-.312 1.148-.482 2.079-.51l1.026-.032v-.317c0-.38-.089-.663-.266-.851-.177-.188-.452-.282-.824-.282-.304 0-.596.045-.876.134a6.68 6.68 0 0 0-.806.317l-.408-.902a4.414 4.414 0 0 1 1.058-.384 4.856 4.856 0 0 1 1.085-.132c.756 0 1.326.165 1.711.494.385.329.577.847.577 1.552v4.002h-.902l-.001-.001zm-1.88-.859c.458 0 .826-.128 1.104-.384.278-.256.416-.615.416-1.077v-.516l-.763.032c-.594.021-1.027.121-1.297.298s-.406.448-.406.814c0 .265.079.47.236.615.158.145.394.218.709.218h.001zm7.557-5.189c.254 0 .464.018.628.054l-.124 1.176a2.383 2.383 0 0 0-.559-.064c-.505 0-.914.165-1.227.494-.313.329-.47.757-.47 1.284v3.105h-1.262V7.218h.988l.167 1.047h.064c.197-.354.454-.636.771-.843a1.83 1.83 0 0 1 1.023-.312h.001zm4.125 6.155c-.899 0-1.582-.262-2.049-.787-.467-.525-.701-1.277-.701-2.259 0-.999.244-1.767.733-2.304.489-.537 1.195-.806 2.119-.806.627 0 1.191.116 1.692.349l-.381 1.015c-.534-.208-.974-.312-1.321-.312-1.028 0-1.542.682-1.542 2.046 0 .666.128 1.166.384 1.501.256.335.631.502 1.125.502a3.23 3.23 0 0 0 1.595-.419v1.101a2.53 2.53 0 0 1-.722.285 4.356 4.356 0 0 1-.932.086v.002zm8.277-.107h-1.268V9.506c0-.458-.092-.8-.277-1.026-.184-.226-.477-.338-.878-.338-.53 0-.919.158-1.168.475-.249.317-.373.848-.373 1.593v2.949h-1.262V4.801h1.262v2.122c0 .34-.021.704-.064 1.09h.081a1.76 1.76 0 0 1 .717-.666c.306-.158.663-.236 1.072-.236 1.439 0 2.159.725 2.159 2.175v3.873l-.001-.001zm7.649-6.048c.741 0 1.319.269 1.732.806.414.537.62 1.291.62 2.261 0 .974-.209 1.732-.628 2.275-.419.542-1.001.814-1.746.814-.752 0-1.336-.27-1.751-.811h-.086l-.231.704h-.945V4.801h1.262v1.987l-.021.655-.032.553h.054c.401-.591.992-.886 1.772-.886zm-.328 1.031c-.508 0-.875.149-1.098.448-.224.299-.339.799-.346 1.501v.086c0 .723.115 1.247.344 1.571.229.324.603.486 1.123.486.448 0 .787-.177 1.018-.532.231-.354.346-.867.346-1.536 0-1.35-.462-2.025-1.386-2.025l-.001.001zm3.244-.924h1.375l1.209 3.368c.183.48.304.931.365 1.354h.043c.032-.197.091-.436.177-.717.086-.281.541-1.616 1.364-4.004h1.364l-2.541 6.73c-.462 1.235-1.232 1.853-2.31 1.853-.279 0-.551-.03-.816-.091v-.999c.19.043.406.064.65.064.609 0 1.037-.353 1.284-1.058l.22-.559-2.385-5.941h.001z" fill="#1D3657"></path>
					</g>
				</svg>
			</a>
		</div>
	</div></script> <script type="text/html" id="tmpl-autocomplete-empty"><div class="autocomplete-empty">
		No results matched your query 		<span class="empty-query">"{{ data.query }}"</span>
	</div></script> <script type="text/javascript">jQuery( function () {
		/* Initialize Algolia client */
		var client = algoliasearch( algolia.application_id, algolia.search_api_key );

		/**
		 * Algolia hits source method.
		 *
		 * This method defines a custom source to use with autocomplete.js.
		 *
		 * @param object $index Algolia index object.
		 * @param object $params Options object to use in search.
		 */
		var algoliaHitsSource = function( index, params ) {
			return function( query, callback ) {
				index
					.search( query, params )
					.then( function( response ) {
						callback( response.hits, response );
					})
					.catch( function( error ) {
						callback( [] );
					});
			}
		}

		/* Setup autocomplete.js sources */
		var sources = [];
		jQuery.each( algolia.autocomplete.sources, function ( i, config ) {
			var suggestion_template = wp.template( config[ 'tmpl_suggestion' ] );
			sources.push( {
				source: algoliaHitsSource( client.initIndex( config[ 'index_name' ] ), {
					hitsPerPage: config[ 'max_suggestions' ],
					attributesToSnippet: [
						'content:10'
					],
					highlightPreTag: '__ais-highlight__',
					highlightPostTag: '__/ais-highlight__'
				} ),
				templates: {
					header: function () {
						return wp.template( 'autocomplete-header' )( {
							label: _.escape( config[ 'label' ] )
						} );
					},
					suggestion: function ( hit ) {
						if ( hit.escaped === true ) {
							return suggestion_template( hit );
						}
						hit.escaped = true;

						for ( var key in hit._highlightResult ) {
							/* We do not deal with arrays. */
							if ( typeof hit._highlightResult[ key ].value !== 'string' ) {
								continue;
							}
							hit._highlightResult[ key ].value = _.escape( hit._highlightResult[ key ].value );
							hit._highlightResult[ key ].value = hit._highlightResult[ key ].value.replace( /__ais-highlight__/g, '<em>' ).replace( /__\/ais-highlight__/g, '<\/em>' );
						}

						for ( var key in hit._snippetResult ) {
							/* We do not deal with arrays. */
							if ( typeof hit._snippetResult[ key ].value !== 'string' ) {
								continue;
							}

							hit._snippetResult[ key ].value = _.escape( hit._snippetResult[ key ].value );
							hit._snippetResult[ key ].value = hit._snippetResult[ key ].value.replace( /__ais-highlight__/g, '<em>' ).replace( /__\/ais-highlight__/g, '<\/em>' );
						}

						return suggestion_template( hit );
					}
				}
			} );

		} );

		/* Setup dropdown menus */
		jQuery( algolia.autocomplete.input_selector ).each( function ( i ) {
			var $searchInput = jQuery( this );

			var config = {
				debug: algolia.debug,
				hint: false,
				openOnFocus: true,
				appendTo: 'body',
				templates: {
					empty: wp.template( 'autocomplete-empty' )
				}
			};

			if ( algolia.powered_by_enabled ) {
				config.templates.footer = wp.template( 'autocomplete-footer' );
			}

			/* Instantiate autocomplete.js */
			var autocomplete = algoliaAutocomplete( $searchInput[ 0 ], config, sources )
				.on( 'autocomplete:selected', function ( e, suggestion ) {
					/* Redirect the user when we detect a suggestion selection. */
					window.location.href = suggestion.permalink;
				} );

			/* Force the dropdown to be re-drawn on scroll to handle fixed containers. */
			jQuery( window ).on( 'scroll', function() {
				if ( autocomplete.autocomplete.getWrapper().style.display === "block" ) {
					autocomplete.autocomplete.close();
					autocomplete.autocomplete.open();
				}
			} );
		} );

		jQuery( document ).on( "click", ".algolia-powered-by-link", function ( e ) {
			e.preventDefault();
			window.location = "https://www.algolia.com/?utm_source=WordPress&utm_medium=extension&utm_content=" + window.location.hostname + "&utm_campaign=poweredby";
		} );
	} );</script> <link rel="stylesheet" id="lwptoc-main-css" href="/wp-content/plugins/luckywp-table-of-contents/front/assets/main.min.css?ver=2.1.4" type="text/css" media="all"> <script type="text/javascript" src="/wp-content/plugins/wpfront-scroll-top/js/wpfront-scroll-top.min.js?ver=2.0.7.08086" id="wpfront-scroll-top-js"></script> <script type="text/javascript" src="/wp-content/themes/jh-hew/js/JankHack-Hew.js?ver=20140909" id="JankHack-Hew-scripts-js"></script> <script type="text/javascript" src="/wp-content/themes/jh-hew/js/navigation.js?ver=20120206" id="JankHack-Hew-navigation-js"></script> <script type="text/javascript" src="/wp-content/themes/jh-hew/js/skip-link-focus-fix.js?ver=20130115" id="JankHack-Hew-skip-link-focus-fix-js"></script> <script type="text/javascript" src="/wp-content/themes/jh-hew/js/contact.js?ver=20210612" id="sendmail-js"></script> <script type="text/javascript" src="/wp-includes/js/underscore.min.js?ver=1.13.1" id="underscore-js"></script> <script type="text/javascript" id="wp-util-js-extra">var _wpUtilSettings = {"ajax":{"url":"\/wp-admin\/admin-ajax.php"}};</script> <script type="text/javascript" src="/wp-includes/js/wp-util.min.js?ver=5.9.3" id="wp-util-js"></script> <script type="text/javascript" src="/wp-content/plugins/wp-search-with-algolia/js/algoliasearch/dist/algoliasearch-lite.umd.js?ver=2.2.0" id="algolia-search-js"></script> <script type="text/javascript" src="/wp-content/plugins/wp-search-with-algolia/js/autocomplete.js/dist/autocomplete.min.js?ver=2.2.0" id="algolia-autocomplete-js"></script> <script type="text/javascript" src="/wp-content/plugins/wp-search-with-algolia/js/autocomplete-noconflict.js?ver=2.2.0" id="algolia-autocomplete-noconflict-js"></script> <script type="text/javascript" src="/wp-content/plugins/luckywp-table-of-contents/front/assets/main.min.js?ver=2.1.4" id="lwptoc-main-js"></script> <style>.lwptoc .lwptoc_i{border:1px solid #aaaaaa;}.lwptoc_header{color:#232323;}.lwptoc .lwptoc_i A{color:#3d3d3d;}.lwptoc .lwptoc_i A:hover,.lwptoc .lwptoc_i A:focus,.lwptoc .lwptoc_i A:active{color:#0a0a0a;border-color:#0a0a0a;}.lwptoc .lwptoc_i A:visited{color:#5b5b5b;}</style>
</body>
</html>