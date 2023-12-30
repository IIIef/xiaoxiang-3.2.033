.class public Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;
.super Ljava/lang/Object;
.source "VoltageDataStruct.java"


# static fields
.field public static final VOL_HIGHEST:C = '\u0002'

.field public static final VOL_LOWEST:C = '\u0001'

.field public static final VOL_NORMAL:C


# instance fields
.field public isBalance:Z

.field public serial:I

.field public voltage:F

.field public voltageLevel:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-char v0, p0, Lcom/jiabaida/little_elephant/entity/VoltageDataStruct;->voltageLevel:C

    return-void
.end method
