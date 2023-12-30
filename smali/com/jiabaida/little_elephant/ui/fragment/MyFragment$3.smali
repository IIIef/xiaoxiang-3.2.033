.class Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$3;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->initView(Landroid/view/View;)V
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

    .line 190
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$3;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 193
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 194
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$3;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00a1

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;I)V

    return-void

    .line 197
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$3;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$3;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
