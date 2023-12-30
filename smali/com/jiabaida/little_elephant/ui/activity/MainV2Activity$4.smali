.class Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$4;
.super Landroid/os/Handler;
.source "MainV2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 593
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 594
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 596
    sget-object p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 598
    sget-object p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 599
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    sget-object v1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "\u900f\u4f20\u6307\u4ee4"

    invoke-virtual {p1, v2, v0, v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeData(Ljava/lang/String;Lcom/clj/fastble/data/BleDevice;[B)V

    goto :goto_0

    .line 601
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->timeHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 603
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 604
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 605
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;)Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->threadResume()V

    goto :goto_0

    .line 607
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_3

    .line 608
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$4;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e8c\u7ea7\u5bc6\u7801\u9884\u8bbe\u6307\u4ee4\u53d1\u9001\u8d85\u65f6!"

    invoke-virtual {p1, v0, v1}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
