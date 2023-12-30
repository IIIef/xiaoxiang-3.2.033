.class public final Lio/netty/channel/unix/IovArray;
.super Ljava/lang/Object;
.source "IovArray.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ADDRESS_SIZE:I

.field private static final CAPACITY:I

.field private static final IOV_SIZE:I


# instance fields
.field private count:I

.field private maxBytes:J

.field private final memory:Ljava/nio/ByteBuffer;

.field private final memoryAddress:J

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    invoke-static {}, Lio/netty/channel/unix/Buffer;->addressSize()I

    move-result v0

    sput v0, Lio/netty/channel/unix/IovArray;->ADDRESS_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    .line 56
    sput v0, Lio/netty/channel/unix/IovArray;->IOV_SIZE:I

    .line 62
    sget v1, Lio/netty/channel/unix/Limits;->IOV_MAX:I

    mul-int v1, v1, v0

    sput v1, Lio/netty/channel/unix/IovArray;->CAPACITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-wide v0, Lio/netty/channel/unix/Limits;->SSIZE_MAX:J

    iput-wide v0, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    .line 71
    sget v0, Lio/netty/channel/unix/IovArray;->CAPACITY:I

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->allocateDirectWithNativeOrder(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/unix/IovArray;->memory:Ljava/nio/ByteBuffer;

    .line 72
    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    return-void
.end method

.method private add(JII)Z
    .locals 9

    .line 120
    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    int-to-long v2, p4

    sub-long/2addr v0, v2

    iget-wide v4, p0, Lio/netty/channel/unix/IovArray;->size:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    iget v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    if-lez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 129
    :cond_0
    iget v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    invoke-static {v0}, Lio/netty/channel/unix/IovArray;->idx(I)I

    move-result v0

    .line 130
    sget v1, Lio/netty/channel/unix/IovArray;->ADDRESS_SIZE:I

    add-int v4, v0, v1

    .line 132
    iget-wide v5, p0, Lio/netty/channel/unix/IovArray;->size:J

    add-long/2addr v5, v2

    iput-wide v5, p0, Lio/netty/channel/unix/IovArray;->size:J

    .line 133
    iget v5, p0, Lio/netty/channel/unix/IovArray;->count:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lio/netty/channel/unix/IovArray;->count:I

    const/16 v5, 0x8

    if-ne v1, v5, :cond_2

    .line 137
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result p4

    if-eqz p4, :cond_1

    int-to-long v0, v0

    .line 138
    iget-wide v7, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    add-long/2addr v0, v7

    int-to-long p3, p3

    add-long/2addr p1, p3

    invoke-static {v0, v1, p1, p2}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    int-to-long p1, v4

    .line 139
    iget-wide p3, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    add-long/2addr p1, p3

    invoke-static {p1, p2, v2, v3}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object p4, p0, Lio/netty/channel/unix/IovArray;->memory:Ljava/nio/ByteBuffer;

    int-to-long v7, p3

    add-long/2addr p1, v7

    invoke-virtual {p4, v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 142
    iget-object p1, p0, Lio/netty/channel/unix/IovArray;->memory:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v1

    if-eqz v1, :cond_3

    int-to-long v0, v0

    .line 147
    iget-wide v2, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    add-long/2addr v0, v2

    long-to-int p2, p1

    add-int/2addr p2, p3

    invoke-static {v0, v1, p2}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    int-to-long p1, v4

    .line 148
    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    add-long/2addr p1, v0

    invoke-static {p1, p2, p4}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v1, p0, Lio/netty/channel/unix/IovArray;->memory:Ljava/nio/ByteBuffer;

    long-to-int p2, p1

    add-int/2addr p2, p3

    invoke-virtual {v1, v0, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 151
    iget-object p1, p0, Lio/netty/channel/unix/IovArray;->memory:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, p4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_0
    return v6
.end method

.method private static idx(I)I
    .locals 1

    .line 213
    sget v0, Lio/netty/channel/unix/IovArray;->IOV_SIZE:I

    mul-int v0, v0, p0

    return v0
.end method


# virtual methods
.method public add(Lio/netty/buffer/ByteBuf;)Z
    .locals 8

    .line 88
    iget v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    sget v1, Lio/netty/channel/unix/Limits;->IOV_MAX:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 91
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 92
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 96
    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p1

    invoke-direct {p0, v1, v2, p1, v0}, Lio/netty/channel/unix/IovArray;->add(JII)Z

    move-result p1

    return p1

    .line 99
    :cond_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 100
    invoke-static {p1}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-direct {p0, v1, v2, p1, v0}, Lio/netty/channel/unix/IovArray;->add(JII)Z

    move-result p1

    return p1

    .line 103
    :cond_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 104
    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    aget-object v4, p1, v3

    .line 105
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-eqz v5, :cond_5

    .line 107
    invoke-static {v4}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-direct {p0, v6, v7, v4, v5}, Lio/netty/channel/unix/IovArray;->add(JII)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lio/netty/channel/unix/IovArray;->count:I

    sget v5, Lio/netty/channel/unix/Limits;->IOV_MAX:I

    if-ne v4, v5, :cond_5

    :cond_4
    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    const-wide/16 v0, 0x0

    .line 77
    iput-wide v0, p0, Lio/netty/channel/unix/IovArray;->size:J

    return-void
.end method

.method public count()I
    .locals 1

    .line 161
    iget v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    return v0
.end method

.method public maxBytes()J
    .locals 2

    .line 190
    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    return-wide v0
.end method

.method public maxBytes(J)V
    .locals 3

    .line 182
    sget-wide v0, Lio/netty/channel/unix/Limits;->SSIZE_MAX:J

    const-string v2, "maxBytes"

    invoke-static {p1, p2, v2}, Lio/netty/util/internal/ObjectUtil;->checkPositive(JLjava/lang/String;)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    return-void
.end method

.method public memoryAddress(I)J
    .locals 4

    .line 197
    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    invoke-static {p1}, Lio/netty/channel/unix/IovArray;->idx(I)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public processMessage(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public release()V
    .locals 1

    .line 204
    iget-object v0, p0, Lio/netty/channel/unix/IovArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->free(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public size()J
    .locals 2

    .line 168
    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->size:J

    return-wide v0
.end method
