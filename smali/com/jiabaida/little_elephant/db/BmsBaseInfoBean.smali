.class public Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;
.super Ljava/lang/Object;
.source "BmsBaseInfoBean.java"


# instance fields
.field private RatedChargingCurrent:F

.field private RatedChargingVoltage:F

.field private RatedDischargeCurrent:F

.field private RatedDischargePower:F

.field private bmsModle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->bmsModle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBmsModle()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->bmsModle:Ljava/lang/String;

    return-object v0
.end method

.method public getRatedChargingCurrent()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->RatedChargingCurrent:F

    return v0
.end method

.method public getRatedChargingVoltage()F
    .locals 1

    .line 22
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->RatedChargingVoltage:F

    return v0
.end method

.method public getRatedDischargeCurrent()F
    .locals 1

    .line 38
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->RatedDischargeCurrent:F

    return v0
.end method

.method public getRatedDischargePower()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->RatedDischargePower:F

    return v0
.end method

.method public setBmsModle(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->bmsModle:Ljava/lang/String;

    return-void
.end method

.method public setRatedChargingCurrent(F)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->RatedChargingCurrent:F

    return-void
.end method

.method public setRatedChargingVoltage(F)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->RatedChargingVoltage:F

    return-void
.end method

.method public setRatedDischargeCurrent(F)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->RatedDischargeCurrent:F

    return-void
.end method

.method public setRatedDischargePower(F)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BmsBaseInfoBean;->RatedDischargePower:F

    return-void
.end method
