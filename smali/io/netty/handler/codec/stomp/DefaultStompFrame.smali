.class public Lio/netty/handler/codec/stomp/DefaultStompFrame;
.super Lio/netty/handler/codec/stomp/DefaultStompHeadersSubframe;
.source "DefaultStompFrame.java"

# interfaces
.implements Lio/netty/handler/codec/stomp/StompFrame;


# instance fields
.field private final content:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/stomp/StompCommand;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;-><init>(Lio/netty/handler/codec/stomp/StompCommand;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/stomp/StompCommand;Lio/netty/buffer/ByteBuf;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;-><init>(Lio/netty/handler/codec/stomp/StompCommand;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/stomp/DefaultStompHeaders;)V

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/stomp/StompCommand;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/stomp/DefaultStompHeaders;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p3}, Lio/netty/handler/codec/stomp/DefaultStompHeadersSubframe;-><init>(Lio/netty/handler/codec/stomp/StompCommand;Lio/netty/handler/codec/stomp/DefaultStompHeaders;)V

    const-string p1, "content"

    .line 41
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    return-void
.end method


# virtual methods
.method public content()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->copy()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/stomp/LastStompContentSubframe;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->copy()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/stomp/StompContentSubframe;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->copy()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/stomp/StompFrame;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->duplicate()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/stomp/LastStompContentSubframe;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->duplicate()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/stomp/StompContentSubframe;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->duplicate()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/stomp/StompFrame;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public refCnt()I
    .locals 1

    .line 74
    iget-object v0, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 108
    iget-object v0, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->release(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/LastStompContentSubframe;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/StompContentSubframe;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/StompFrame;
    .locals 3

    .line 69
    new-instance v0, Lio/netty/handler/codec/stomp/DefaultStompFrame;

    iget-object v1, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->command:Lio/netty/handler/codec/stomp/StompCommand;

    iget-object v2, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->headers:Lio/netty/handler/codec/stomp/DefaultStompHeaders;

    invoke-virtual {v2}, Lio/netty/handler/codec/stomp/DefaultStompHeaders;->copy()Lio/netty/handler/codec/stomp/DefaultStompHeaders;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lio/netty/handler/codec/stomp/DefaultStompFrame;-><init>(Lio/netty/handler/codec/stomp/StompCommand;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/stomp/DefaultStompHeaders;)V

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->retain()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->retain(I)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/stomp/LastStompContentSubframe;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->retain()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/stomp/LastStompContentSubframe;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->retain(I)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/stomp/StompContentSubframe;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->retain()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/stomp/StompContentSubframe;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->retain(I)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/stomp/StompFrame;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/stomp/StompFrame;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->retain()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->retain(I)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->retainedDuplicate()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/stomp/LastStompContentSubframe;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->retainedDuplicate()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/stomp/StompContentSubframe;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->retainedDuplicate()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/stomp/StompFrame;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultStompFrame{command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->command:Lio/netty/handler/codec/stomp/StompCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->headers:Lio/netty/handler/codec/stomp/DefaultStompHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    sget-object v2, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 116
    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->touch()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/stomp/LastStompContentSubframe;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->touch()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/stomp/LastStompContentSubframe;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/stomp/StompContentSubframe;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->touch()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/stomp/StompContentSubframe;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/stomp/StompFrame;
    .locals 1

    .line 91
    iget-object v0, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/stomp/StompFrame;
    .locals 1

    .line 97
    iget-object v0, p0, Lio/netty/handler/codec/stomp/DefaultStompFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->touch()Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/stomp/DefaultStompFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/stomp/StompFrame;

    move-result-object p1

    return-object p1
.end method
