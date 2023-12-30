.class Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "CommonWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublicWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;


# direct methods
.method private constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;)V
    .locals 0

    .line 451
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 2

    const-string v0, "---webClient"

    const-string v1, "onHideCustomView"

    .line 520
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$900(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 529
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 493
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0x64

    if-lt p2, p1, :cond_0

    .line 495
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 498
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 500
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 468
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    const-string v0, "---webClient"

    const-string v1, "onShowCustomView"

    .line 506
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)V

    .line 509
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$800(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 514
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$902(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Z)Z

    .line 515
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 457
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 458
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->startTakePhoto()V

    .line 459
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getRxPermissions()Lcom/tbruyelle/rxpermissions2/RxPermissions;

    move-result-object p1

    const-string p2, "android.permission.CAMERA"

    invoke-virtual {p1, p2}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->isGranted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->getRxPermissions()Lcom/tbruyelle/rxpermissions2/RxPermissions;

    move-result-object p1

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->isGranted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$402(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 475
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->startTakePhoto()V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 480
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$402(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 481
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->startTakePhoto()V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 487
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$402(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 488
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$PublicWebChromeClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->startTakePhoto()V

    return-void
.end method
