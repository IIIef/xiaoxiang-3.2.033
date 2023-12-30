.class public Lcom/jiabaida/little_elephant/entity/ParamFormat$TenMill2NormalUnitSwitch4;
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
    name = "TenMill2NormalUnitSwitch4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mill2Normal(II)F
    .locals 0

    int-to-float p1, p1

    const/high16 p2, 0x41200000    # 10.0f

    mul-float p1, p1, p2

    return p1
.end method

.method public normal2Mill(F)I
    .locals 0

    float-to-int p1, p1

    return p1
.end method
