.class Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;
.super Ljava/lang/Object;
.source "ScanBleDevicesActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter$OnDeviceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->initData()V
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

    .line 253
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appKeyCallback(Lcom/clj/fastble/data/BleDevice;I)V
    .locals 3

    .line 306
    invoke-static {}, Lcom/jiabaida/little_elephant/util/DialogUtils;->getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    new-instance v2, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;ILcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {v0, v1, v2}, Lcom/jiabaida/little_elephant/util/DialogUtils;->baseAppKeyDialog(Landroid/content/Context;Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;)V

    return-void
.end method

.method synthetic lambda$appKeyCallback$0$com-jiabaida-little_elephant-ui-activity-ScanBleDevicesActivity$2(ILcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 307
    iget-object p4, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p4}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    invoke-virtual {p4, p3}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->setBaseAppKey(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 309
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->getBaseAppKey()Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, ""

    if-nez p3, :cond_0

    .line 311
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p3, p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1, p4}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1, p2, p4}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onClickChectBluetooth(Landroid/view/View;IZLcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 286
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    invoke-virtual {p1, p3}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->setCheckState(Z)V

    .line 287
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/adapter/ScanBleDevicesAdapter;->notifyLocalDevice()V

    if-eqz p3, :cond_2

    .line 290
    new-instance p1, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;

    .line 291
    invoke-virtual {p4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 292
    :goto_0
    invoke-virtual {p4}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p4}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-direct {p1, p2, p3}, Lcom/jiabaida/little_elephant/db/BleDeviceListBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    .line 294
    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/jiabaida/little_elephant/db/BleDeviceController;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/db/BleDeviceController;

    move-result-object p2

    .line 295
    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/db/BleDeviceController;->insertOrReplace(Lcom/jiabaida/little_elephant/db/BleDeviceListBean;)V

    goto :goto_3

    .line 298
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    .line 299
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/db/BleDeviceController;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/db/BleDeviceController;

    move-result-object p1

    .line 300
    invoke-virtual {p4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-virtual {p4}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BleDeviceController;->delete(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onConnect(Lcom/clj/fastble/data/BleDevice;I)V
    .locals 1

    .line 256
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 258
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->cancelScan()V

    .line 260
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/entity/ScanBleDevicesBean;->getBaseAppKey()Ljava/lang/String;

    move-result-object p2

    .line 261
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0, p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$302(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    :cond_0
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$400(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;)V

    .line 267
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    const-string v0, ""

    invoke-static {p2, p1, v0}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$500(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0d0153

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->showDefaultMsg(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDisConnect(Lcom/clj/fastble/data/BleDevice;I)V
    .locals 1

    .line 278
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;

    invoke-static {v0, p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;->access$600(Lcom/jiabaida/little_elephant/ui/activity/ScanBleDevicesActivity;Lcom/clj/fastble/data/BleDevice;I)V

    :cond_0
    return-void
.end method
