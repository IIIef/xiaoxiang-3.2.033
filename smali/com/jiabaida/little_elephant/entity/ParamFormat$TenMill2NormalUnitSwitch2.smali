.class public Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch2;
.super Ljava/lang/Object;
.source "ParamFormat.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/entity/ParamFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TenMill2NormalUnitSwitch2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mill2Normal(II)F
    .locals 0

    .line 249
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    return p1
.end method

.method public normal2Mill(F)I
    .locals 1

    neg-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method
