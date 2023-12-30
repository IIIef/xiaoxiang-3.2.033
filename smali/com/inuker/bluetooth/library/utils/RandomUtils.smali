.class public Lcom/inuker/bluetooth/library/utils/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field private static mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static randFloat()D
    .locals 3

    .line 13
    sget-object v0, Lcom/inuker/bluetooth/library/utils/RandomUtils;->mRandom:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/inuker/bluetooth/library/utils/RandomUtils;->mRandom:Ljava/util/Random;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 17
    :cond_0
    sget-object v0, Lcom/inuker/bluetooth/library/utils/RandomUtils;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method
