.class public Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSBatchExecCMDEntity2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSBatchExecCMDEntity2"

.field public static final UNIT_A:Ljava/lang/String; = "A"

.field public static final UNIT_AH:Ljava/lang/String; = "mAH"

.field public static final UNIT_MR:Ljava/lang/String; = "mR"

.field public static final UNIT_MS:Ljava/lang/String; = "mS"

.field public static final UNIT_P:Ljava/lang/String; = "%"

.field public static final UNIT_R:Ljava/lang/String; = "R"

.field public static final UNIT_TEMP:Ljava/lang/String; = "\u2103"

.field public static final UNIT_TIME:Ljava/lang/String; = "S"

.field public static final UNIT_US:Ljava/lang/String; = "uS"

.field public static final UNIT_V:Ljava/lang/String; = "mV"


# instance fields
.field public CMDName:Ljava/lang/String;

.field public mView:Landroid/view/View;

.field private relativeEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

.field public showVal:Ljava/lang/String;

.field public tagVal:Ljava/lang/String;

.field private unitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;

.field public val:F

.field public valUnit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/16 v1, 0xa5

    .line 60
    invoke-direct {p0, p1, v0, v1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->tagVal:Ljava/lang/String;

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->relativeEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    .line 61
    iput-object p3, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->unitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;

    .line 62
    iput-object p4, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->valUnit:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->CMDName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->getContent([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->returnContent:[B

    const/4 p1, 0x1

    return p1
.end method

.method public getCmdAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.jiabaida.xiaoxiang.ble.batchCMD"

    return-object v0
.end method

.method public getCmdContent()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->cmdContent:[B

    return-object v0
.end method

.method public getRelativeEntity()Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->relativeEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;

    return-object v0
.end method

.method public setContent(I)V
    .locals 0

    .line 89
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->cmdContent:[B

    .line 90
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->cmdContent:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->setContent([B)V

    return-void
.end method

.method public setUnitSwitch(Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity2;->unitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;

    return-void
.end method
