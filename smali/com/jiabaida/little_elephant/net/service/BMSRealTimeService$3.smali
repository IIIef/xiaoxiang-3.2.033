.class Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;
.super Ljava/lang/Object;
.source "BMSRealTimeService.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


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

    .line 198
    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 2

    .line 227
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->BletimeHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$500(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    const p2, 0xc350

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->BletimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$500(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const v3, 0xc350

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-nez p2, :cond_0

    .line 205
    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;

    .line 206
    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p2

    iget v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->maxVoltage:F

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setCeilingVoltage(F)V

    .line 207
    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p2

    iget v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->minVoltage:F

    invoke-virtual {p2, v0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setMinimumVoltage(F)V

    .line 209
    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getVoltageList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->getVoltagesStr(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setVoltageSeries(Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setId(Ljava/lang/Long;)V

    .line 219
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$602(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    .line 220
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/db/BMSRealTimeController;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$3;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->clone()Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeController;->insert(Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)J

    :cond_0
    return-void
.end method
