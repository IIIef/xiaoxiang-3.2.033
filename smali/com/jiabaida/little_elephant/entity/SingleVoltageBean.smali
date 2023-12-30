.class public Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;
.super Ljava/lang/Object;
.source "SingleVoltageBean.java"


# instance fields
.field private maxVoltage:F

.field private nowVoltage:F

.field private number:I


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p3, p0, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->maxVoltage:F

    .line 26
    iput p2, p0, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->nowVoltage:F

    .line 27
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->number:I

    return-void
.end method


# virtual methods
.method public getMaxVoltage()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->maxVoltage:F

    return v0
.end method

.method public getNowVoltage()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->nowVoltage:F

    return v0
.end method

.method public getNumber()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->number:I

    return v0
.end method

.method public setMaxVoltage(F)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->maxVoltage:F

    return-void
.end method

.method public setNowVoltage(F)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->nowVoltage:F

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/SingleVoltageBean;->number:I

    return-void
.end method
