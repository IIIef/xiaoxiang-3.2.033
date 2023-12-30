.class public Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;
.super Lcom/jiabaida/little_elephant/ui/base/BaseActivity;
.source "CommonWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$WebJavaScriptInterface;,
        Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;,
        Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;
    }
.end annotation


# static fields
.field public static final APP_CACAHE_DIRNAME:Ljava/lang/String; = "/webcache"

.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "---CommonWebActivity"

.field public static WEB_TITLE:Ljava/lang/String; = "title"

.field public static WEB_URL:Ljava/lang/String; = "url_web"


# instance fields
.field private btnRefresh:Landroid/widget/Button;

.field private flTopBack:Landroid/widget/FrameLayout;

.field private imageUri:Landroid/net/Uri;

.field private isPressChangePortrait:Z

.field private ivTopBack:Landroid/widget/ImageView;

.field private mUploadCallbackAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoLandParent:Landroid/widget/FrameLayout;

.field private mVideoPortParent:Landroid/widget/LinearLayout;

.field public mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;

.field private tvTopTitle:Landroid/widget/TextView;

.field private tvTopTitleR:Landroid/widget/TextView;

.field private url_title:Ljava/lang/String;

.field private url_web:Ljava/lang/String;

.field private videoWebChromeClient:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;

.field public webJSInterFace:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$WebJavaScriptInterface;

.field private webViewProgressLoad:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;-><init>()V

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->url_web:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->url_title:Ljava/lang/String;

    const/4 v0, 0x1

    .line 568
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->isPressChangePortrait:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->url_web:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/Button;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->btnRefresh:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$402(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->webViewProgressLoad:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->changeScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mVideoPortParent:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mVideoLandParent:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->isPressChangePortrait:Z

    return p0
.end method

.method static synthetic access$902(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->isPressChangePortrait:Z

    return p1
.end method

.method private changeScreen()V
    .locals 3

    .line 554
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "---webToVmp"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 555
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->setRequestedOrientation(I)V

    const-string v2, "\u6a2a\u5c4f"

    .line 556
    invoke-static {v1, v2}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->isPressChangePortrait:Z

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->setRequestedOrientation(I)V

    const-string v0, "\u7ad6\u5c4f"

    .line 560
    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iput-boolean v2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->isPressChangePortrait:Z

    :goto_0
    return-void
.end method

.method private initVideoPlaySetting()V
    .locals 6

    const v0, 0x7f080119

    .line 413
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mVideoPortParent:Landroid/widget/LinearLayout;

    const v0, 0x7f0800c2

    .line 414
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mVideoLandParent:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 416
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 417
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setAllowUniversalAccessFromFileURLs"

    new-array v4, v1, [Ljava/lang/Class;

    .line 418
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 420
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 424
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 428
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 429
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 431
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 434
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 435
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "android"

    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->url_web:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-void
.end method

.method private initWeb()V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->webJSInterFace:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$WebJavaScriptInterface;

    const-string v2, "XiaoXiang_JSBridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 142
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 144
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const/4 v2, 0x1

    .line 147
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 148
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; AndroidSiFuQuery&Version="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/jiabaida/little_elephant/util/AppUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 153
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 159
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jiabaida/little_elephant/util/NetWorkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    const/4 v3, -0x1

    .line 161
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 167
    :goto_0
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 168
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 169
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 170
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 171
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 172
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 175
    :cond_1
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/webcache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 183
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 185
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 187
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 189
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 190
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 227
    :cond_2
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebViewClient:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;

    .line 228
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 230
    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;

    invoke-direct {v0, p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->videoWebChromeClient:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;

    .line 231
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 232
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->url_web:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private onActivityResultAboveL(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 270
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, p1, :cond_5

    if-nez p3, :cond_1

    new-array p1, v0, [Landroid/net/Uri;

    .line 278
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->imageUri:Landroid/net/Uri;

    aput-object p2, p1, v2

    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 284
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    new-array p3, p3, [Landroid/net/Uri;

    const/4 v3, 0x0

    .line 285
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 286
    invoke-virtual {p2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 287
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p3, v1

    :cond_3
    if-eqz p1, :cond_4

    new-array p2, v0, [Landroid/net/Uri;

    .line 292
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, p2, v2

    move-object p1, p2

    goto :goto_1

    :cond_4
    move-object p1, p3

    goto :goto_1

    :cond_5
    move-object p1, v1

    :goto_1
    const-string p2, "---CommonWebActivity"

    if-eqz p1, :cond_6

    .line 296
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0a\u4f201:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 298
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    goto :goto_2

    :cond_6
    new-array p1, v0, [Landroid/net/Uri;

    .line 300
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->imageUri:Landroid/net/Uri;

    aput-object p3, p1, v2

    .line 301
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0a\u4f202:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 303
    iput-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    :cond_7
    :goto_2
    return-void
.end method

.method private startTakePhotoPermissions()V
    .locals 3

    .line 623
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getRxPermissions()Lcom/tbruyelle/rxpermissions2/RxPermissions;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->requestEachCombined([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)V

    .line 625
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private takeCameraIImg()V
    .locals 10

    .line 706
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "JC_CameraIMG"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 709
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 714
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "IMG_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->imageUri:Landroid/net/Uri;

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---\u76f8\u673aimg-\u6355\u6349->>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "---CommonWebActivity"

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 721
    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 722
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 724
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 725
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 726
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 727
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->imageUri:Landroid/net/Uri;

    const-string v6, "output"

    invoke-virtual {v7, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 729
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 733
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.OPENABLE"

    .line 734
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "image/*"

    .line 735
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Image Chooser"

    .line 736
    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---\u76f8\u673aimg--\u300b--\u6355\u6349->>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v2, [Landroid/os/Parcelable;

    .line 738
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 739
    invoke-virtual {p0, v3, v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00af

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected attachLayoutRes()I
    .locals 1

    const v0, 0x7f0a0044

    return v0
.end method

.method public clearCookie()V
    .locals 1

    .line 387
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 388
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 390
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->clearWebViewCacheAndCookie()V

    return-void
.end method

.method public clearWebViewCacheAndCookie()V
    .locals 4

    .line 334
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 335
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :try_start_0
    const-string v0, "webview.db"

    .line 340
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "webviewCache.db"

    .line 341
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/webcache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/webviewCache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->deleteDir(Ljava/io/File;)Z

    .line 354
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->deleteDir(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method public deleteDir(Ljava/io/File;)Z
    .locals 3

    .line 366
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 369
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 371
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 372
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->deleteDir(Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "_data"

    .line 823
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 826
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 827
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 828
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 829
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 832
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    move-object v7, p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 833
    :cond_3
    throw p2
.end method

.method public getDiskDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 685
    :try_start_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 687
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "mounted"

    .line 689
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 695
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "/storage/emulated/0/Android/data/com.jicheng.android.project/files/jcFiles"

    .line 699
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImgPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    .line 752
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 755
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 757
    invoke-virtual {p0, p2}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v0

    const-string v4, ":"

    if-eqz v0, :cond_1

    .line 758
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 759
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 760
    aget-object p2, p1, v2

    const-string v0, "primary"

    .line 762
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 763
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 769
    :cond_1
    invoke-virtual {p0, p2}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 771
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "content://downloads/public_downloads"

    .line 772
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 774
    invoke-virtual {p0, p1, p2, v3, v3}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 777
    :cond_2
    invoke-virtual {p0, p2}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 778
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 779
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 780
    aget-object v0, p2, v2

    const-string v4, "image"

    .line 783
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 784
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    const-string v4, "video"

    .line 785
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 786
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    const-string v4, "audio"

    .line 787
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 788
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_5
    :goto_1
    new-array v0, v1, [Ljava/lang/String;

    .line 792
    aget-object p2, p2, v1

    aput-object p2, v0, v2

    const-string p2, "_id=?"

    .line 794
    invoke-virtual {p0, p1, v3, p2, v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 798
    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 799
    invoke-virtual {p0, p1, p2, v3, v3}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 802
    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 803
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v3
.end method

.method protected initData()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->initWeb()V

    .line 133
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->initVideoPlaySetting()V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 7

    const p1, 0x7f0800c3

    .line 101
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->flTopBack:Landroid/widget/FrameLayout;

    const p1, 0x7f0800f9

    .line 102
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->ivTopBack:Landroid/widget/ImageView;

    const p1, 0x7f0802a0

    .line 103
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->tvTopTitle:Landroid/widget/TextView;

    const p1, 0x7f0802a2

    .line 104
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->tvTopTitleR:Landroid/widget/TextView;

    const p1, 0x7f0802b2

    .line 106
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    const p1, 0x7f0802b1

    .line 107
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->webViewProgressLoad:Landroid/widget/ProgressBar;

    const p1, 0x7f08003a

    .line 108
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->btnRefresh:Landroid/widget/Button;

    .line 109
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->ivTopBack:Landroid/widget/ImageView;

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->ivTopBack:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->flTopBack:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->url_title:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->flTopBack:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->tvTopTitleR:Landroid/widget/TextView;

    const-string v3, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->setTitle(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 852
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 843
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 861
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$startTakePhotoPermissions$0$com-jiabaida-little_elephant-ui-activity-CommonWebActivity(Lcom/tbruyelle/rxpermissions2/Permission;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 626
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    if-eqz v0, :cond_0

    .line 629
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->takeCameraIImg()V

    goto :goto_0

    .line 630
    :cond_0
    iget-boolean p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    const-string v0, "---dialog:"

    if-eqz p1, :cond_1

    const-string p1, "===\u4e00\u4e2a\u62d2\u7edd==="

    .line 633
    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->goToAppSetting()V

    goto :goto_0

    :cond_1
    const-string p1, "===\u81f3\u5c11\u6709\u4e00\u4e2a==="

    .line 640
    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->goToAppSetting()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 240
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v0

    .line 243
    :goto_1
    iget-object v2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_3

    .line 245
    invoke-direct {p0, p1, p2, p3}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->onActivityResultAboveL(IILandroid/content/Intent;)V

    goto :goto_3

    .line 246
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_5

    if-eqz v1, :cond_4

    .line 249
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getImgPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 250
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 251
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 253
    :cond_4
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->imageUri:Landroid/net/Uri;

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 255
    :goto_2
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    :cond_5
    :goto_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 536
    invoke-super {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 537
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/16 v1, 0x800

    const/16 v2, 0x400

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 540
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 544
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method

.method protected onCreateBefor(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onCreateBefor(Landroid/os/Bundle;)V

    .line 89
    new-instance p1, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$WebJavaScriptInterface;

    invoke-direct {p1, p0, p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$WebJavaScriptInterface;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->webJSInterFace:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$WebJavaScriptInterface;

    .line 90
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->WEB_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->url_web:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->WEB_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->url_title:Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .line 397
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    .line 399
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 401
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 402
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    .line 405
    :cond_0
    invoke-super {p0}, Lcom/jiabaida/little_elephant/ui/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 312
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->url_web:Ljava/lang/String;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->finish()V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, p2, :cond_1

    .line 316
    iput-boolean p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->isPressChangePortrait:Z

    .line 317
    invoke-virtual {p0, p2}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 319
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->finish()V

    :goto_0
    return p2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    return-void
.end method

.method public startTakePhoto()V
    .locals 2

    .line 650
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getRxPermissions()Lcom/tbruyelle/rxpermissions2/RxPermissions;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->isGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getRxPermissions()Lcom/tbruyelle/rxpermissions2/RxPermissions;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->isGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->takeCameraIImg()V

    goto :goto_0

    .line 677
    :cond_0
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->startTakePhotoPermissions()V

    :goto_0
    return-void
.end method
