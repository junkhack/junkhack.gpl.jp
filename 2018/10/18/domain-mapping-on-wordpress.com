<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="/xmlrpc.php"> <noscript id="aonoscrcss"></noscript>
<title>WordPress.com でドメインマッピングしてサブドメインの独自ドメインを利用 &#8211; JunkHack</title>
<meta name="robots" content="max-image-preview:large">
<link rel="dns-prefetch" href="//www.google.com">
<link rel="dns-prefetch" href="//www.googletagmanager.com">
<link rel="dns-prefetch" href="//fonts.googleapis.com">
<link rel="dns-prefetch" href="//pagead2.googlesyndication.com">
<link rel="alternate" type="application/rss+xml" title="JunkHack &raquo; フィード" href="/feed/">
<link rel="alternate" type="application/rss+xml" title="JunkHack &raquo; コメントフィード" href="/comments/feed/">
<link rel="stylesheet" id="wp-block-library-css" href="/wp-includes/css/dist/block-library/style.min.css?ver=5.8.3" type="text/css" media="all">
<link rel="stylesheet" id="contact-form-7-css" href="/wp-content/cache/autoptimize/css/autoptimize_single_76e12144b6be9bc0a17dd880c5566156.css?ver=5.4.1" type="text/css" media="all">
<link rel="stylesheet" id="contact-form-7-confirm-css" href="/wp-content/cache/autoptimize/css/autoptimize_single_c605b424176e2b3541570e9ebd66830b.css?ver=5.1" type="text/css" media="all">
<link rel="stylesheet" id="wpel-style-css" href="/wp-content/cache/autoptimize/css/autoptimize_single_04d23f0dc44b526ca48d1d564eb7537c.css?ver=2.50" type="text/css" media="all">
<link rel="stylesheet" id="wpfront-scroll-top-css" href="/wp-content/plugins/wpfront-scroll-top/css/wpfront-scroll-top.min.css?ver=2.0.7.08086" type="text/css" media="all">
<link rel="stylesheet" id="related-frontend-css-css" href="/wp-content/cache/autoptimize/css/autoptimize_single_ce8bbdb7cabcf5f0fa8d28d9868b7638.css?ver=0.1.0" type="text/css" media="all">
<link rel="stylesheet" id="hew-fonts-css" href="https://fonts.googleapis.com/css?family=Open+Sans%3A400%2C600%2C700%2C400italic%2C600italic%2C700italic%7CNoto+Serif%3A400%2C700%2C400italic%2C700italic&#038;subset=latin" type="text/css" media="all">
<link rel="stylesheet" id="genericons-css" href="/wp-content/cache/autoptimize/css/autoptimize_single_c14dd6e84e694a66c7e27f11220ed49a.css?ver=3.4.1" type="text/css" media="all">
<link rel="stylesheet" id="hew-style-css" href="/wp-content/cache/autoptimize/css/autoptimize_single_bd2482c37d2bc505ed15c848d16adf6d.css?ver=5.8.3" type="text/css" media="all"> <script type="text/javascript" src="/wp-content/plugins/jquery-manager/assets/js/jquery-3.5.1.min.js" id="jquery-core-js"></script> <script type="text/javascript" src="/wp-content/plugins/jquery-manager/assets/js/jquery-migrate-3.3.0.min.js" id="jquery-migrate-js"></script>  <script type="text/javascript" src="https://www.googletagmanager.com/gtag/js?id=UA-199105184-1" id="google_gtagjs-js" async></script> <script type="text/javascript" id="google_gtagjs-js-after">window.dataLayer = window.dataLayer || [];function gtag(){dataLayer.push(arguments);}
gtag('set', 'linker', {"domains":["hack.gpl.jp"]} );
gtag("js", new Date());
gtag("set", "developer_id.dZTNiMT", true);
gtag("config", "UA-199105184-1", {"anonymize_ip":true});</script> <link rel="https://api.w.org/" href="/wp-json/">
<link rel="alternate" type="application/json" href="/wp-json/wp/v2/posts/4649">
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="/wp-includes/wlwmanifest.xml">
<meta name="generator" content="WordPress 5.8.3">
<link rel="canonical" href="/2018/10/18/domain-mapping-on-wordpress.com">
<link rel="shortlink" href="/?p=4649">
<link rel="alternate" type="application/json+oembed" href="/wp-json/oembed/1.0/embed?url=https%3A%2F%2F%2F2018%2F10%2F18%2Fdomain-mapping-on-wordpress.com">
<link rel="alternate" type="text/xml+oembed" href="/wp-json/oembed/1.0/embed?url=https%3A%2F%2F%2F2018%2F10%2F18%2Fdomain-mapping-on-wordpress.com&#038;format=xml">
<meta name="generator" content="Site Kit by Google 1.48.1">
<meta name="google-adsense-platform-account" content="ca-host-pub-2644536267352236">
<meta name="google-adsense-platform-domain" content="sitekit.withgoogle.com">  <script async="async" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-2711753458083215" crossorigin="anonymous" type="text/javascript"></script> </head>  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-161935417-3"></script> <script>window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-161935417-3');</script> <body class="post-template-default single single-post postid-4649 single-format-standard has-sidebar has-header-image">
<div id="page" class="hfeed site">
<div id="widgets-wrapper" class="hide"><div id="secondary" class="wrap top-widget-area" role="complementary"><div id="sidebar-4" class="widget-area" role="complementary"><aside id="block-2" class="widget widget_block"><script async src="https://cse.google.com/cse.js?cx=df8210082ba786774"></script> <div class="gcse-search"></div></aside></div></div></div> <a class="skip-link screen-reader-text" href="#content">コンテンツへ移動</a><header id="masthead" class="site-header" role="banner"> <a class="site-logo" href="/" title="JunkHack" rel="home noopener noreferrer" data-wpel-link="internal"> <noscript><img src="https://secure.gravatar.com/avatar/997681319c3cbb0bdcca95770d5edaa6/?s=80&#038;d=mm" width="80" height="80" alt="" class="no-grav header-image"></noscript>
<img src="data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%2080%2080%22%3E%3C/svg%3E" data-src="https://secure.gravatar.com/avatar/997681319c3cbb0bdcca95770d5edaa6/?s=80&#038;d=mm" width="80" height="80" alt="" class="lazyload no-grav header-image"> </a><div class="site-branding">
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
<h1 class="entry-title">WordPress.com でドメインマッピングしてサブドメインの独自ドメインを利用</h1></header><div class="entry-content">
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
<p></p>
<noscript><img style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="domain" src="/wp-content/uploads/2018/10/domain.png" alt="domain" width="899" height="1026" border="0"></noscript>
<img class="lazyload" style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="domain" src="data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20899%201026%22%3E%3C/svg%3E" data-src="/wp-content/uploads/2018/10/domain.png" alt="domain" width="899" height="1026" border="0"><p>以下のような状態にする必要があります。</p>
<p></p>
<noscript><img style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="domain2" src="/wp-content/uploads/2018/10/domain2.png" alt="domain2" width="639" height="330" border="0"></noscript>
<img class="lazyload" style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="domain2" src="data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20639%20330%22%3E%3C/svg%3E" data-src="/wp-content/uploads/2018/10/domain2.png" alt="domain2" width="639" height="330" border="0"><p>設定は以上で完了です。</p>
<p>&nbsp;</p>
<p>これで、リダイレクトされます。さらに、リダイレクトするときはHSTS という規格でSSL接続されます。これは想定外だったので、ちょっと得した感じです。</p>
<p>つまり簡単にいえば常時SSL接続されて暗号化通信されています。自分のドメインはSSL証明書とったわけじゃないのに不思議ですね。</p>
<p>&nbsp;</p>
<p></p>
<noscript><img style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="ssl1" src="/wp-content/uploads/2018/10/ssl1.png" alt="ssl1" width="748" height="407" border="0"></noscript>
<img class="lazyload" style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="ssl1" src="data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20748%20407%22%3E%3C/svg%3E" data-src="/wp-content/uploads/2018/10/ssl1.png" alt="ssl1" width="748" height="407" border="0"><p>証明書の詳細は以下のように出ています。</p>
<p>&nbsp;</p>
<p></p>
<noscript><img style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="ssl2" src="/wp-content/uploads/2018/10/ssl2.png" alt="ssl2" width="600" height="540" border="0"></noscript>
<img class="lazyload" style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="ssl2" src="data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20600%20540%22%3E%3C/svg%3E" data-src="/wp-content/uploads/2018/10/ssl2.png" alt="ssl2" width="600" height="540" border="0"><p>認証したところは、Let’s Encrypt というCAのようです。</p>
<p>128bit の鍵長で、TLS1.2 のようです。ちなみに、この鍵は、2の128乗、10進法では39桁の数値</p>
<h4 align="center"><span id="340282366920938463463374607431768211456">340,282,366,920,938,463,463,374,607,431,768,211,456</span></h4>
<h4 align="center"><span id="zhaotoka_jingtokanomotto_shangno_dumi_fangdesu">（※兆とか京とかのもっと上の読み方です）</span></h4>
<p>という十分なものです。IPv6アドレスの数と同じですね。</p>
<p>CNのドメインは、tls.automattic.com のようですね。この説明は以下にあります。</p>
<p><a title="https://en.support.wordpress.com/https-ssl/" href="https://en.support.wordpress.com/https-ssl/" target="_blank" rel="noopener noreferrer external" data-wpel-link="external" class="wpel-icon-right">https://en.support.wordpress.com/https-ssl/<span class="wpel-icon wpel-image wpel-icon-1"></span></a></p>
<p></p>
<noscript><img style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="ssl3" src="/wp-content/uploads/2018/10/ssl3.png" alt="ssl3" width="611" height="616" border="0"></noscript>
<img class="lazyload" style="float:none;margin-left:auto;display:block;margin-right:auto;border:0;" title="ssl3" src="data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20611%20616%22%3E%3C/svg%3E" data-src="/wp-content/uploads/2018/10/ssl3.png" alt="ssl3" width="611" height="616" border="0"><p>他のドメインの証明書なのに、ブラウザで安全な接続となるのは、HTTPSレスポンスでStrict-Transport-Security（HSTS）ヘッダーを送信してブラウザが認識するとう内容のようですが、詳細はよく理解できていません。もう少し、コマンドラインのクライアントで詳細を見学してみます。</p>
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
</div></article><nav class="navigation post-navigation" role="navigation" aria-label="投稿"><h2 class="screen-reader-text">投稿ナビゲーション</h2>
<div class="nav-links">
<div class="nav-previous"><a href="/2018/10/17/20181017/" rel="prev noopener noreferrer" data-wpel-link="internal">Linuxエンジニアがサーバを作らず結局、WordPress.com の有料プランに入ることにしたよ</a></div>
<div class="nav-next"><a href="/2018/10/19/consider-wheel-color/" rel="next noopener noreferrer" data-wpel-link="internal">ホイールの色に迷う、画像合成して検討中</a></div>
</div></nav></main></div></div>
<footer id="colophon" class="site-footer wrap" role="contentinfo"><div class="site-info"> Copyleft - all rights reversed. <span class="sep"> | </span> JunkHack 2011 - 2022 <span class="sep"> | </span> <a href="/about-junkhack/" data-wpel-link="internal" rel="noopener noreferrer">運営者情報<span class="gf"></span></a><span class="sep"> | </span> <a href="/mail/" data-wpel-link="internal" rel="noopener noreferrer">お問い合わせ<span class="gf"></span></a><span class="sep"> | </span> <a href="/privacy/" data-wpel-link="internal" rel="noopener noreferrer">プライバシーポリシー<span class="gf"></span></a>
</div></footer>
</div>
<div id="wpfront-scroll-top-container"> <noscript><img src="/wp-content/plugins/wpfront-scroll-top/images/icons/1.png" alt=""></noscript>
<img class="lazyload" src="data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20210%20140%22%3E%3C/svg%3E" data-src="/wp-content/plugins/wpfront-scroll-top/images/icons/1.png" alt="">
</div> <script type="text/javascript">function wpfront_scroll_top_init() {
                if (typeof wpfront_scroll_top === "function" && typeof jQuery !== "undefined") {
                    wpfront_scroll_top({"scroll_offset":100,"button_width":0,"button_height":0,"button_opacity":0.8,"button_fade_duration":200,"scroll_duration":400,"location":1,"marginX":20,"marginY":20,"hide_iframe":false,"auto_hide":false,"auto_hide_after":2,"button_action":"top","button_action_element_selector":"","button_action_container_selector":"html, body","button_action_element_offset":0});
                } else {
                    setTimeout(wpfront_scroll_top_init, 100);
                }
            }
            wpfront_scroll_top_init();</script> <noscript><style>.lazyload{display:none;}</style></noscript>
<script data-noptimize="1">window.lazySizesConfig=window.lazySizesConfig||{};window.lazySizesConfig.loadMode=1;</script><script async data-noptimize="1" src="/wp-content/plugins/autoptimize/classes/external/js/lazysizes.min.js?ao_version=2.9.5"></script><link rel="stylesheet" id="lwptoc-main-css" href="/wp-content/plugins/luckywp-table-of-contents/front/assets/main.min.css?ver=2.1.4" type="text/css" media="all"> <script type="text/javascript" src="/wp-includes/js/dist/vendor/regenerator-runtime.min.js?ver=0.13.7" id="regenerator-runtime-js"></script> <script type="text/javascript" src="/wp-includes/js/dist/vendor/wp-polyfill.min.js?ver=3.15.0" id="wp-polyfill-js"></script> <script type="text/javascript" id="contact-form-7-js-extra">var wpcf7 = {"api":{"root":"\/wp-json\/","namespace":"contact-form-7\/v1"},"cached":"1"};</script> <script type="text/javascript" id="google-invisible-recaptcha-js-before">var renderInvisibleReCaptcha = function() {

    for (var i = 0; i < document.forms.length; ++i) {
        var form = document.forms[i];
        var holder = form.querySelector('.inv-recaptcha-holder');

        if (null === holder) continue;
		holder.innerHTML = '';

         (function(frm){
			var cf7SubmitElm = frm.querySelector('.wpcf7-submit');
            var holderId = grecaptcha.render(holder,{
                'sitekey': '6Lf2z80ZAAAAAJpiFOn2Cix-QJQkaiC7uBA6NCkS', 'size': 'invisible', 'badge' : 'inline',
                'callback' : function (recaptchaToken) {
					if((null !== cf7SubmitElm) && (typeof jQuery != 'undefined')){jQuery(frm).submit();grecaptcha.reset(holderId);return;}
					 HTMLFormElement.prototype.submit.call(frm);
                },
                'expired-callback' : function(){grecaptcha.reset(holderId);}
            });

			if(null !== cf7SubmitElm && (typeof jQuery != 'undefined') ){
				jQuery(cf7SubmitElm).off('click').on('click', function(clickEvt){
					clickEvt.preventDefault();
					grecaptcha.execute(holderId);
				});
			}
			else
			{
				frm.onsubmit = function (evt){evt.preventDefault();grecaptcha.execute(holderId);};
			}


        })(form);
    }
};</script> <script type="text/javascript" async defer src="https://www.google.com/recaptcha/api.js?onload=renderInvisibleReCaptcha&#038;render=explicit&#038;hl=ja" id="google-invisible-recaptcha-js"></script> <script type="text/javascript" src="/wp-content/themes/hew-wpcom/js/contact.js?ver=20210612" id="sendmail-js"></script> <script type="text/javascript" src="https://www.google.com/recaptcha/api.js?render=6Lf2z80ZAAAAAJpiFOn2Cix-QJQkaiC7uBA6NCkS&#038;ver=3.0" id="google-recaptcha-js"></script> <script type="text/javascript" id="wpcf7-recaptcha-js-extra">var wpcf7_recaptcha = {"sitekey":"6Lf2z80ZAAAAAJpiFOn2Cix-QJQkaiC7uBA6NCkS","actions":{"homepage":"homepage","contactform":"contactform"}};</script> <style>.lwptoc .lwptoc_i{border:1px solid #aaaaaa;}.lwptoc_header{color:#232323;}.lwptoc .lwptoc_i A{color:#3d3d3d;}.lwptoc .lwptoc_i A:hover,.lwptoc .lwptoc_i A:focus,.lwptoc .lwptoc_i A:active{color:#0a0a0a;border-color:#0a0a0a;}.lwptoc .lwptoc_i A:visited{color:#5b5b5b;}</style> <script defer src="/wp-content/cache/autoptimize/js/autoptimize_1f1b74e28f5246b30b72ee96176d78e8.js"></script>
</body>
</html>