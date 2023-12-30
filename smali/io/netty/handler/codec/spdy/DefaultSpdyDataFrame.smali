.class public Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;
.super Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;
.source "DefaultSpdyDataFrame.java"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdyDataFrame;


# instance fields
.field private final data:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(ILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public constructor <init>(ILio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;-><init>(I)V

    const-string p1, "data"

    .line 48
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    invoke-static {p2}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->validate(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private static validate(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const v1, 0xffffff

    if-gt v0, v1, :cond_0

    return-object p0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data payload cannot exceed 16777215 bytes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public content()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 75
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    iget-object v1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->copy()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->duplicate()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public refCnt()I
    .locals 1

    .line 105
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->release(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 2

    .line 98
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->streamId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(ILio/netty/buffer/ByteBuf;)V

    .line 99
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->isLast()Z

    move-result p1

    invoke-interface {v0, p1}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->retain()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->retain(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->retain()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->retain(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->retainedDuplicate()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public setLast(Z)Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyStreamFrame;

    return-object p0
.end method

.method public bridge synthetic setLast(Z)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public setStreamId(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;

    return-object p0
.end method

.method public bridge synthetic setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(last: "

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->isLast()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--> Stream-ID = "

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->streamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--> Size = "

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->refCnt()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(freed)"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->touch()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 122
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 128
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->touch()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method
