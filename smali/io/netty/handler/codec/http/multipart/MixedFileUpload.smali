.class public Lio/netty/handler/codec/http/multipart/MixedFileUpload;
.super Ljava/lang/Object;
.source "MixedFileUpload.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/FileUpload;


# instance fields
.field private final definedSize:J

.field private fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

.field private final limitSize:J

.field private maxSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JJ)V
    .locals 12

    move-object v0, p0

    move-wide/from16 v9, p6

    move-wide/from16 v1, p8

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, -0x1

    .line 35
    iput-wide v3, v0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->maxSize:J

    .line 40
    iput-wide v1, v0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v3, v9, v1

    if-lez v3, :cond_0

    .line 42
    new-instance v11, Lio/netty/handler/codec/http/multipart/DiskFileUpload;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v11, v0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v11, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v11, v0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 48
    :goto_0
    iput-wide v9, v0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    return-void
.end method


# virtual methods
.method public addContent(Lio/netty/buffer/ByteBuf;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    instance-of v1, v0, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->checkSize(J)V

    .line 74
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 75
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskFileUpload;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 76
    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 77
    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 78
    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    iget-wide v11, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 80
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->maxSize:J

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;->setMaxSize(J)V

    .line 81
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    .line 86
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/FileUpload;->release()Z

    .line 88
    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 91
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http/multipart/FileUpload;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    return-void
.end method

.method public checkSize(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->maxSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Size exceed allowed maximum capacity"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 1

    .line 268
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result p1

    return p1
.end method

.method public content()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 308
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->copy()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 288
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->copy()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->copy()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public definedLength()J
    .locals 2

    .line 156
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->definedLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public delete()V
    .locals 1

    .line 96
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->delete()V

    return-void
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->duplicate()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 293
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->duplicate()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->duplicate()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 263
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->get()[B

    move-result-object v0

    return-object v0
.end method

.method public getByteBuf()Lio/netty/buffer/ByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getChunk(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getChunk(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    .line 248
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->maxSize:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 258
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public isInMemory()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->isInMemory()Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .line 151
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public refCnt()I
    .locals 1

    .line 313
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 347
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->release(I)Z

    move-result p1

    return p1
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 303
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain(I)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 318
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->retain()Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 324
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->retain(I)Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain(I)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain(I)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain(I)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 298
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->setCharset(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public setContent(Lio/netty/buffer/ByteBuf;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->checkSize(J)V

    .line 172
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 173
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    instance-of v1, v0, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v1, :cond_0

    .line 176
    new-instance v1, Lio/netty/handler/codec/http/multipart/DiskFileUpload;

    .line 177
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    iget-wide v8, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 181
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->maxSize:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/FileUpload;->setMaxSize(J)V

    .line 184
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->release()Z

    .line 187
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->setContent(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public setContent(Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->checkSize(J)V

    .line 193
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 194
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    instance-of v1, v0, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v1, :cond_0

    .line 198
    new-instance v1, Lio/netty/handler/codec/http/multipart/DiskFileUpload;

    .line 199
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    iget-wide v8, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 203
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->maxSize:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/FileUpload;->setMaxSize(J)V

    .line 206
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->release()Z

    .line 209
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->setContent(Ljava/io/File;)V

    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    instance-of v1, v0, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v1, :cond_0

    .line 218
    new-instance v1, Lio/netty/handler/codec/http/multipart/DiskFileUpload;

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 219
    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 220
    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 221
    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    iget-wide v8, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 223
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->maxSize:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/FileUpload;->setMaxSize(J)V

    .line 226
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->release()Z

    .line 228
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->setContent(Ljava/io/InputStream;)V

    return-void
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->setContentTransferEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->setFilename(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxSize(J)V
    .locals 1

    .line 58
    iput-wide p1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->maxSize:J

    .line 59
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http/multipart/FileUpload;->setMaxSize(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 330
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->touch()Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 336
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method
