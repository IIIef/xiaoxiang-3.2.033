.class abstract Lio/netty/buffer/PooledByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "PooledByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/buffer/AbstractReferenceCountedByteBuf;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allocator:Lio/netty/buffer/ByteBufAllocator;

.field cache:Lio/netty/buffer/PoolThreadCache;

.field protected chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected handle:J

.field protected length:I

.field maxLength:I

.field protected memory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected offset:I

.field private final recyclerHandle:Lio/netty/util/Recycler$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler$Handle<",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field tmpNioBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lio/netty/util/Recycler$Handle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Handle<",
            "+",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 42
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->recyclerHandle:Lio/netty/util/Recycler$Handle;

    return-void
.end method

.method private init0(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JIII",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    .line 60
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 61
    iput-object p2, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 62
    iget-object p1, p1, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object p1, p1, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->allocator:Lio/netty/buffer/ByteBufAllocator;

    .line 63
    iput-object p8, p0, Lio/netty/buffer/PooledByteBuf;->cache:Lio/netty/buffer/PoolThreadCache;

    .line 64
    iput-wide p3, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 65
    iput p5, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    .line 66
    iput p6, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 67
    iput p7, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    return-void
.end method

.method private recycle()V
    .locals 1

    .line 179
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->recyclerHandle:Lio/netty/util/Recycler$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/Recycler$Handle;->recycle(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 126
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public final capacity()I
    .locals 1

    .line 82
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    return v0
.end method

.method public final capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 87
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBuf;->checkNewCapacity(I)V

    .line 90
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-boolean v0, v0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    if-eqz v0, :cond_0

    .line 91
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-ne p1, v0, :cond_3

    return-object p0

    .line 95
    :cond_0
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-le p1, v0, :cond_1

    .line 96
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    if-gt p1, v0, :cond_3

    .line 97
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    return-object p0

    :cond_1
    if-ge p1, v0, :cond_4

    .line 101
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    ushr-int/lit8 v1, v0, 0x1

    if-le p1, v1, :cond_3

    const/16 v1, 0x200

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x10

    if-le p1, v0, :cond_3

    .line 104
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 105
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->readerIndex()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->writerIndex()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/PooledByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    return-object p0

    .line 109
    :cond_2
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 110
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->readerIndex()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->writerIndex()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/PooledByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    return-object p0

    .line 120
    :cond_3
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lio/netty/buffer/PoolArena;->reallocate(Lio/netty/buffer/PooledByteBuf;IZ)V

    :cond_4
    return-object p0
.end method

.method protected final deallocate()V
    .locals 8

    .line 167
    iget-wide v3, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, -0x1

    .line 169
    iput-wide v0, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    const/4 v7, 0x0

    .line 170
    iput-object v7, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v1, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v2, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    iget v5, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    iget-object v6, p0, Lio/netty/buffer/PooledByteBuf;->cache:Lio/netty/buffer/PoolThreadCache;

    invoke-virtual/range {v0 .. v6}, Lio/netty/buffer/PoolArena;->free(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V

    .line 172
    iput-object v7, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 173
    iput-object v7, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    .line 174
    invoke-direct {p0}, Lio/netty/buffer/PooledByteBuf;->recycle()V

    :cond_0
    return-void
.end method

.method protected final idx(I)I
    .locals 1

    .line 183
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method init(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JIII",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct/range {p0 .. p8}, Lio/netty/buffer/PooledByteBuf;->init0(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    return-void
.end method

.method initUnpooled(Lio/netty/buffer/PoolChunk;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;I)V"
        }
    .end annotation

    .line 51
    iget v5, p1, Lio/netty/buffer/PoolChunk;->offset:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lio/netty/buffer/PooledByteBuf;->init0(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    return-void
.end method

.method protected final internalNioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 156
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/netty/buffer/PooledByteBuf;->newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    :cond_0
    return-object v0
.end method

.method protected abstract newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .line 131
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public final retainedDuplicate()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->writerIndex()I

    move-result v1

    invoke-static {p0, p0, v0, v1}, Lio/netty/buffer/PooledDuplicatedByteBuf;->newInstance(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledDuplicatedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public final retainedSlice()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 146
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->readerIndex()I

    move-result v0

    .line 147
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->writerIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/PooledByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public final retainedSlice(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 152
    invoke-static {p0, p0, p1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->newInstance(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledSlicedByteBuf;

    move-result-object p1

    return-object p1
.end method

.method final reuse(I)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBuf;->maxCapacity(I)V

    .line 75
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->resetRefCnt()V

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/PooledByteBuf;->setIndex0(II)V

    .line 77
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->discardMarks()V

    return-void
.end method

.method public final unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
