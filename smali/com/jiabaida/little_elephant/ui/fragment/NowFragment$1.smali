.class Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;
.super Landroid/os/Handler;
.source "NowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;
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

    .line 311
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 314
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 315
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->BletimeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 316
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 325
    :cond_0
    sget p1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->serial:I

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 326
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$300(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    .line 327
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DD \u66f4\u65b0\u6570\u636e\uff0c\u5f53\u524d\u7535\u6d41"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v1

    iget v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->current:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 319
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 321
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$200(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    .line 338
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$600(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 339
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$600(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/jiabaida/little_elephant/thread/SendCMDThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->onResume()V

    goto :goto_0

    .line 331
    :cond_3
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$500(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 332
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showLoading()V

    .line 333
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$500(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    invoke-virtual {p1, v0, v1}, Lcom/clj/fastble/BleManager;->connect(Ljava/lang/String;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    :cond_4
    :goto_0
    return-void
.end method
