.class Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$5;
.super Ljava/lang/Object;
.source "NowFragment.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->canBindDevice(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$5;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

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

    .line 622
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 623
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$5;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showLoading()V

    .line 624
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object p1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p2

    invoke-virtual {p2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->bindDevice(Ljava/lang/String;Lcom/jiabaida/little_elephant/socket/SocketClineListener;)V

    :cond_0
    return-void
.end method
