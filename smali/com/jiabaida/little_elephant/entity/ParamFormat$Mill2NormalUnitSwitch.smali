.class public Lcom/jiabaida/little_elephant/entity/ParamFormat$Mill2NormalUnitSwitch;
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
    name = "Mill2NormalUnitSwitch"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mill2Normal(II)F
    .locals 0

    int-to-float p1, p1

    return p1
.end method

.method public normal2Mill(F)I
    .locals 0

    float-to-int p1, p1

    return p1
.end method
