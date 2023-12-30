.class Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$4;
.super Ljava/lang/Object;
.source "ControlFragment.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 520
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->hideLoading()V

    .line 521
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->showMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 515
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$4;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$600(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x7d00

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
