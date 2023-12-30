.class Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;
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

    .line 168
    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 173
    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$102(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    .line 174
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    new-instance p2, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    invoke-direct {p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;-><init>()V

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$302(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    .line 175
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p2

    invoke-virtual {p2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setBleMacAddress(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->remaindPower:F

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setSurplusCapacity(F)V

    .line 177
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->totalVoltage:F

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setTotalVoltage(F)V

    .line 178
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->current:F

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setElectricity(F)V

    .line 179
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->cycleTimes:I

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setCycleIndex(I)V

    .line 180
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->totalVoltage:F

    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->serial:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setAvgVoltage(F)V

    .line 181
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->totalVoltage:F

    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->current:F

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setPower(F)V

    .line 182
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->RSOC:I

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setSoc(I)V

    .line 183
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget-boolean p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->chargeSwithOnOff:Z

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setChargeSwitch(I)V

    .line 184
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object p2

    iget-boolean p2, p2, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->outputSwitchOnOff:Z

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setDischargeSwitch(I)V

    .line 186
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$300(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService$2;->this$0:Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$100(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;)Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBaseInfoCMDEntity;->tempList:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;->access$400(Lcom/jiabaida/little_elephant/net/service/BMSRealTimeService;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->setTemperatures(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
