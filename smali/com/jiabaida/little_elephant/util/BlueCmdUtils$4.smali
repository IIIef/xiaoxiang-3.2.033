.class Lcom/jiabaida/little_elephant/util/BlueCmdUtils$4;
.super Ljava/lang/Object;
.source "BlueCmdUtils.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/util/BlueCmdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$4;->this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 439
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$4;->this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->access$208(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;)I

    .line 440
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$4;->this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->access$200(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    .line 441
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0d0118

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "xiezhixian"

    const-string p2, "\u4e00\u952e\u4e09\u5143\u94c1\u9502\u53c2\u6570\u5207\u6362\u5931\u8d25"

    .line 442
    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    .line 444
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 445
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 446
    invoke-static {}, Lcom/jiabaida/little_elephant/util/DialogUtils;->getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/DialogUtils;->dismiss()V

    :cond_0
    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    .line 425
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$4;->this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->access$208(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;)I

    .line 426
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$4;->this$0:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->access$200(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;)I

    move-result p1

    const/16 p2, 0x1a

    if-ne p1, p2, :cond_0

    .line 427
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object p1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0d0116

    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "xiezhixian"

    const-string p2, "\u4e00\u952e\u4e09\u5143\u94c1\u9502\u53c2\u6570\u5207\u6362\u5b8c\u6210"

    .line 428
    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    .line 430
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 431
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 432
    invoke-static {}, Lcom/jiabaida/little_elephant/util/DialogUtils;->getInstances()Lcom/jiabaida/little_elephant/util/DialogUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/DialogUtils;->dismiss()V

    .line 433
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    const/16 v0, 0x2774

    invoke-direct {p2, v0}, Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
