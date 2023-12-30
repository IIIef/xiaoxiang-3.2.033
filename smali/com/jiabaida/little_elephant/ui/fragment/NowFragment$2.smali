.class Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$2;
.super Lcom/clj/fastble/callback/BleGattCallback;
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

    .line 345
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleGattCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onConnectSuccess$0()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 378
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 381
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->sendAppKey()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V
    .locals 1

    .line 353
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->hideLoading()V

    .line 354
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    const v0, 0x7f0d0055

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showDefaultMsg(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isBleConnected()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 356
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p2

    invoke-virtual {p2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    :cond_0
    return-void
.end method

.method public onConnectSuccess(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .line 365
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 366
    sget-object p2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->TestLine:Ljava/lang/StringBuffer;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f53\u524d\u961f\u5217\u957f\u5ea6--"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p2, 0x0

    .line 367
    sput-boolean p2, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->isCanAutoConnect:Z

    const/4 p2, 0x1

    .line 368
    sput-boolean p2, Lcom/jiabaida/little_elephant/util/BleUtils;->isCheckOta:Z

    .line 369
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 370
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 371
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p3

    const-string v0, "Bluetoothdevice"

    invoke-virtual {p3, v0, p2}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BluetoothName"

    invoke-virtual {p2, v0, p3}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BluetoothMac"

    invoke-virtual {p2, v0, p3}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->openNotify(Lcom/clj/fastble/data/BleDevice;)V

    .line 375
    invoke-static {}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->getInstance()Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/socket/BleInfoUpdateHelper;->queryMacPermissions(Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ble connected!"

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance p1, Ljava/lang/Thread;

    sget-object p2, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$2$$ExternalSyntheticLambda0;->INSTANCE:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 383
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 384
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$200(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    return-void
.end method

.method public onDisConnected(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .line 391
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p2

    const-string p3, "sp_key_ble_auth"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Z)V

    .line 392
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    if-eqz p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    const p2, 0x7f0d0033

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showDefaultMsg(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ble disconnect"

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/IdsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$2;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$700(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    .line 400
    new-instance p1, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 p2, 0x2711

    const-string p4, "{}"

    invoke-direct {p1, p2, p4, p3}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(ILjava/lang/String;[B)V

    .line 401
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 402
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ble disconnect-2 send msg"

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/IdsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStartConnect()V
    .locals 0

    return-void
.end method
