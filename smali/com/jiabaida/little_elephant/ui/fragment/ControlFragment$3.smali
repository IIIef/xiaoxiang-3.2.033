.class Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$3;
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

    .line 492
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$3;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 2

    .line 501
    iget-char p1, p1, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmd:C

    const/16 p2, 0xfb

    if-ne p1, p2, :cond_0

    .line 503
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$3;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$600(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x4e20

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$3;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 506
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$3;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    const p2, 0x7f0d0118

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->showDefaultMsg(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 495
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$3;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$500(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method
