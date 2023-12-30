.class Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CommonWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "publicWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;


# direct methods
.method private constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;)V
    .locals 0

    .line 571
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 574
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 575
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    .line 576
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 583
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 585
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----onReceivedError-url-->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "<--->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--\u9519\u8bef\u4fe1\u606f:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "---CommonWebActivity"

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 587
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/Button;

    move-result-object p1

    new-instance p2, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient$1;

    invoke-direct {p2, p0}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
