.class public Lio/netty/handler/codec/http/multipart/MemoryAttribute;
.super Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;
.source "MemoryAttribute.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/Attribute;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 37
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p4, p2, p3}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p3, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 54
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    return-void
.end method


# virtual methods
.method public addContent(Lio/netty/buffer/ByteBuf;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 84
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->checkSize(J)V

    .line 85
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->definedSize:J

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->definedSize:J

    iget-wide v5, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->size:J

    add-long/2addr v5, v3

    cmp-long v2, v0, v5

    if-gez v2, :cond_0

    .line 86
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->size:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->definedSize:J

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    return-void
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/Attribute;)I
    .locals 1

    .line 115
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 3

    .line 107
    instance-of v0, p1, Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->compareTo(Lio/netty/handler/codec/http/multipart/Attribute;)I

    move-result p1

    return p1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 98
    instance-of v0, p1, Lio/netty/handler/codec/http/multipart/Attribute;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 101
    :cond_0
    check-cast p1, Lio/netty/handler/codec/http/multipart/Attribute;

    .line 102
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    .line 59
    sget-object v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->Attribute:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 64
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 93
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 2

    .line 157
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setCharset(Ljava/nio/charset/Charset;)V

    if-eqz p1, :cond_0

    .line 161
    :try_start_0
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setContent(Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0

    .line 171
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->retain()Lio/netty/handler/codec/http/multipart/HttpData;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->retain(I)Lio/netty/handler/codec/http/multipart/HttpData;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 2

    .line 137
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 142
    :try_start_0
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 147
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 149
    throw v1

    :cond_0
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "value"

    .line 70
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 73
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->checkSize(J)V

    .line 74
    invoke-static {p1}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 75
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->definedSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 76
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->definedSize:J

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setContent(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0

    .line 183
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0

    .line 189
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method
