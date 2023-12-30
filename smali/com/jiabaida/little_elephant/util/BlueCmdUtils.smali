.class public Lcom/jiabaida/little_elephant/util/BlueCmdUtils;
.super Ljava/lang/Object;
.source "BlueCmdUtils.java"


# static fields
.field private static blueCmdUtils:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;


# instance fields
.field private factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

.field private mBalanceStartVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCellUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mChargeEndVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mCmdProcess:I

.field private mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardwareOverVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardwareUnderVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mPackUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private final mProcess:I

.field private mVoltageCap100CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap10CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap20CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap30CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap40CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap50CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap60CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap70CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap80CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mVoltageCap90CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

.field private paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field private tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

.field private twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->blueCmdUtils:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    .line 68
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    .line 69
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    .line 70
    new-instance v0, Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    const/16 v0, 0x1a

    .line 94
    iput v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mProcess:I

    .line 422
    new-instance v0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$4;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$4;-><init>(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setProtectParams(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setCapacityParams(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCmdProcess:I

    return p0
.end method

.method static synthetic access$208(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;)I
    .locals 2

    .line 19
    iget v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCmdProcess:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCmdProcess:I

    return v0
.end method

.method public static getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;
    .locals 1

    .line 24
    sget-object v0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->blueCmdUtils:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->blueCmdUtils:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    .line 27
    :cond_0
    sget-object v0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->blueCmdUtils:Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    return-object v0
.end method

.method private setCapacityParams(I)V
    .locals 13

    .line 300
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap10CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x46

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v3, "10%"

    const-string v6, "mV"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap10CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 303
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x35

    iget-object v10, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v9, "20%"

    const-string v12, "mV"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap20CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 306
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x45

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v3, "30%"

    const-string v6, "mV"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap30CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 309
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x34

    iget-object v10, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v9, "40%"

    const-string v12, "mV"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap40CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 312
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x44

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v3, "50%"

    const-string v6, "mV"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap50CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 315
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x33

    iget-object v10, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v9, "60%"

    const-string v12, "mV"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap60CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 318
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x43

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v3, "70%"

    const-string v6, "mV"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap70CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 321
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x32

    iget-object v10, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v9, "80%"

    const-string v12, "mV"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap80CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 324
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x42

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v3, "90%"

    const-string v6, "mV"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap90CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 327
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x47

    iget-object v10, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v9, "100%"

    const-string v12, "mV"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap100CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 330
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x12

    const v1, 0x7f0d0040

    .line 331
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v6, "mV"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 332
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x13

    const v1, 0x7f0d0043

    .line 333
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v12, "mV"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mChargeEndVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "3220"

    const-string v0, "3266"

    const-string v1, "3280"

    const-string v2, "3291"

    const-string v3, "3301"

    const-string v4, "3322"

    const-string v5, "3325"

    const-string v6, "3329"

    const-string v7, "3330"

    const-string v8, "3350"

    const-string v9, "3550"

    const-string v10, "2800"

    goto :goto_0

    :cond_1
    const-string p1, "3300"

    const-string v0, "3450"

    const-string v1, "3580"

    const-string v2, "3680"

    const-string v3, "3750"

    const-string v4, "3820"

    const-string v5, "3890"

    const-string v6, "3960"

    const-string v7, "4030"

    const-string v8, "4100"

    const-string v9, "4150"

    const-string v10, "3000"

    .line 361
    :goto_0
    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap10CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v11}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 362
    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap10CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v11, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 363
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap10CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v11}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 364
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap10CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v11}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 366
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap20CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 367
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap20CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 368
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap20CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 369
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap20CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 371
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap30CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 372
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap30CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 373
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap30CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 374
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap30CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 376
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap40CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 377
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap40CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 378
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap40CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 379
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap40CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 381
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap50CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 382
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap50CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v3}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 383
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap50CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 384
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap50CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 386
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap60CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 387
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap60CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v4}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 388
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap60CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 389
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap60CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 391
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap70CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 392
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap70CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v5}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 393
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap70CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 394
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap70CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 396
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap80CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 397
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap80CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 398
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap80CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 399
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap80CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 401
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap90CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 402
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap90CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 403
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap90CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 404
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap90CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 406
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap100CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 407
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap100CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v8}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 408
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap100CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 409
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mVoltageCap100CMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 411
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 412
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v9}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 413
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 414
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mFullChargeVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 416
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mChargeEndVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 417
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mChargeEndVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v10}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 418
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mChargeEndVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 419
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mChargeEndVolCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method private setProtectParams(II)V
    .locals 12

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit16 v1, p2, 0x1a9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit16 v3, p2, 0x19f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit16 v4, p2, 0x118

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit16 v6, p2, 0x12c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3900"

    const-string v7, "2500"

    const-string v8, "2800"

    const/4 v9, 0x1

    if-ne p1, v9, :cond_0

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit16 v0, p2, 0x177

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit16 v2, p2, 0x168

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit16 p2, p2, 0xfa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p1, "3750"

    const-string p2, "3600"

    const-string v1, "2000"

    const-string v4, "3300"

    goto :goto_0

    :cond_0
    const-string p1, "4250"

    const-string p2, "4150"

    const-string v1, "3000"

    const-string v4, "4300"

    move-object v10, v8

    move-object v8, v1

    move-object v1, v7

    move-object v7, v10

    move-object v11, v6

    move-object v6, v4

    move-object v4, v11

    .line 220
    :goto_0
    iget-object v9, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v9}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 221
    iget-object v9, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v9, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 222
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v9, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v9}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 223
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v9, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v9}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 225
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 226
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 227
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 228
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 230
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 231
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const-string p2, "2"

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 232
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v9, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v9}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 233
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v9, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v9}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 235
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 236
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 237
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v7, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 238
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v7, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v7}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 240
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 241
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v8}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 242
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v7, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 243
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v7, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v7}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 245
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 246
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 247
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v7, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 248
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v7, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v7}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 250
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 251
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 252
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 253
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 255
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 256
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 257
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 258
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 260
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 261
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 262
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 263
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 265
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 266
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v3}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 267
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 268
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 270
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 271
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v5}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 272
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 273
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 275
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 276
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 277
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 278
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 281
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mHardwareOverVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 282
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mHardwareOverVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 283
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mHardwareOverVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 284
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mHardwareOverVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 286
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mHardwareUnderVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 287
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mHardwareUnderVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 288
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mHardwareUnderVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 289
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mHardwareUnderVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    .line 291
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mBalanceStartVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setWriteMode()V

    .line 292
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mBalanceStartVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v4}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent(Ljava/lang/Object;)V

    .line 293
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mBalanceStartVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->paramSetResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 294
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mBalanceStartVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method


# virtual methods
.method public changeBatteryMode(II)V
    .locals 2

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCmdProcess:I

    .line 167
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    new-instance v1, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$3;-><init>(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;II)V

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 179
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->factoryModeCMDEntity:Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method

.method public initBatteryMode()V
    .locals 14

    .line 97
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x24

    const v1, 0x7f0d00d1

    .line 99
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v6, "mV"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 102
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x25

    const v1, 0x7f0d00d2

    .line 103
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v12, "mV"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 106
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x3d

    const v1, 0x7f0d00d0

    .line 107
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "S"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 110
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x26

    const v1, 0x7f0d00d4

    .line 111
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v12, "mV"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 114
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x27

    const v1, 0x7f0d00d5

    .line 115
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v6, "mV"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 118
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x3d

    const v1, 0x7f0d00d3

    .line 119
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-direct {v10, v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;-><init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    const/4 v11, 0x0

    const-string v12, "S"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 123
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x20

    const v1, 0x7f0d0124

    .line 124
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    const-string v6, "mV"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOverVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 127
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x21

    const v1, 0x7f0d0125

    .line 128
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    const-string v12, "mV"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 131
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x3c

    const v1, 0x7f0d0123

    .line 132
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "S"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 135
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x22

    const v1, 0x7f0d0127

    .line 136
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    const-string v12, "mV"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUnderVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 139
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x23

    const v1, 0x7f0d0128

    .line 140
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->tenMill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;

    const-string v6, "mV"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUVReleaseCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 143
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v8, 0x3c

    const v1, 0x7f0d0126

    .line 144
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-direct {v10, v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoCmdValueFormat;-><init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    const/4 v11, 0x0

    const-string v12, "S"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 146
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mCellUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 147
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackOVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mPackUVReleaseDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V

    .line 149
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v3, 0x36

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v4, "\u786c\u4ef6\u8fc7\u538b\u4fdd\u62a4"

    const-string v7, "mV"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mHardwareOverVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 153
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v9, 0x37

    iget-object v11, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v12, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v10, "\u786c\u4ef6\u6b20\u538b\u4fdd\u62a4"

    const-string v13, "mV"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mHardwareUnderVoltage:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 157
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/16 v2, 0x2a

    const v1, 0x7f0d00fb

    .line 158
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/BaseUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->twoByte2Int:Lcom/jiabaida/little_elephant/entity/ParamFormat$TwoByte2Int;

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mill2NormalUnitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;

    const-string v6, "mV"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;-><init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->mBalanceStartVoltageCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    :cond_0
    return-void
.end method

.method public setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V
    .locals 5

    .line 31
    new-instance v0, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;-><init>()V

    .line 32
    new-instance v1, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;

    invoke-direct {v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;-><init>()V

    .line 33
    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setWriteMode()V

    const/16 v2, 0x3c

    .line 34
    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v2

    const/16 v3, 0x7a

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setParams(II[B)V

    .line 35
    new-instance v2, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$1;-><init>(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;)V

    invoke-virtual {v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 50
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;-><init>()V

    .line 51
    new-instance v0, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$2;

    invoke-direct {v0, p0, v1}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils$2;-><init>(Lcom/jiabaida/little_elephant/util/BlueCmdUtils;Lcom/jiabaida/little_elephant/entity/BMSParamsCMDEntity;)V

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 63
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    return-void
.end method
