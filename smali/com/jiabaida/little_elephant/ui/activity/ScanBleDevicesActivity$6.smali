.class Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$6;
.super Ljava/lang/Object;
.source "ScanBleDevicesActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/util/DialogUtils$OnCancelClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->checkedPsw(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1035
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    .line 1036
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$6;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Lcom/clj/fastble/data/BleDevice;I)V

    return-void
.end method
