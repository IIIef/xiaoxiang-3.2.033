.class Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;
.super Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;
.source "UnpooledUnsafeNoCleanerDirectByteBuf.java"


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    return-void
.end method


# virtual methods
.method protected allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 30
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->checkNewCapacity(I)V

    .line 46
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->capacity()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 51
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1, p1}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->reallocateDirect(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-ge p1, v0, :cond_2

    .line 54
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->readerIndex()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 55
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->writerIndex()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 56
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, v1, p1}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->setByteBuffer(Ljava/nio/ByteBuffer;Z)V

    return-object p0
.end method

.method protected freeDirect(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 39
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->freeDirectNoCleaner(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method reallocateDirect(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 34
    invoke-static {p1, p2}, Lio/netty/util/internal/PlatformDependent;->reallocateDirectNoCleaner(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
