.class final Lio/netty/handler/codec/ByteToMessageDecoder$1;
.super Ljava/lang/Object;
.source "ByteToMessageDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/ByteToMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cumulate(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 82
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->maxCapacity()I

    move-result v1

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 83
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-static {p1, p2, v0}, Lio/netty/handler/codec/ByteToMessageDecoder;->expandCumulation(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    .line 95
    :cond_1
    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 101
    throw p1
.end method
