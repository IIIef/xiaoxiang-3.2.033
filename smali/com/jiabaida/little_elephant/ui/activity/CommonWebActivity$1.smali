.class Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;
.super Ljava/lang/Object;
.source "CommonWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "back\u4e0a\u4e00\u9875:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "---web_url:"

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->finish()V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->finish()V

    :goto_0
    return-void
.end method
