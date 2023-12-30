.class final Lio/netty/handler/codec/compression/FastLz;
.super Ljava/lang/Object;
.source "FastLz.java"


# static fields
.field static final BLOCK_TYPE_COMPRESSED:B = 0x1t

.field static final BLOCK_TYPE_NON_COMPRESSED:B = 0x0t

.field static final BLOCK_WITHOUT_CHECKSUM:B = 0x0t

.field static final BLOCK_WITH_CHECKSUM:B = 0x10t

.field static final CHECKSUM_OFFSET:I = 0x4

.field private static final HASH_LOG:I = 0xd

.field private static final HASH_MASK:I = 0x1fff

.field private static final HASH_SIZE:I = 0x2000

.field static final LEVEL_1:I = 0x1

.field static final LEVEL_2:I = 0x2

.field static final LEVEL_AUTO:I = 0x0

.field static final MAGIC_NUMBER:I = 0x464c5a

.field static final MAX_CHUNK_LENGTH:I = 0xffff

.field private static final MAX_COPY:I = 0x20

.field private static final MAX_DISTANCE:I = 0x1fff

.field private static final MAX_FARDISTANCE:I = 0x11ffd

.field private static final MAX_LEN:I = 0x108

.field static final MIN_LENGTH_TO_COMPRESSION:I = 0x20

.field private static final MIN_RECOMENDED_LENGTH_FOR_LEVEL_2:I = 0x10000

.field static final OPTIONS_OFFSET:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateOutputBufferLength(I)I
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x3ff0f5c28f5c28f6L    # 1.06

    mul-double v0, v0, v2

    double-to-int p0, v0

    const/16 v0, 0x42

    .line 84
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static compress([BII[BII)I
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p5, :cond_1

    const/high16 v4, 0x10000

    if-ge v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    move/from16 v4, p5

    :goto_0
    add-int/lit8 v5, v1, 0x0

    add-int/lit8 v6, v5, -0x2

    add-int/lit8 v5, v5, -0xc

    const/16 v7, 0x2000

    new-array v8, v7, [I

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-ge v1, v9, :cond_4

    if-eqz v1, :cond_3

    add-int/lit8 v2, p4, 0x0

    add-int/lit8 v4, v1, -0x1

    int-to-byte v4, v4

    .line 124
    aput-byte v4, p3, v2

    add-int/2addr v6, v3

    const/4 v2, 0x1

    :goto_1
    if-gt v10, v6, :cond_2

    add-int/lit8 v4, v2, 0x1

    add-int v2, p4, v2

    add-int/lit8 v5, v10, 0x1

    add-int v7, p1, v10

    .line 127
    aget-byte v7, v0, v7

    aput-byte v7, p3, v2

    move v2, v4

    move v10, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    return v0

    :cond_3
    return v10

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_5

    .line 139
    aput v10, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, p4, 0x0

    const/16 v7, 0x1f

    .line 144
    aput-byte v7, p3, v1

    add-int/lit8 v1, p4, 0x1

    add-int/lit8 v9, p1, 0x0

    .line 145
    aget-byte v9, v0, v9

    aput-byte v9, p3, v1

    add-int/lit8 v1, p4, 0x2

    add-int/lit8 v9, p1, 0x1

    .line 146
    aget-byte v9, v0, v9

    aput-byte v9, p3, v1

    const/4 v9, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x2

    :goto_3
    const/16 v13, 0x20

    if-ge v9, v5, :cond_25

    const-wide/16 v16, 0x0

    if-ne v4, v2, :cond_6

    add-int v18, p1, v9

    .line 167
    aget-byte v1, v0, v18

    add-int/lit8 v10, v18, -0x1

    aget-byte v14, v0, v10

    if-ne v1, v14, :cond_6

    .line 168
    invoke-static {v0, v10}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    move-result v1

    add-int/lit8 v10, v18, 0x1

    invoke-static {v0, v10}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    move-result v10

    if-ne v1, v10, :cond_6

    add-int/lit8 v1, v9, 0x3

    add-int/lit8 v10, v9, 0x2

    const/4 v14, 0x1

    const-wide/16 v21, 0x1

    goto :goto_4

    :cond_6
    move v1, v9

    move-wide/from16 v21, v16

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_4
    const-wide/16 v23, 0x1fff

    if-nez v14, :cond_f

    add-int v10, p1, v1

    .line 182
    invoke-static {v0, v10}, Lio/netty/handler/codec/compression/FastLz;->hashFunction([BI)I

    move-result v14

    .line 186
    aget v15, v8, v14

    sub-int v7, v9, v15

    int-to-long v2, v7

    .line 193
    aput v9, v8, v14

    cmp-long v7, v2, v16

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    if-ne v4, v7, :cond_7

    cmp-long v7, v2, v23

    if-ltz v7, :cond_8

    goto/16 :goto_6

    :cond_7
    const-wide/32 v21, 0x11ffd

    cmp-long v7, v2, v21

    if-gez v7, :cond_d

    :cond_8
    add-int/lit8 v7, v15, 0x1

    add-int v14, p1, v15

    .line 196
    aget-byte v14, v0, v14

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v0, v10

    if-ne v14, v10, :cond_d

    add-int/lit8 v10, v7, 0x1

    add-int v7, p1, v7

    aget-byte v7, v0, v7

    add-int/lit8 v14, v1, 0x1

    add-int v1, p1, v1

    aget-byte v1, v0, v1

    if-ne v7, v1, :cond_d

    add-int/lit8 v1, v10, 0x1

    add-int v7, p1, v10

    aget-byte v7, v0, v7

    add-int/lit8 v10, v14, 0x1

    add-int v14, p1, v14

    aget-byte v14, v0, v14

    if-eq v7, v14, :cond_9

    goto :goto_6

    :cond_9
    const/4 v7, 0x2

    if-ne v4, v7, :cond_c

    cmp-long v7, v2, v23

    if-ltz v7, :cond_c

    add-int/lit8 v7, v10, 0x1

    add-int v10, p1, v10

    .line 217
    aget-byte v10, v0, v10

    add-int/lit8 v14, v1, 0x1

    add-int v1, p1, v1

    aget-byte v1, v0, v1

    if-ne v10, v1, :cond_b

    add-int v1, p1, v7

    aget-byte v1, v0, v1

    add-int/lit8 v10, v14, 0x1

    add-int v7, p1, v14

    aget-byte v7, v0, v7

    if-eq v1, v7, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x5

    move-wide/from16 v21, v2

    goto :goto_a

    :cond_b
    :goto_5
    add-int/lit8 v1, v11, 0x1

    add-int v2, p4, v11

    add-int/lit8 v3, v9, 0x1

    add-int v7, p1, v9

    .line 222
    aget-byte v7, v0, v7

    aput-byte v7, p3, v2

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v13, :cond_e

    add-int/lit8 v11, v1, 0x1

    add-int v1, p4, v1

    const/16 v2, 0x1f

    .line 227
    aput-byte v2, p3, v1

    goto :goto_7

    :cond_c
    move v10, v1

    move-wide/from16 v21, v2

    goto :goto_9

    :cond_d
    :goto_6
    add-int/lit8 v1, v11, 0x1

    add-int v2, p4, v11

    add-int/lit8 v3, v9, 0x1

    add-int v7, p1, v9

    .line 204
    aget-byte v7, v0, v7

    aput-byte v7, p3, v2

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v13, :cond_e

    add-int/lit8 v11, v1, 0x1

    add-int v1, p4, v1

    const/16 v2, 0x1f

    .line 209
    aput-byte v2, p3, v1

    :goto_7
    move v9, v3

    :goto_8
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v7, 0x1f

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_e
    move v11, v1

    move v9, v3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v7, 0x1f

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_f
    :goto_9
    const/4 v1, 0x3

    :goto_a
    add-int/2addr v1, v9

    const-wide/16 v2, 0x1

    sub-long v21, v21, v2

    cmp-long v2, v21, v16

    if-nez v2, :cond_11

    add-int v2, p1, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 247
    aget-byte v2, v0, v2

    :goto_b
    if-ge v1, v6, :cond_1b

    add-int/lit8 v3, v10, 0x1

    add-int v7, p1, v10

    .line 249
    aget-byte v7, v0, v7

    if-eq v7, v2, :cond_10

    goto/16 :goto_f

    :cond_10
    add-int/lit8 v1, v1, 0x1

    move v10, v3

    goto :goto_b

    :cond_11
    add-int/lit8 v2, v10, 0x1

    add-int v3, p1, v10

    .line 258
    aget-byte v3, v0, v3

    add-int/lit8 v7, v1, 0x1

    add-int v1, p1, v1

    aget-byte v1, v0, v1

    if-eq v3, v1, :cond_12

    :goto_c
    move v1, v7

    goto/16 :goto_f

    :cond_12
    add-int/lit8 v1, v2, 0x1

    add-int v2, p1, v2

    .line 261
    aget-byte v2, v0, v2

    add-int/lit8 v3, v7, 0x1

    add-int v7, p1, v7

    aget-byte v7, v0, v7

    if-eq v2, v7, :cond_13

    :goto_d
    move v1, v3

    goto/16 :goto_f

    :cond_13
    add-int/lit8 v2, v1, 0x1

    add-int v1, p1, v1

    .line 264
    aget-byte v1, v0, v1

    add-int/lit8 v7, v3, 0x1

    add-int v3, p1, v3

    aget-byte v3, v0, v3

    if-eq v1, v3, :cond_14

    goto :goto_c

    :cond_14
    add-int/lit8 v1, v2, 0x1

    add-int v2, p1, v2

    .line 267
    aget-byte v2, v0, v2

    add-int/lit8 v3, v7, 0x1

    add-int v7, p1, v7

    aget-byte v7, v0, v7

    if-eq v2, v7, :cond_15

    goto :goto_d

    :cond_15
    add-int/lit8 v2, v1, 0x1

    add-int v1, p1, v1

    .line 270
    aget-byte v1, v0, v1

    add-int/lit8 v7, v3, 0x1

    add-int v3, p1, v3

    aget-byte v3, v0, v3

    if-eq v1, v3, :cond_16

    goto :goto_c

    :cond_16
    add-int/lit8 v1, v2, 0x1

    add-int v2, p1, v2

    .line 273
    aget-byte v2, v0, v2

    add-int/lit8 v3, v7, 0x1

    add-int v7, p1, v7

    aget-byte v7, v0, v7

    if-eq v2, v7, :cond_17

    goto :goto_d

    :cond_17
    add-int/lit8 v2, v1, 0x1

    add-int v1, p1, v1

    .line 276
    aget-byte v1, v0, v1

    add-int/lit8 v7, v3, 0x1

    add-int v3, p1, v3

    aget-byte v3, v0, v3

    if-eq v1, v3, :cond_18

    goto :goto_c

    :cond_18
    add-int/lit8 v1, v2, 0x1

    add-int v2, p1, v2

    .line 279
    aget-byte v2, v0, v2

    add-int/lit8 v3, v7, 0x1

    add-int v7, p1, v7

    aget-byte v7, v0, v7

    if-eq v2, v7, :cond_19

    goto :goto_d

    :cond_19
    move v2, v1

    move v1, v3

    :goto_e
    if-ge v1, v6, :cond_1b

    add-int/lit8 v3, v2, 0x1

    add-int v2, p1, v2

    .line 283
    aget-byte v2, v0, v2

    add-int/lit8 v7, v1, 0x1

    add-int v1, p1, v1

    aget-byte v1, v0, v1

    if-eq v2, v1, :cond_1a

    goto/16 :goto_c

    :cond_1a
    move v2, v3

    move v1, v7

    goto :goto_e

    :cond_1b
    :goto_f
    if-eqz v12, :cond_1c

    add-int v2, p4, v11

    sub-int/2addr v2, v12

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int/lit8 v12, v12, -0x1

    int-to-byte v3, v12

    .line 295
    aput-byte v3, p3, v2

    goto :goto_10

    :cond_1c
    add-int/lit8 v11, v11, -0x1

    :goto_10
    const/4 v2, -0x3

    add-int/2addr v1, v2

    sub-int v3, v1, v9

    const-wide/16 v9, 0xe0

    const/4 v7, 0x7

    const-wide/16 v12, 0xff

    const/16 v14, 0x8

    const/4 v15, 0x2

    if-ne v4, v15, :cond_22

    const/16 v2, 0xff

    const/4 v15, -0x1

    cmp-long v16, v21, v23

    if-gez v16, :cond_1f

    if-ge v3, v7, :cond_1d

    add-int/lit8 v2, v11, 0x1

    add-int v7, p4, v11

    shl-int/lit8 v3, v3, 0x5

    int-to-long v9, v3

    ushr-long v14, v21, v14

    add-long/2addr v9, v14

    long-to-int v3, v9

    int-to-byte v3, v3

    .line 312
    aput-byte v3, p3, v7

    add-int/lit8 v3, v2, 0x1

    add-int v2, p4, v2

    and-long v9, v21, v12

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 313
    aput-byte v7, p3, v2

    goto/16 :goto_14

    :cond_1d
    add-int/lit8 v7, v11, 0x1

    add-int v11, p4, v11

    ushr-long v16, v21, v14

    add-long v9, v16, v9

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 315
    aput-byte v9, p3, v11

    add-int/lit8 v3, v3, -0x7

    :goto_11
    if-lt v3, v2, :cond_1e

    add-int/lit8 v9, v7, 0x1

    add-int v7, p4, v7

    .line 317
    aput-byte v15, p3, v7

    add-int/lit16 v3, v3, -0xff

    move v7, v9

    goto :goto_11

    :cond_1e
    add-int/lit8 v2, v7, 0x1

    add-int v7, p4, v7

    int-to-byte v3, v3

    .line 319
    aput-byte v3, p3, v7

    add-int/lit8 v3, v2, 0x1

    add-int v2, p4, v2

    and-long v9, v21, v12

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 320
    aput-byte v7, p3, v2

    goto/16 :goto_14

    :cond_1f
    if-ge v3, v7, :cond_20

    sub-long v21, v21, v23

    add-int/lit8 v2, v11, 0x1

    add-int v7, p4, v11

    shl-int/lit8 v3, v3, 0x5

    const/16 v9, 0x1f

    add-int/2addr v3, v9

    int-to-byte v3, v3

    .line 326
    aput-byte v3, p3, v7

    add-int/lit8 v3, v2, 0x1

    add-int v2, p4, v2

    .line 327
    aput-byte v15, p3, v2

    add-int/lit8 v2, v3, 0x1

    add-int v3, p4, v3

    ushr-long v9, v21, v14

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 328
    aput-byte v7, p3, v3

    add-int/lit8 v3, v2, 0x1

    add-int v2, p4, v2

    and-long v9, v21, v12

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 329
    aput-byte v7, p3, v2

    goto/16 :goto_14

    :cond_20
    sub-long v21, v21, v23

    add-int/lit8 v7, v11, 0x1

    add-int v9, p4, v11

    .line 332
    aput-byte v15, p3, v9

    add-int/lit8 v3, v3, -0x7

    :goto_12
    if-lt v3, v2, :cond_21

    add-int/lit8 v9, v7, 0x1

    add-int v7, p4, v7

    .line 334
    aput-byte v15, p3, v7

    add-int/lit16 v3, v3, -0xff

    move v7, v9

    goto :goto_12

    :cond_21
    add-int/lit8 v2, v7, 0x1

    add-int v7, p4, v7

    int-to-byte v3, v3

    .line 336
    aput-byte v3, p3, v7

    add-int/lit8 v3, v2, 0x1

    add-int v2, p4, v2

    .line 337
    aput-byte v15, p3, v2

    add-int/lit8 v2, v3, 0x1

    add-int v3, p4, v3

    ushr-long v9, v21, v14

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 338
    aput-byte v7, p3, v3

    add-int/lit8 v3, v2, 0x1

    add-int v2, p4, v2

    and-long v9, v21, v12

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 339
    aput-byte v7, p3, v2

    goto :goto_14

    :cond_22
    const/16 v15, 0x106

    if-le v3, v15, :cond_23

    :goto_13
    if-le v3, v15, :cond_23

    add-int/lit8 v16, v11, 0x1

    add-int v11, p4, v11

    ushr-long v19, v21, v14

    add-long v14, v19, v9

    long-to-int v15, v14

    int-to-byte v14, v15

    .line 345
    aput-byte v14, p3, v11

    add-int/lit8 v11, v16, 0x1

    add-int v14, p4, v16

    .line 346
    aput-byte v2, p3, v14

    add-int/lit8 v14, v11, 0x1

    add-int v11, p4, v11

    and-long v9, v21, v12

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 347
    aput-byte v9, p3, v11

    add-int/lit16 v3, v3, -0x106

    move v11, v14

    const-wide/16 v9, 0xe0

    const/16 v14, 0x8

    const/16 v15, 0x106

    goto :goto_13

    :cond_23
    if-ge v3, v7, :cond_24

    add-int/lit8 v2, v11, 0x1

    add-int v7, p4, v11

    shl-int/lit8 v3, v3, 0x5

    int-to-long v9, v3

    const/16 v3, 0x8

    ushr-long v14, v21, v3

    add-long/2addr v9, v14

    long-to-int v3, v9

    int-to-byte v3, v3

    .line 353
    aput-byte v3, p3, v7

    add-int/lit8 v3, v2, 0x1

    add-int v2, p4, v2

    and-long v9, v21, v12

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 354
    aput-byte v7, p3, v2

    goto :goto_14

    :cond_24
    add-int/lit8 v2, v11, 0x1

    add-int v7, p4, v11

    const/16 v9, 0x8

    ushr-long v9, v21, v9

    const-wide/16 v14, 0xe0

    add-long/2addr v9, v14

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 356
    aput-byte v9, p3, v7

    add-int/lit8 v7, v2, 0x1

    add-int v2, p4, v2

    add-int/lit8 v3, v3, -0x7

    int-to-byte v3, v3

    .line 357
    aput-byte v3, p3, v2

    add-int/lit8 v3, v7, 0x1

    add-int v2, p4, v7

    and-long v9, v21, v12

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 358
    aput-byte v7, p3, v2

    :goto_14
    add-int v2, p1, v1

    .line 364
    invoke-static {v0, v2}, Lio/netty/handler/codec/compression/FastLz;->hashFunction([BI)I

    move-result v2

    add-int/lit8 v7, v1, 0x1

    .line 365
    aput v1, v8, v2

    add-int v1, p1, v7

    .line 368
    invoke-static {v0, v1}, Lio/netty/handler/codec/compression/FastLz;->hashFunction([BI)I

    move-result v1

    add-int/lit8 v9, v7, 0x1

    .line 369
    aput v7, v8, v1

    add-int/lit8 v11, v3, 0x1

    add-int v1, p4, v3

    const/16 v2, 0x1f

    .line 372
    aput-byte v2, p3, v1

    goto/16 :goto_8

    :cond_25
    const/4 v1, 0x1

    add-int/2addr v6, v1

    :goto_15
    if-gt v9, v6, :cond_27

    add-int/lit8 v1, v11, 0x1

    add-int v2, p4, v11

    add-int/lit8 v3, v9, 0x1

    add-int v5, p1, v9

    .line 393
    aget-byte v5, v0, v5

    aput-byte v5, p3, v2

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v13, :cond_26

    add-int/lit8 v11, v1, 0x1

    add-int v1, p4, v1

    const/16 v2, 0x1f

    .line 397
    aput-byte v2, p3, v1

    move v9, v3

    const/4 v12, 0x0

    goto :goto_15

    :cond_26
    move v11, v1

    move v9, v3

    goto :goto_15

    :cond_27
    if-eqz v12, :cond_28

    add-int v0, p4, v11

    sub-int/2addr v0, v12

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v12, v1

    int-to-byte v1, v12

    .line 404
    aput-byte v1, p3, v0

    goto :goto_16

    :cond_28
    add-int/lit8 v11, v11, -0x1

    :goto_16
    const/4 v0, 0x2

    if-ne v4, v0, :cond_29

    .line 411
    aget-byte v0, p3, p4

    or-int/2addr v0, v13

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    :cond_29
    return v11
.end method

.method static decompress([BII[BII)I
    .locals 30

    move/from16 v0, p2

    move/from16 v1, p5

    .line 428
    aget-byte v2, p0, p1

    const/4 v3, 0x5

    shr-int/2addr v2, v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    const/4 v5, 0x0

    if-eq v2, v4, :cond_1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 431
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "invalid level: %d (expected: %d or %d)"

    .line 430
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    add-int/lit8 v6, p1, 0x0

    .line 440
    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    :goto_1
    shr-long v11, v6, v3

    const-wide/16 v13, 0x1f

    and-long/2addr v13, v6

    const/16 v15, 0x8

    shl-long/2addr v13, v15

    const-wide/16 v16, 0x20

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x1

    cmp-long v22, v6, v16

    if-ltz v22, :cond_d

    sub-long v11, v11, v20

    move-wide/from16 v22, v6

    int-to-long v5, v8

    sub-long v3, v5, v13

    long-to-int v4, v3

    const-wide/16 v24, 0x6

    cmp-long v3, v11, v24

    if-nez v3, :cond_4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v3, v9, 0x1

    add-int v9, p1, v9

    .line 460
    aget-byte v9, p0, v9

    const/16 v7, 0xff

    and-int/2addr v9, v7

    move/from16 v25, v8

    int-to-long v7, v9

    add-long/2addr v11, v7

    move v9, v3

    move/from16 v26, v10

    const/4 v3, 0x1

    const/16 v8, 0xff

    goto :goto_4

    :cond_2
    move/from16 v25, v8

    :goto_2
    add-int/lit8 v3, v9, 0x1

    add-int v7, p1, v9

    .line 463
    aget-byte v7, p0, v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    move/from16 v26, v10

    int-to-long v9, v7

    add-long/2addr v11, v9

    move v9, v3

    if-eq v7, v8, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v10, v26

    goto :goto_2

    :cond_4
    move/from16 v25, v8

    move/from16 v26, v10

    const/16 v8, 0xff

    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-ne v2, v3, :cond_5

    add-int/lit8 v7, v9, 0x1

    add-int v9, p1, v9

    .line 470
    aget-byte v9, p0, v9

    and-int/2addr v9, v8

    sub-int/2addr v4, v9

    goto :goto_5

    :cond_5
    add-int/lit8 v7, v9, 0x1

    add-int v9, p1, v9

    .line 472
    aget-byte v9, p0, v9

    and-int/2addr v9, v8

    sub-int/2addr v4, v9

    if-ne v9, v8, :cond_6

    const-wide/16 v9, 0x1f00

    cmp-long v17, v13, v9

    if-nez v17, :cond_6

    add-int/lit8 v4, v7, 0x1

    add-int v7, p1, v7

    .line 479
    aget-byte v7, p0, v7

    and-int/2addr v7, v8

    shl-int/2addr v7, v15

    int-to-long v9, v7

    add-int/lit8 v7, v4, 0x1

    add-int v4, p1, v4

    .line 480
    aget-byte v4, p0, v4

    and-int/2addr v4, v8

    int-to-long v13, v4

    add-long/2addr v9, v13

    sub-long v8, v5, v9

    const-wide/16 v13, 0x1fff

    sub-long/2addr v8, v13

    long-to-int v4, v8

    :cond_6
    :goto_5
    add-long/2addr v5, v11

    const-wide/16 v8, 0x3

    add-long/2addr v5, v8

    int-to-long v8, v1

    cmp-long v10, v5, v8

    if-lez v10, :cond_7

    const/4 v5, 0x0

    return v5

    :cond_7
    const/4 v5, 0x0

    add-int/lit8 v6, v4, -0x1

    if-gez v6, :cond_8

    return v5

    :cond_8
    if-ge v7, v0, :cond_9

    add-int/lit8 v5, v7, 0x1

    add-int v6, p1, v7

    .line 499
    aget-byte v6, p0, v6

    const/16 v7, 0xff

    and-int/2addr v6, v7

    int-to-long v6, v6

    move/from16 v8, v25

    move/from16 v10, v26

    goto :goto_6

    :cond_9
    move v5, v7

    move-wide/from16 v6, v22

    move/from16 v8, v25

    const/4 v10, 0x0

    :goto_6
    if-ne v4, v8, :cond_b

    add-int v4, p4, v4

    const/4 v3, 0x1

    sub-int/2addr v4, v3

    .line 507
    aget-byte v4, p3, v4

    add-int/lit8 v9, v8, 0x1

    add-int v8, p4, v8

    .line 508
    aput-byte v4, p3, v8

    add-int/lit8 v8, v9, 0x1

    add-int v9, p4, v9

    .line 509
    aput-byte v4, p3, v9

    add-int/lit8 v9, v8, 0x1

    add-int v8, p4, v8

    .line 510
    aput-byte v4, p3, v8

    :goto_7
    cmp-long v8, v11, v18

    if-eqz v8, :cond_a

    add-int/lit8 v8, v9, 0x1

    add-int v9, p4, v9

    .line 512
    aput-byte v4, p3, v9

    sub-long v11, v11, v20

    move v9, v8

    goto :goto_7

    :cond_a
    move v8, v9

    const/4 v4, 0x0

    move v9, v5

    goto/16 :goto_b

    :cond_b
    const/4 v3, 0x1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v9, v8, 0x1

    add-int v8, p4, v8

    add-int/lit8 v13, v4, 0x1

    add-int v4, p4, v4

    .line 520
    aget-byte v4, p3, v4

    aput-byte v4, p3, v8

    add-int/lit8 v4, v9, 0x1

    add-int v8, p4, v9

    add-int/lit8 v9, v13, 0x1

    add-int v13, p4, v13

    .line 521
    aget-byte v13, p3, v13

    aput-byte v13, p3, v8

    add-int/lit8 v8, v4, 0x1

    add-int v4, p4, v4

    add-int/lit8 v13, v9, 0x1

    add-int v9, p4, v9

    .line 522
    aget-byte v9, p3, v9

    aput-byte v9, p3, v4

    :goto_8
    cmp-long v4, v11, v18

    if-eqz v4, :cond_c

    add-int/lit8 v4, v8, 0x1

    add-int v8, p4, v8

    add-int/lit8 v9, v13, 0x1

    add-int v13, p4, v13

    .line 525
    aget-byte v13, p3, v13

    aput-byte v13, p3, v8

    sub-long v11, v11, v20

    move v8, v4

    move v13, v9

    goto :goto_8

    :cond_c
    move v9, v5

    const/4 v4, 0x0

    goto :goto_b

    :cond_d
    move-wide/from16 v22, v6

    const/4 v3, 0x1

    add-long v6, v22, v20

    int-to-long v4, v8

    add-long/2addr v4, v6

    int-to-long v10, v1

    cmp-long v12, v4, v10

    if-lez v12, :cond_e

    const/4 v4, 0x0

    return v4

    :cond_e
    const/4 v4, 0x0

    int-to-long v10, v9

    add-long/2addr v10, v6

    int-to-long v12, v0

    cmp-long v5, v10, v12

    if-lez v5, :cond_f

    return v4

    :cond_f
    add-int/lit8 v5, v8, 0x1

    add-int v8, p4, v8

    add-int/lit8 v10, v9, 0x1

    add-int v9, p1, v9

    .line 540
    aget-byte v9, p0, v9

    aput-byte v9, p3, v8

    sub-long v6, v6, v20

    :goto_9
    cmp-long v8, v6, v18

    if-eqz v8, :cond_10

    add-int/lit8 v8, v5, 0x1

    add-int v5, p4, v5

    add-int/lit8 v9, v10, 0x1

    add-int v10, p1, v10

    .line 544
    aget-byte v10, p0, v10

    aput-byte v10, p3, v5

    sub-long v6, v6, v20

    move v5, v8

    move v10, v9

    goto :goto_9

    :cond_10
    if-ge v10, v0, :cond_11

    const/4 v8, 0x1

    goto :goto_a

    :cond_11
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_12

    add-int/lit8 v6, v10, 0x1

    add-int v7, p1, v10

    .line 550
    aget-byte v7, p0, v7

    const/16 v9, 0xff

    and-int/2addr v7, v9

    int-to-long v9, v7

    move/from16 v27, v8

    move v8, v5

    move-wide/from16 v28, v9

    move v9, v6

    move/from16 v10, v27

    move-wide/from16 v6, v28

    goto :goto_b

    :cond_12
    move v9, v10

    move v10, v8

    move v8, v5

    :goto_b
    if-nez v10, :cond_13

    return v8

    :cond_13
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private static hashFunction([BI)I
    .locals 1

    .line 562
    invoke-static {p0, p1}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 563
    invoke-static {p0, p1}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    move-result p0

    shr-int/lit8 p1, v0, 0x3

    xor-int/2addr p0, p1

    xor-int/2addr p0, v0

    and-int/lit16 p0, p0, 0x1fff

    return p0
.end method

.method private static readU16([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 569
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 570
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 572
    :cond_0
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method
