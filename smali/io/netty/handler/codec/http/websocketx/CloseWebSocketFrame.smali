.class public Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
.super Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
.source "CloseWebSocketFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;)V
    .locals 0

    .line 74
    invoke-static {p3, p4}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->newBinaryData(ILjava/lang/String;)Lio/netty/buffer/ByteBuf;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public constructor <init>(ZILio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method private static newBinaryData(ILjava/lang/String;)Lio/netty/buffer/ByteBuf;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 82
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 85
    sget-object p0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1, p0}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    :cond_1
    const/4 p0, 0x0

    .line 88
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->copy()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .locals 1

    .line 142
    invoke-super {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->copy()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->copy()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->duplicate()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .locals 1

    .line 147
    invoke-super {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->duplicate()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->duplicate()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public reasonText()Ljava/lang/String;
    .locals 3

    .line 128
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 134
    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object v1

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .locals 3

    .line 157
    new-instance v0, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->isFinalFragment()Z

    move-result v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->rsv()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->retain()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->retain(I)Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .locals 0

    .line 162
    invoke-super {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->retain()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->retain(I)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->retain()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->retain(I)Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->retain()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->retain(I)Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->retainedDuplicate()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .locals 1

    .line 152
    invoke-super {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->retainedDuplicate()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->retainedDuplicate()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public statusCode()I
    .locals 3

    .line 111
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 117
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readShort()S

    move-result v2

    .line 118
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return v2

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->touch()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .locals 0

    .line 174
    invoke-super {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->touch()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->touch()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->touch()Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    move-result-object p1

    return-object p1
.end method
