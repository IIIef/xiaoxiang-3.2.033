.class Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$10;
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

    .line 343
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$10;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 346
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$10;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->isLogin()Z

    move-result p1

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$10;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$10;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$10;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$10;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
