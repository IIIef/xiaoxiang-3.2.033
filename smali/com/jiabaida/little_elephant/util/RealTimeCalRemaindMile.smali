.class public Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;
.super Ljava/lang/Object;
.source "RealTimeCalRemaindMile.java"


# instance fields
.field private insertDataCount:I

.field public kmPowerUse:D

.field public mTotalMile:F

.field public mTotalUse:F

.field private minDataNum:I

.field private powerUseDataNum:I

.field private powerUseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public timePowerUse:D

.field private timePowerUseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 13
    iput v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->powerUseDataNum:I

    const/16 v0, 0xa

    .line 14
    iput v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->minDataNum:I

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->kmPowerUse:D

    .line 16
    iput-wide v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->timePowerUse:D

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->insertDataCount:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->powerUseList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->timePowerUseList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public calKmPowerUse()V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->powerUseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "mile"

    .line 56
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v2, v5

    const-string v5, "power"

    .line 57
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_0

    :cond_0
    cmpl-float v0, v2, v1

    if-nez v0, :cond_1

    return-void

    .line 62
    :cond_1
    iput v2, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->mTotalMile:F

    .line 63
    iput v3, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->mTotalUse:F

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v2, v0

    div-float/2addr v3, v2

    float-to-double v0, v3

    .line 64
    iput-wide v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->kmPowerUse:D

    return-void
.end method

.method public calTimePowerUse()V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->timePowerUseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "time"

    .line 106
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v2, v5

    const-string v5, "power"

    .line 107
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_0

    :cond_0
    cmpl-float v0, v2, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x45610000    # 3600.0f

    mul-float v3, v3, v0

    div-float/2addr v3, v2

    float-to-double v0, v3

    .line 113
    iput-wide v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->timePowerUse:D

    return-void
.end method

.method public getPowerDataNum()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->powerUseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRemaindKM(FF)F
    .locals 5

    cmpg-float v0, p1, p2

    if-lez v0, :cond_1

    .line 68
    iget-wide v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->kmPowerUse:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p2

    float-to-double p1, p1

    div-double/2addr p1, v0

    double-to-float p1, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public insertData(FF)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->powerUseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->powerUseDataNum:I

    if-le v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->powerUseList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    iget v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->insertDataCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->insertDataCount:I

    .line 35
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "mile"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->powerUseList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public insertDataAndCal(FF)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->insertData(FF)V

    .line 44
    iget p1, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->insertDataCount:I

    const/16 p2, 0x1e

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->powerUseList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->insertDataCount:I

    .line 46
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->calKmPowerUse()V

    :cond_1
    return-void
.end method

.method public insertTimeData(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->timePowerUseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->timePowerUseList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 93
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->timePowerUseList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->calTimePowerUse()V

    return-void
.end method

.method public isUsePowerData()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->powerUseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/jiabaida/little_elephant/util/RealTimeCalRemaindMile;->minDataNum:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
