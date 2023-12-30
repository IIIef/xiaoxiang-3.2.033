.class final Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;
.super Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;
.source "ByteBufChecksum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/compression/ByteBufChecksum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectiveByteBufChecksum"
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/util/zip/Checksum;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;-><init>(Ljava/util/zip/Checksum;)V

    .line 94
    iput-object p2, p0, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public update(Lio/netty/buffer/ByteBuf;II)V
    .locals 2

    .line 99
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1, p3}, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;->update([BII)V

    goto :goto_0

    .line 103
    :cond_0
    :try_start_0
    iget-object p2, p0, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;->method:Ljava/lang/reflect/Method;

    iget-object p3, p0, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;->checksum:Ljava/util/zip/Checksum;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Lio/netty/handler/codec/compression/CompressionUtil;->safeNioBuffer(Lio/netty/buffer/ByteBuf;)Ljava/nio/ByteBuffer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    .line 105
    :catchall_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method
