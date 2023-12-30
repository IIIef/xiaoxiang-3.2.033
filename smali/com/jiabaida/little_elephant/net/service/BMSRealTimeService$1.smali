.class Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$1;
.super Landroid/os/Handler;
.source "BMSRealTimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 151
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->BletimeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 152
    invoke-static {}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "===\u5b9a\u65f6\u5b58\u50a8\u6570\u636e==000=="

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0xc350

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 156
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$200(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :goto_0
    return-void
.end method
