.class Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient$1;
.super Ljava/lang/Object;
.source "CommonWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 592
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 593
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient$1;->this$1:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$publicWebViewClient;->this$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->access$1000(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
