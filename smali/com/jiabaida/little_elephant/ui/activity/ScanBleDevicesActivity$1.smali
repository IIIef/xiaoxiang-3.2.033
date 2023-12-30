.class Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$1;
.super Landroid/os/Handler;
.source "ScanBleDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Landroid/os/Looper;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "xzx1"

    const-string v0, "\u5bc6\u7801\u9a8c\u8bc1\u8d85\u65f6\u8fdb\u5165\u4e3b\u9875"

    .line 159
    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    goto :goto_0

    .line 162
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 163
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->hideLoading()V

    :cond_1
    :goto_0
    return-void
.end method
