.class Lu/aly/bc$a;
.super Lu/aly/di;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/di<",
        "Lu/aly/bc;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Lu/aly/di;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bc$1;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Lu/aly/bc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/bc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 369
    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    .line 371
    :goto_0
    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object v0

    .line 372
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-nez v1, :cond_1

    .line 417
    invoke-virtual {p1}, Lu/aly/cy;->k()V

    .line 421
    invoke-virtual {p2}, Lu/aly/bc;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 425
    invoke-virtual {p2}, Lu/aly/bc;->n()V

    return-void

    .line 422
    :cond_0
    new-instance p1, Lu/aly/cz;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    :cond_1
    iget-short v1, v0, Lu/aly/ct;->c:S

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 413
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_2

    .line 405
    :cond_2
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 406
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    .line 407
    invoke-virtual {p2, v3}, Lu/aly/bc;->c(Z)V

    goto :goto_2

    .line 409
    :cond_3
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_2

    .line 397
    :cond_4
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 398
    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bc;->b:I

    .line 399
    invoke-virtual {p2, v3}, Lu/aly/bc;->b(Z)V

    goto :goto_2

    .line 401
    :cond_5
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_2

    .line 377
    :cond_6
    iget-byte v1, v0, Lu/aly/ct;->b:B

    const/16 v4, 0xd

    if-ne v1, v4, :cond_8

    .line 379
    invoke-virtual {p1}, Lu/aly/cy;->n()Lu/aly/cv;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/util/HashMap;

    iget v4, v0, Lu/aly/cv;->c:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lu/aly/bc;->a:Ljava/util/Map;

    const/4 v1, 0x0

    .line 381
    :goto_1
    iget v2, v0, Lu/aly/cv;->c:I

    if-ge v1, v2, :cond_7

    .line 384
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v2

    .line 385
    new-instance v4, Lu/aly/bd;

    invoke-direct {v4}, Lu/aly/bd;-><init>()V

    .line 386
    invoke-virtual {v4, p1}, Lu/aly/bd;->a(Lu/aly/cy;)V

    .line 387
    iget-object v5, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_7
    invoke-virtual {p1}, Lu/aly/cy;->o()V

    .line 391
    invoke-virtual {p2, v3}, Lu/aly/bc;->a(Z)V

    goto :goto_2

    .line 393
    :cond_8
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    .line 415
    :goto_2
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

    .line 364
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$a;->b(Lu/aly/cy;Lu/aly/bc;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/bc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 430
    invoke-virtual {p2}, Lu/aly/bc;->n()V

    .line 432
    invoke-static {}, Lu/aly/bc;->o()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/dd;)V

    .line 433
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 434
    invoke-static {}, Lu/aly/bc;->p()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 436
    new-instance v0, Lu/aly/cv;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lu/aly/bc;->a:Ljava/util/Map;

    .line 437
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/cv;-><init>(BBI)V

    .line 436
    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/cv;)V

    .line 438
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 439
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lu/aly/cy;->a(Ljava/lang/String;)V

    .line 440
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bd;

    invoke-virtual {v1, p1}, Lu/aly/bd;->b(Lu/aly/cy;)V

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p1}, Lu/aly/cy;->e()V

    .line 444
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 446
    :cond_1
    invoke-static {}, Lu/aly/bc;->q()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 447
    iget v0, p2, Lu/aly/bc;->b:I

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(I)V

    .line 448
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 449
    iget-object v0, p2, Lu/aly/bc;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 450
    invoke-static {}, Lu/aly/bc;->r()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 451
    iget-object p2, p2, Lu/aly/bc;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/cy;->a(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 454
    :cond_2
    invoke-virtual {p1}, Lu/aly/cy;->d()V

    .line 455
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

    .line 364
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$a;->a(Lu/aly/cy;Lu/aly/bc;)V

    return-void
.end method
