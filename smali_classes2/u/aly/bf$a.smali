.class Lu/aly/bf$a;
.super Lu/aly/di;
.source "Latent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/di<",
        "Lu/aly/bf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Lu/aly/di;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bf$1;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Lu/aly/bf$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/bf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 282
    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    .line 284
    :goto_0
    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object v0

    .line 285
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-nez v1, :cond_2

    .line 310
    invoke-virtual {p1}, Lu/aly/cy;->k()V

    .line 314
    invoke-virtual {p2}, Lu/aly/bf;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 318
    invoke-virtual {p2}, Lu/aly/bf;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p2}, Lu/aly/bf;->j()V

    return-void

    .line 319
    :cond_0
    new-instance p1, Lu/aly/cz;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'interval\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_1
    new-instance p1, Lu/aly/cz;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'latency\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_2
    iget-short v1, v0, Lu/aly/ct;->c:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    .line 306
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    .line 298
    :cond_3
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    .line 299
    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bf;->b:J

    .line 300
    invoke-virtual {p2, v2}, Lu/aly/bf;->b(Z)V

    goto :goto_1

    .line 302
    :cond_4
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    .line 290
    :cond_5
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6

    .line 291
    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bf;->a:I

    .line 292
    invoke-virtual {p2, v2}, Lu/aly/bf;->a(Z)V

    goto :goto_1

    .line 294
    :cond_6
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    .line 308
    :goto_1
    invoke-virtual {p1}, Lu/aly/cy;->m()V

    goto/16 :goto_0
.end method

.method public synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 277
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bf$a;->b(Lu/aly/cy;Lu/aly/bf;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/bf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 327
    invoke-virtual {p2}, Lu/aly/bf;->j()V

    .line 329
    invoke-static {}, Lu/aly/bf;->k()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/dd;)V

    .line 330
    invoke-static {}, Lu/aly/bf;->l()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 331
    iget v0, p2, Lu/aly/bf;->a:I

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(I)V

    .line 332
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 333
    invoke-static {}, Lu/aly/bf;->m()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 334
    iget-wide v0, p2, Lu/aly/bf;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(J)V

    .line 335
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 336
    invoke-virtual {p1}, Lu/aly/cy;->d()V

    .line 337
    invoke-virtual {p1}, Lu/aly/cy;->b()V

    return-void
.end method

.method public synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 277
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bf$a;->a(Lu/aly/cy;Lu/aly/bf;)V

    return-void
.end method
