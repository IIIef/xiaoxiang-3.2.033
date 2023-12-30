.class Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$6;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$6;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 266
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$6;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$6;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->WEB_TITLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$6;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    :cond_0
    sget-object v0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->WEB_URL:Ljava/lang/String;

    const-string v1, "http://www.jiabaida.com/home-lifponotify-index-catId-54.html"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$6;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
