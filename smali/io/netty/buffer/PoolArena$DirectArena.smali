.class final Lio/netty/buffer/PoolArena$DirectArena;
.super Lio/netty/buffer/PoolArena;
.source "PoolArena.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolArena;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DirectArena"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/PoolArena<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V
    .locals 0

    .line 722
    invoke-direct/range {p0 .. p6}, Lio/netty/buffer/PoolArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V

    return-void
.end method

.method private static allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 771
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->useDirectBufferNoCleaner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected destroyChunk(Lio/netty/buffer/PoolChunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 777
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->useDirectBufferNoCleaner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object p1, p1, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->freeDirectNoCleaner(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 780
    :cond_0
    iget-object p1, p1, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method isDirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic memoryCopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    .line 718
    check-cast p1, Ljava/nio/ByteBuffer;

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-virtual/range {p0 .. p5}, Lio/netty/buffer/PoolArena$DirectArena;->memoryCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    return-void
.end method

.method protected memoryCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .locals 8

    if-nez p5, :cond_0

    return-void

    .line 799
    :cond_0
    sget-boolean v0, Lio/netty/buffer/PoolArena$DirectArena;->HAS_UNSAFE:Z

    if-eqz v0, :cond_1

    .line 801
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    int-to-long p1, p2

    add-long v2, v0, p1

    .line 802
    invoke-static {p3}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    int-to-long p3, p4

    add-long v4, p1, p3

    int-to-long v6, p5

    .line 800
    invoke-static/range {v2 .. v7}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    goto :goto_0

    .line 805
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 806
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 807
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p2, p5

    invoke-virtual {v0, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 808
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 809
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method protected newByteBuf(I)Lio/netty/buffer/PooledByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PooledByteBuf<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 786
    sget-boolean v0, Lio/netty/buffer/PoolArena$DirectArena;->HAS_UNSAFE:Z

    if-eqz v0, :cond_0

    .line 787
    invoke-static {p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->newInstance(I)Lio/netty/buffer/PooledUnsafeDirectByteBuf;

    move-result-object p1

    return-object p1

    .line 789
    :cond_0
    invoke-static {p1}, Lio/netty/buffer/PooledDirectByteBuf;->newInstance(I)Lio/netty/buffer/PooledDirectByteBuf;

    move-result-object p1

    return-object p1
.end method

.method protected newChunk(IIII)Lio/netty/buffer/PoolChunk;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/netty/buffer/PoolChunk<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 746
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Lio/netty/buffer/PoolChunk;

    .line 748
    invoke-static {p4}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;IIIII)V

    return-object v0

    .line 751
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    add-int/2addr v0, p4

    invoke-static {v0}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 753
    new-instance v0, Lio/netty/buffer/PoolChunk;

    .line 755
    invoke-virtual {p0, v3}, Lio/netty/buffer/PoolArena$DirectArena;->offsetCacheLine(Ljava/nio/ByteBuffer;)I

    move-result v8

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;IIIII)V

    return-object v0
.end method

.method protected newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolChunk<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 760
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Lio/netty/buffer/PoolChunk;

    .line 762
    invoke-static {p1}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;II)V

    return-object v0

    .line 764
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    add-int/2addr v0, p1

    invoke-static {v0}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 766
    new-instance v1, Lio/netty/buffer/PoolChunk;

    .line 767
    invoke-virtual {p0, v0}, Lio/netty/buffer/PoolArena$DirectArena;->offsetCacheLine(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-direct {v1, p0, v0, p1, v2}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;II)V

    return-object v1
.end method

.method offsetCacheLine(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 735
    sget-boolean v0, Lio/netty/buffer/PoolArena$DirectArena;->HAS_UNSAFE:Z

    if-eqz v0, :cond_0

    .line 736
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget p1, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignmentMask:I

    int-to-long v2, p1

    and-long/2addr v0, v2

    long-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 740
    :goto_0
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    sub-int/2addr v0, p1

    return v0
.end method
