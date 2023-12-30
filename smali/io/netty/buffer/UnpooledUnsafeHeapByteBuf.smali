.class Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;
.super Lio/netty/buffer/UnpooledHeapByteBuf;
.source "UnpooledUnsafeHeapByteBuf.java"


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    return-void
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 1

    .line 45
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getByte([BI)B

    move-result p1

    return p1
.end method

.method protected _getInt(I)I
    .locals 1

    .line 100
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getInt([BI)I

    move-result p1

    return p1
.end method

.method protected _getIntLE(I)I
    .locals 1

    .line 111
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getIntLE([BI)I

    move-result p1

    return p1
.end method

.method protected _getLong(I)J
    .locals 2

    .line 122
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getLongLE(I)J
    .locals 2

    .line 133
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getLongLE([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 1

    .line 56
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getShort([BI)S

    move-result p1

    return p1
.end method

.method protected _getShortLE(I)S
    .locals 1

    .line 67
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getShortLE([BI)S

    move-result p1

    return p1
.end method

.method protected _getUnsignedMedium(I)I
    .locals 1

    .line 78
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getUnsignedMedium([BI)I

    move-result p1

    return p1
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 1

    .line 89
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getUnsignedMediumLE([BI)I

    move-result p1

    return p1
.end method

.method protected _setByte(II)V
    .locals 1

    .line 145
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setByte([BII)V

    return-void
.end method

.method protected _setInt(II)V
    .locals 1

    .line 205
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setInt([BII)V

    return-void
.end method

.method protected _setIntLE(II)V
    .locals 1

    .line 217
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setIntLE([BII)V

    return-void
.end method

.method protected _setLong(IJ)V
    .locals 1

    .line 229
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2, p3}, Lio/netty/buffer/UnsafeByteBufUtil;->setLong([BIJ)V

    return-void
.end method

.method protected _setLongLE(IJ)V
    .locals 1

    .line 241
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2, p3}, Lio/netty/buffer/UnsafeByteBufUtil;->setLongLE([BIJ)V

    return-void
.end method

.method protected _setMedium(II)V
    .locals 1

    .line 181
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setMedium([BII)V

    return-void
.end method

.method protected _setMediumLE(II)V
    .locals 1

    .line 193
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setMediumLE([BII)V

    return-void
.end method

.method protected _setShort(II)V
    .locals 1

    .line 157
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setShort([BII)V

    return-void
.end method

.method protected _setShortLE(II)V
    .locals 1

    .line 169
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setShortLE([BII)V

    return-void
.end method

.method protected allocateArray(I)[B
    .locals 0

    .line 34
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getByte(I)B
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(I)V

    .line 40
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getByte(I)B

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    const/4 v0, 0x4

    .line 94
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 95
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getInt(I)I

    move-result p1

    return p1
.end method

.method public getIntLE(I)I
    .locals 1

    const/4 v0, 0x4

    .line 105
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 106
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getIntLE(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x8

    .line 116
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 117
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongLE(I)J
    .locals 2

    const/16 v0, 0x8

    .line 127
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 128
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    const/4 v0, 0x2

    .line 50
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 51
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getShort(I)S

    move-result p1

    return p1
.end method

.method public getShortLE(I)S
    .locals 1

    const/4 v0, 0x2

    .line 61
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 62
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getShortLE(I)S

    move-result p1

    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 1

    const/4 v0, 0x3

    .line 72
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 73
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getUnsignedMedium(I)I

    move-result p1

    return p1
.end method

.method public getUnsignedMediumLE(I)I
    .locals 1

    const/4 v0, 0x3

    .line 83
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 84
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getUnsignedMediumLE(I)I

    move-result p1

    return p1
.end method

.method protected newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isUnaligned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;)V

    return-object v0

    .line 275
    :cond_0
    invoke-super {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(I)V

    .line 139
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setByte(II)V

    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x4

    .line 198
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 199
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setInt(II)V

    return-object p0
.end method

.method public setIntLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x4

    .line 210
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 211
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setIntLE(II)V

    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1

    const/16 v0, 0x8

    .line 222
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 223
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setLong(IJ)V

    return-object p0
.end method

.method public setLongLE(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1

    const/16 v0, 0x8

    .line 234
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 235
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setLongLE(IJ)V

    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x3

    .line 174
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 175
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setMedium(II)V

    return-object p0
.end method

.method public setMediumLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x3

    .line 186
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 187
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setMediumLE(II)V

    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x2

    .line 150
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 151
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setShort(II)V

    return-object p0
.end method

.method public setShortLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x2

    .line 162
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 163
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setShortLE(II)V

    return-object p0
.end method

.method public setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 246
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 248
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 249
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setZero([BII)V

    return-object p0

    .line 252
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->setZero(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 257
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 259
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 260
    iget v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->writerIndex:I

    .line 261
    iget-object v1, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v1, v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->setZero([BII)V

    add-int/2addr v0, p1

    .line 262
    iput v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->writerIndex:I

    return-object p0

    .line 265
    :cond_0
    invoke-super {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->writeZero(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method
