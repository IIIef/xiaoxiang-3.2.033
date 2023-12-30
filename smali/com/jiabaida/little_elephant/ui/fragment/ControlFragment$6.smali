.class Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$6;
.super Landroid/os/Handler;
.source "ControlFragment.java"


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

    .line 541
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$6;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 544
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 545
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x4e20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d00

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$6;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$300(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSAdjustCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 551
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$6;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$700(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V

    :goto_0
    return-void
.end method
