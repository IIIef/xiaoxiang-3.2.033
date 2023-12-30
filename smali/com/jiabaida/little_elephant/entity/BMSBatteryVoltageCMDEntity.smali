.class public Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSBatteryVoltageCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSBatteryVoltageCMDEntity"

.field private static final cmd:C = '\u0004'

.field private static final cmdContent:[B

.field private static final rwMode:I = 0xa5


# instance fields
.field private mVoltageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;",
            ">;"
        }
    .end annotation
.end field

.field public maxVoltage:F

.field public minVoltage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 18
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->cmdContent:[B

    const/4 v1, 0x4

    const/16 v2, 0xa5

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 14

    const-string v0, "   "

    .line 29
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->getContent([B)[B

    move-result-object p1

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->mVoltageList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 36
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v3, p1

    const/4 v4, 0x2

    div-int/2addr v3, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v3, :cond_3

    .line 38
    iget-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->mVoltageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;

    .line 39
    iput-boolean v2, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->isBalance:Z

    .line 40
    iget v12, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->serial:I

    sub-int/2addr v12, v7

    mul-int/lit8 v12, v12, 0x2

    .line 41
    aget-byte v13, p1, v12

    shl-int/lit8 v13, v13, 0x8

    add-int/lit8 v12, v12, 0x1

    .line 42
    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v13, v12

    int-to-float v12, v13

    div-float/2addr v12, v5

    .line 43
    iput v12, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    .line 44
    iput-char v2, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltageLevel:C

    .line 45
    iget v12, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    cmpl-float v12, v8, v12

    if-gtz v12, :cond_1

    cmpl-float v12, v8, v6

    if-nez v12, :cond_2

    .line 46
    :cond_1
    iget v8, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    .line 47
    iget v9, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->serial:I

    sub-int/2addr v9, v7

    .line 50
    :cond_2
    iget v12, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    cmpg-float v12, v3, v12

    if-gez v12, :cond_0

    .line 51
    iget v3, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    .line 52
    iget v10, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->serial:I

    sub-int/2addr v10, v7

    goto :goto_0

    .line 58
    :cond_3
    iget-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->mVoltageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 59
    :goto_1
    array-length v11, p1

    if-ge v1, v11, :cond_7

    .line 60
    new-instance v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;

    invoke-direct {v11}, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;-><init>()V

    .line 61
    iput-boolean v2, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->isBalance:Z

    .line 62
    div-int/lit8 v12, v1, 0x2

    add-int/2addr v12, v7

    iput v12, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->serial:I

    .line 63
    iput-char v2, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltageLevel:C

    .line 65
    aget-byte v12, p1, v1

    shl-int/lit8 v12, v12, 0x8

    add-int/lit8 v13, v1, 0x1

    .line 66
    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v5

    .line 67
    iput v12, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    .line 68
    iget-object v12, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->mVoltageList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v12, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->mVoltageList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v7

    .line 70
    iget v13, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    cmpl-float v13, v8, v13

    if-gtz v13, :cond_4

    cmpl-float v13, v8, v6

    if-nez v13, :cond_5

    .line 71
    :cond_4
    iget v8, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    move v9, v12

    .line 75
    :cond_5
    iget v13, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    cmpg-float v13, v3, v13

    if-gez v13, :cond_6

    .line 76
    iget v3, v11, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltage:F

    move v10, v12

    :cond_6
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 82
    :cond_7
    iput v3, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->maxVoltage:F

    .line 83
    iput v8, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->minVoltage:F

    .line 86
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->mVoltageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    sub-float p1, v3, v8

    const v1, 0x3ca3d70a    # 0.02f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_8

    .line 87
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->mVoltageList:Ljava/util/ArrayList;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;

    iput-char v7, p1, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltageLevel:C

    .line 88
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->mVoltageList:Ljava/util/ArrayList;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;

    iput-char v4, p1, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltageLevel:C

    const-string p1, "voltage_info"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "   max:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return v7

    :catch_0
    return v2
.end method

.method public getVoltageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->mVoltageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVoltageList([B)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatteryVoltageCMDEntity;->mVoltageList:Ljava/util/ArrayList;

    return-object p1
.end method
