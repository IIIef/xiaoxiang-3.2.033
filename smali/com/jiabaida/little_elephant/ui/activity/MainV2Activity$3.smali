.class Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;
.super Ljava/lang/Object;
.source "MainV2Activity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->showOtaDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

.field final synthetic val$otaName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 510
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;->val$otaName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DismissListener(Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public leftBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public rightBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 519
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 520
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    const v0, 0x7f0d00a1

    invoke-virtual {p1, p2, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;I)V

    return-void

    .line 523
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 524
    new-instance p2, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;

    invoke-direct {p2}, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;-><init>()V

    .line 525
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->setContent([B)V

    .line 526
    new-instance p1, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3$1;

    invoke-direct {p1, p0}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3$1;-><init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$3;)V

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/entity/BLENameCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 539
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method
