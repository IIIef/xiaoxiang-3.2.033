.class public Lcom/jiabaida/little_elephant/entity/ParamFormat;
.super Ljava/lang/Object;
.source "ParamFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$TenUnitSwitch;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$SensorResistorUnitSwitch;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch2;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch3;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatDate;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$Byte2Sting;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2SignedInt;,
        Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMill2NormalUnitSwitch()Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;
    .locals 1

    .line 20
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;-><init>()V

    return-object v0
.end method

.method public static getTemp2NormalUnitSwitch()Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;
    .locals 1

    .line 28
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Temp2NormalUnitSwitch;-><init>()V

    return-object v0
.end method

.method public static getTenMill2NormalUnitSwitch()Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;
    .locals 1

    .line 24
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch;-><init>()V

    return-object v0
.end method

.method public static getTwoByte2Int()Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;
    .locals 1

    .line 15
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    return-object v0
.end method
