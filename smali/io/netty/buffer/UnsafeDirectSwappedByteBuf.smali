.class final Lio/netty/buffer/UnsafeDirectSwappedByteBuf;
.super Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;
.source "UnsafeDirectSwappedByteBuf.java"


# direct methods
.method constructor <init>(Lio/netty/buffer/AbstractByteBuf;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;)V

    return-void
.end method

.method private static addr(Lio/netty/buffer/AbstractByteBuf;I)J
    .locals 2

    .line 35
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->memoryAddress()J

    move-result-wide v0

    int-to-long p0, p1

    add-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method protected _getInt(Lio/netty/buffer/AbstractByteBuf;I)I
    .locals 0

    .line 45
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide p1

    invoke-static {p1, p2}, Lio/netty/util/internal/PlatformDependent;->getInt(J)I

    move-result p1

    return p1
.end method

.method protected _getLong(Lio/netty/buffer/AbstractByteBuf;I)J
    .locals 0

    .line 40
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide p1

    invoke-static {p1, p2}, Lio/netty/util/internal/PlatformDependent;->getLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected _getShort(Lio/netty/buffer/AbstractByteBuf;I)S
    .locals 0

    .line 50
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide p1

    invoke-static {p1, p2}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result p1

    return p1
.end method

.method protected _setInt(Lio/netty/buffer/AbstractByteBuf;II)V
    .locals 0

    .line 60
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide p1

    invoke-static {p1, p2, p3}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    return-void
.end method

.method protected _setLong(Lio/netty/buffer/AbstractByteBuf;IJ)V
    .locals 0

    .line 65
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide p1

    invoke-static {p1, p2, p3, p4}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    return-void
.end method

.method protected _setShort(Lio/netty/buffer/AbstractByteBuf;IS)V
    .locals 0

    .line 55
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide p1

    invoke-static {p1, p2, p3}, Lio/netty/util/internal/PlatformDependent;->putShort(JS)V

    return-void
.end method
