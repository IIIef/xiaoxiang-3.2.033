.class public Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;
.super Ljava/lang/Object;
.source "BMSRealTimeDataBean.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private RatedChargingCurrent:F

.field private RatedChargingVoltage:F

.field private RatedDischargeCurrent:F

.field private RatedDischargePower:F

.field private avgVoltage:F

.field private bleMacAddress:Ljava/lang/String;

.field private ceilingVoltage:F

.field private chargeSwitch:I

.field private cycleIndex:I

.field private dischargeSwitch:I

.field private dropoutVoltage:F

.field private electricity:F

.field private equilibriumStatus:I

.field private humidity:F

.field private id:Ljava/lang/Long;

.field private minimumVoltage:F

.field private power:F

.field private protectStatus:I

.field private soc:I

.field private surplusCapacity:F

.field private temperatures:Ljava/lang/String;

.field private timeDateDec:Ljava/lang/Long;

.field private timeStamp:J

.field private totalVoltage:F

.field private voltageSeries:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;IFFFFFFFIFFFFFFIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 60
    iput-object v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->id:Ljava/lang/Long;

    move-wide v1, p2

    .line 61
    iput-wide v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->timeStamp:J

    move-object v1, p4

    .line 62
    iput-object v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->timeDateDec:Ljava/lang/Long;

    move-object v1, p5

    .line 63
    iput-object v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->bleMacAddress:Ljava/lang/String;

    move v1, p6

    .line 64
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->soc:I

    move v1, p7

    .line 65
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->surplusCapacity:F

    move v1, p8

    .line 66
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->totalVoltage:F

    move v1, p9

    .line 67
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->electricity:F

    move v1, p10

    .line 68
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->power:F

    move v1, p11

    .line 69
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->ceilingVoltage:F

    move v1, p12

    .line 70
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->minimumVoltage:F

    move/from16 v1, p13

    .line 71
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->avgVoltage:F

    move/from16 v1, p14

    .line 72
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->cycleIndex:I

    move/from16 v1, p15

    .line 73
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->dropoutVoltage:F

    move/from16 v1, p16

    .line 74
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->humidity:F

    move/from16 v1, p17

    .line 75
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedChargingVoltage:F

    move/from16 v1, p18

    .line 76
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedChargingCurrent:F

    move/from16 v1, p19

    .line 77
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedDischargeCurrent:F

    move/from16 v1, p20

    .line 78
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedDischargePower:F

    move/from16 v1, p21

    .line 79
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->equilibriumStatus:I

    move/from16 v1, p22

    .line 80
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->chargeSwitch:I

    move/from16 v1, p23

    .line 81
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->dischargeSwitch:I

    move/from16 v1, p24

    .line 82
    iput v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->protectStatus:I

    move-object/from16 v1, p25

    .line 83
    iput-object v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->temperatures:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 84
    iput-object v1, v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->voltageSeries:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;
    .locals 1

    .line 275
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->clone()Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;

    move-result-object v0

    return-object v0
.end method

.method public getAvgVoltage()F
    .locals 1

    .line 154
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->avgVoltage:F

    return v0
.end method

.method public getBleMacAddress()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->bleMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCeilingVoltage()F
    .locals 1

    .line 142
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->ceilingVoltage:F

    return v0
.end method

.method public getChargeSwitch()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->chargeSwitch:I

    return v0
.end method

.method public getCycleIndex()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->cycleIndex:I

    return v0
.end method

.method public getDischargeSwitch()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->dischargeSwitch:I

    return v0
.end method

.method public getDropoutVoltage()F
    .locals 1

    .line 166
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->dropoutVoltage:F

    return v0
.end method

.method public getElectricity()F
    .locals 1

    .line 130
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->electricity:F

    return v0
.end method

.method public getEquilibriumStatus()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->equilibriumStatus:I

    return v0
.end method

.method public getHumidity()F
    .locals 1

    .line 172
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->humidity:F

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinimumVoltage()F
    .locals 1

    .line 148
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->minimumVoltage:F

    return v0
.end method

.method public getPower()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->power:F

    return v0
.end method

.method public getProtectStatus()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->protectStatus:I

    return v0
.end method

.method public getRatedChargingCurrent()F
    .locals 1

    .line 184
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedChargingCurrent:F

    return v0
.end method

.method public getRatedChargingVoltage()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedChargingVoltage:F

    return v0
.end method

.method public getRatedDischargeCurrent()F
    .locals 1

    .line 190
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedDischargeCurrent:F

    return v0
.end method

.method public getRatedDischargePower()F
    .locals 1

    .line 196
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedDischargePower:F

    return v0
.end method

.method public getSoc()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->soc:I

    return v0
.end method

.method public getSurplusCapacity()F
    .locals 1

    .line 118
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->surplusCapacity:F

    return v0
.end method

.method public getTemperatures()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->temperatures:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeDateDec()J
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->timeDateDec:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->timeStamp:J

    return-wide v0
.end method

.method public getTotalVoltage()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->totalVoltage:F

    return v0
.end method

.method public getVoltageSeries()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->voltageSeries:Ljava/lang/String;

    return-object v0
.end method

.method public setAvgVoltage(F)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->avgVoltage:F

    return-void
.end method

.method public setBleMacAddress(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->bleMacAddress:Ljava/lang/String;

    return-void
.end method

.method public setCeilingVoltage(F)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->ceilingVoltage:F

    return-void
.end method

.method public setChargeSwitch(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->chargeSwitch:I

    return-void
.end method

.method public setCycleIndex(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->cycleIndex:I

    return-void
.end method

.method public setDischargeSwitch(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->dischargeSwitch:I

    return-void
.end method

.method public setDropoutVoltage(F)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->dropoutVoltage:F

    return-void
.end method

.method public setElectricity(F)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->electricity:F

    return-void
.end method

.method public setEquilibriumStatus(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->equilibriumStatus:I

    return-void
.end method

.method public setHumidity(F)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->humidity:F

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setMinimumVoltage(F)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->minimumVoltage:F

    return-void
.end method

.method public setPower(F)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->power:F

    return-void
.end method

.method public setProtectStatus(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->protectStatus:I

    return-void
.end method

.method public setRatedChargingCurrent(F)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedChargingCurrent:F

    return-void
.end method

.method public setRatedChargingVoltage(F)V
    .locals 0

    .line 181
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedChargingVoltage:F

    return-void
.end method

.method public setRatedDischargeCurrent(F)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedDischargeCurrent:F

    return-void
.end method

.method public setRatedDischargePower(F)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedDischargePower:F

    return-void
.end method

.method public setSoc(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->soc:I

    return-void
.end method

.method public setSurplusCapacity(F)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->surplusCapacity:F

    return-void
.end method

.method public setTemperatures(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->temperatures:Ljava/lang/String;

    return-void
.end method

.method public setTimeDateDec(J)V
    .locals 0

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->timeDateDec:Ljava/lang/Long;

    return-void
.end method

.method public setTimeDateDec(Ljava/lang/Long;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->timeDateDec:Ljava/lang/Long;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->timeStamp:J

    return-void
.end method

.method public setTotalVoltage(F)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->totalVoltage:F

    return-void
.end method

.method public setVoltageSeries(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->voltageSeries:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BMSRealTimeDataBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeDateDec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->timeDateDec:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bleMacAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->bleMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", soc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->soc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surplusCapacity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->surplusCapacity:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", totalVoltage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->totalVoltage:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", electricity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->electricity:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", power="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->power:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", ceilingVoltage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->ceilingVoltage:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", minimumVoltage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->minimumVoltage:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", avgVoltage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->avgVoltage:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", cycleIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->cycleIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dropoutVoltage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->dropoutVoltage:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", humidity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->humidity:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", RatedChargingVoltage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedChargingVoltage:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", RatedChargingCurrent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedChargingCurrent:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", RatedDischargeCurrent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedDischargeCurrent:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", RatedDischargePower="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->RatedDischargePower:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", equilibriumStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->equilibriumStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", chargeSwitch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->chargeSwitch:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dischargeSwitch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->dischargeSwitch:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", protectStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->protectStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", temperatures=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->temperatures:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", voltageSeries=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/db/BMSRealTimeDataBean;->voltageSeries:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
