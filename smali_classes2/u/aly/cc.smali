.class public Lu/aly/cc;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lu/aly/cy;

.field private final b:Lu/aly/dl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    new-instance v0, Lu/aly/cs$a;

    invoke-direct {v0}, Lu/aly/cs$a;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/cc;-><init>(Lu/aly/da;)V

    return-void
.end method

.method public constructor <init>(Lu/aly/da;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lu/aly/dl;

    invoke-direct {v0}, Lu/aly/dl;-><init>()V

    iput-object v0, p0, Lu/aly/cc;->b:Lu/aly/dl;

    .line 59
    invoke-interface {p1, v0}, Lu/aly/da;->a(Lu/aly/dm;)Lu/aly/cy;

    move-result-object p1

    iput-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    return-void
.end method

.method private varargs a(B[BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 242
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lu/aly/cc;->j([BLu/aly/cg;[Lu/aly/cg;)Lu/aly/ct;

    move-result-object p2

    if-eqz p2, :cond_8

    const/4 p3, 0x2

    if-eq p1, p3, :cond_7

    const/4 p3, 0x3

    if-eq p1, p3, :cond_6

    const/4 p3, 0x4

    if-eq p1, p3, :cond_5

    const/4 p3, 0x6

    if-eq p1, p3, :cond_4

    const/16 p3, 0x8

    if-eq p1, p3, :cond_3

    const/16 p3, 0x64

    const/16 p4, 0xb

    if-eq p1, p3, :cond_2

    const/16 p3, 0xa

    if-eq p1, p3, :cond_1

    if-eq p1, p4, :cond_0

    goto/16 :goto_1

    .line 277
    :cond_0
    iget-byte p1, p2, Lu/aly/ct;->b:B

    if-ne p1, p4, :cond_8

    .line 278
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :goto_0
    iget-object p2, p0, Lu/aly/cc;->b:Lu/aly/dl;

    invoke-virtual {p2}, Lu/aly/dl;->e()V

    .line 293
    iget-object p2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p2}, Lu/aly/cy;->B()V

    return-object p1

    .line 272
    :cond_1
    :try_start_1
    iget-byte p1, p2, Lu/aly/ct;->b:B

    if-ne p1, p3, :cond_8

    .line 273
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 282
    :cond_2
    iget-byte p1, p2, Lu/aly/ct;->b:B

    if-ne p1, p4, :cond_8

    .line 283
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->A()Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 267
    :cond_3
    iget-byte p1, p2, Lu/aly/ct;->b:B

    if-ne p1, p3, :cond_8

    .line 268
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 262
    :cond_4
    iget-byte p1, p2, Lu/aly/ct;->b:B

    if-ne p1, p3, :cond_8

    .line 263
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->v()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    .line 257
    :cond_5
    iget-byte p1, p2, Lu/aly/ct;->b:B

    if-ne p1, p3, :cond_8

    .line 258
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->y()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 252
    :cond_6
    iget-byte p1, p2, Lu/aly/ct;->b:B

    if-ne p1, p3, :cond_8

    .line 253
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->u()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_0

    .line 247
    :cond_7
    iget-byte p1, p2, Lu/aly/ct;->b:B

    if-ne p1, p3, :cond_8

    .line 248
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->t()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 290
    :try_start_2
    new-instance p2, Lu/aly/cf;

    invoke-direct {p2, p1}, Lu/aly/cf;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    :goto_2
    iget-object p2, p0, Lu/aly/cc;->b:Lu/aly/dl;

    invoke-virtual {p2}, Lu/aly/dl;->e()V

    .line 293
    iget-object p2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p2}, Lu/aly/cy;->B()V

    throw p1
.end method

.method private varargs j([BLu/aly/cg;[Lu/aly/cg;)Lu/aly/ct;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lu/aly/cc;->b:Lu/aly/dl;

    invoke-virtual {v0, p1}, Lu/aly/dl;->a([B)V

    .line 300
    array-length p1, p3

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [Lu/aly/cg;

    const/4 v1, 0x0

    .line 301
    aput-object p2, v0, v1

    const/4 p2, 0x0

    .line 302
    :goto_0
    array-length v2, p3

    if-ge p2, v2, :cond_0

    add-int/lit8 v2, p2, 0x1

    .line 303
    aget-object p2, p3, p2

    aput-object p2, v0, v2

    move p2, v2

    goto :goto_0

    .line 312
    :cond_0
    iget-object p2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p2}, Lu/aly/cy;->j()Lu/aly/dd;

    const/4 p2, 0x0

    move-object p3, p2

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_5

    .line 315
    iget-object p3, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p3}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object p3

    .line 319
    iget-byte v2, p3, Lu/aly/ct;->b:B

    if-eqz v2, :cond_4

    iget-short v2, p3, Lu/aly/ct;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lu/aly/cg;->a()S

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_2

    .line 323
    :cond_2
    iget-short v2, p3, Lu/aly/ct;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lu/aly/cg;->a()S

    move-result v3

    if-eq v2, v3, :cond_3

    .line 325
    iget-object v2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    iget-byte v3, p3, Lu/aly/ct;->b:B

    invoke-static {v2, v3}, Lu/aly/db;->a(Lu/aly/cy;B)V

    .line 326
    iget-object v2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {v2}, Lu/aly/cy;->m()V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_1

    .line 331
    iget-object v2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {v2}, Lu/aly/cy;->j()Lu/aly/dd;

    goto :goto_1

    :cond_4
    :goto_2
    return-object p2

    :cond_5
    return-object p3
.end method


# virtual methods
.method public varargs a([BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    const/4 v0, 0x2

    .line 128
    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/cc;->a(B[BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public a(Lu/aly/bz;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 346
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lu/aly/cc;->a(Lu/aly/bz;[B)V

    return-void
.end method

.method public a(Lu/aly/bz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lu/aly/cc;->a(Lu/aly/bz;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->B()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 90
    :catch_0
    :try_start_1
    new-instance p1, Lu/aly/cf;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/cf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_0
    iget-object p2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p2}, Lu/aly/cy;->B()V

    throw p1
.end method

.method public a(Lu/aly/bz;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-object v0, p0, Lu/aly/cc;->b:Lu/aly/dl;

    invoke-virtual {v0, p2}, Lu/aly/dl;->a([B)V

    .line 71
    iget-object p2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-interface {p1, p2}, Lu/aly/bz;->a(Lu/aly/cy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object p1, p0, Lu/aly/cc;->b:Lu/aly/dl;

    invoke-virtual {p1}, Lu/aly/dl;->e()V

    .line 74
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->B()V

    return-void

    :catchall_0
    move-exception p1

    .line 73
    iget-object p2, p0, Lu/aly/cc;->b:Lu/aly/dl;

    invoke-virtual {p2}, Lu/aly/dl;->e()V

    .line 74
    iget-object p2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p2}, Lu/aly/cy;->B()V

    throw p1
.end method

.method public varargs a(Lu/aly/bz;[BLu/aly/cg;[Lu/aly/cg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 107
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lu/aly/cc;->j([BLu/aly/cg;[Lu/aly/cg;)Lu/aly/ct;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 109
    iget-object p2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-interface {p1, p2}, Lu/aly/bz;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    iget-object p1, p0, Lu/aly/cc;->b:Lu/aly/dl;

    invoke-virtual {p1}, Lu/aly/dl;->e()V

    .line 115
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->B()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    :try_start_1
    new-instance p2, Lu/aly/cf;

    invoke-direct {p2, p1}, Lu/aly/cf;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :goto_0
    iget-object p2, p0, Lu/aly/cc;->b:Lu/aly/dl;

    invoke-virtual {p2}, Lu/aly/dl;->e()V

    .line 115
    iget-object p2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p2}, Lu/aly/cy;->B()V

    throw p1
.end method

.method public varargs b([BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    const/4 v0, 0x3

    .line 140
    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/cc;->a(B[BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public varargs c([BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    const/4 v0, 0x4

    .line 152
    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/cc;->a(B[BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public varargs d([BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    const/4 v0, 0x6

    .line 164
    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/cc;->a(B[BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public varargs e([BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    const/16 v0, 0x8

    .line 176
    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/cc;->a(B[BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public varargs f([BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    const/16 v0, 0xa

    .line 188
    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/cc;->a(B[BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public varargs g([BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    const/16 v0, 0xb

    .line 200
    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/cc;->a(B[BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public varargs h([BLu/aly/cg;[Lu/aly/cg;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    const/16 v0, 0x64

    .line 213
    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/cc;->a(B[BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public varargs i([BLu/aly/cg;[Lu/aly/cg;)Ljava/lang/Short;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 226
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lu/aly/cc;->j([BLu/aly/cg;[Lu/aly/cg;)Lu/aly/ct;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    .line 229
    iget-object p1, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object p1

    iget-short p1, p1, Lu/aly/ct;->c:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_0
    iget-object p2, p0, Lu/aly/cc;->b:Lu/aly/dl;

    invoke-virtual {p2}, Lu/aly/dl;->e()V

    .line 236
    iget-object p2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p2}, Lu/aly/cy;->B()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 233
    :try_start_1
    new-instance p2, Lu/aly/cf;

    invoke-direct {p2, p1}, Lu/aly/cf;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :goto_1
    iget-object p2, p0, Lu/aly/cc;->b:Lu/aly/dl;

    invoke-virtual {p2}, Lu/aly/dl;->e()V

    .line 236
    iget-object p2, p0, Lu/aly/cc;->a:Lu/aly/cy;

    invoke-virtual {p2}, Lu/aly/cy;->B()V

    throw p1
.end method
