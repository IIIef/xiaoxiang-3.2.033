.class public final Lio/netty/channel/unix/PreferredDirectByteBufAllocator;
.super Ljava/lang/Object;
.source "PreferredDirectByteBufAllocator.java"

# interfaces
.implements Lio/netty/buffer/ByteBufAllocator;


# instance fields
.field private allocator:Lio/netty/buffer/ByteBufAllocator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public buffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public buffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public calculateNewCapacity(II)I
    .locals 1

    .line 128
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1, p2}, Lio/netty/buffer/ByteBufAllocator;->calculateNewCapacity(II)I

    move-result p1

    return p1
.end method

.method public compositeBuffer()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->compositeDirectBuffer()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->compositeDirectBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public compositeDirectBuffer()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 113
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->compositeDirectBuffer()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeDirectBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->compositeDirectBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public compositeHeapBuffer()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 103
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->compositeHeapBuffer()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeHeapBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->compositeHeapBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public directBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 78
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public directBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 83
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public directBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public heapBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public heapBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public heapBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1, p2}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public ioBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public ioBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public ioBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 58
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public isDirectBufferPooled()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v0

    return v0
.end method

.method public updateAllocator(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lio/netty/channel/unix/PreferredDirectByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-void
.end method
