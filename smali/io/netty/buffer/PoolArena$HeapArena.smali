.class final Lio/netty/buffer/PoolArena$HeapArena;
.super Lio/netty/buffer/PoolArena;
.source "PoolArena.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolArena;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HeapArena"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/PoolArena<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V
    .locals 0

    .line 674
    invoke-direct/range {p0 .. p6}, Lio/netty/buffer/PoolArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V

    return-void
.end method

.method private static newByteArray(I)[B
    .locals 0

    .line 679
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected destroyChunk(Lio/netty/buffer/PoolChunk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "[B>;)V"
        }
    .end annotation

    return-void
.end method

.method isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic memoryCopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    .line 670
    check-cast p1, [B

    check-cast p3, [B

    invoke-virtual/range {p0 .. p5}, Lio/netty/buffer/PoolArena$HeapArena;->memoryCopy([BI[BII)V

    return-void
.end method

.method protected memoryCopy([BI[BII)V
    .locals 0

    if-nez p5, :cond_0

    return-void

    .line 714
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected newByteBuf(I)Lio/netty/buffer/PooledByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PooledByteBuf<",
            "[B>;"
        }
    .end annotation

    .line 704
    sget-boolean v0, Lio/netty/buffer/PoolArena$HeapArena;->HAS_UNSAFE:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->newUnsafeInstance(I)Lio/netty/buffer/PooledUnsafeHeapByteBuf;

    move-result-object p1

    goto :goto_0

    .line 705
    :cond_0
    invoke-static {p1}, Lio/netty/buffer/PooledHeapByteBuf;->newInstance(I)Lio/netty/buffer/PooledHeapByteBuf;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected newChunk(IIII)Lio/netty/buffer/PoolChunk;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/netty/buffer/PoolChunk<",
            "[B>;"
        }
    .end annotation

    .line 689
    new-instance v8, Lio/netty/buffer/PoolChunk;

    invoke-static {p4}, Lio/netty/buffer/PoolArena$HeapArena;->newByteArray(I)[B

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;IIIII)V

    return-object v8
.end method

.method protected newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolChunk<",
            "[B>;"
        }
    .end annotation

    .line 694
    new-instance v0, Lio/netty/buffer/PoolChunk;

    invoke-static {p1}, Lio/netty/buffer/PoolArena$HeapArena;->newByteArray(I)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;II)V

    return-object v0
.end method
