.class public Lu/aly/ag;
.super Lu/aly/ax;
.source "UEKV.java"

# interfaces
.implements Lu/aly/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JI)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lu/aly/ax;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lu/aly/ag;->a(Ljava/lang/String;)Lu/aly/ax;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lu/aly/ag;->b(J)Lu/aly/ax;

    .line 23
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 24
    invoke-direct {p0, p2}, Lu/aly/ag;->b(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/aly/ag;->a(Ljava/util/Map;)Lu/aly/ax;

    :cond_0
    if-lez p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x1

    .line 27
    :goto_0
    invoke-virtual {p0, p5}, Lu/aly/ag;->a(I)Lu/aly/ax;

    const-wide/16 p1, 0x0

    cmp-long p5, p3, p1

    if-lez p5, :cond_2

    .line 30
    invoke-virtual {p0, p3, p4}, Lu/aly/ag;->a(J)Lu/aly/ax;

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lu/aly/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lu/aly/af;"
        }
    .end annotation

    .line 76
    new-instance v0, Lu/aly/af;

    invoke-direct {v0}, Lu/aly/af;-><init>()V

    .line 77
    iput-object p0, v0, Lu/aly/af;->b:Ljava/lang/String;

    .line 78
    iput-object p1, v0, Lu/aly/af;->c:Ljava/lang/String;

    .line 79
    iput-object p2, v0, Lu/aly/af;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lu/aly/bj;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_6

    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    new-instance v3, Lu/aly/bj;

    invoke-direct {v3}, Lu/aly/bj;-><init>()V

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 51
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 52
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lu/aly/bj;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_0
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 54
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bj;->b(J)V

    goto :goto_1

    .line 55
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 56
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bj;->b(J)V

    goto :goto_1

    .line 57
    :cond_2
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 58
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bj;->b(J)V

    goto :goto_1

    .line 59
    :cond_3
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_4

    .line 60
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bj;->b(J)V

    .line 63
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lu/aly/bj;->k()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 67
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public a(Lu/aly/bp;Ljava/lang/String;)V
    .locals 3

    .line 91
    invoke-virtual {p1}, Lu/aly/bp;->s()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    invoke-virtual {p1}, Lu/aly/bp;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/be;

    .line 93
    invoke-virtual {v1}, Lu/aly/be;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 101
    new-instance v1, Lu/aly/be;

    invoke-direct {v1}, Lu/aly/be;-><init>()V

    .line 102
    invoke-virtual {v1, p2}, Lu/aly/be;->a(Ljava/lang/String;)Lu/aly/be;

    .line 103
    invoke-virtual {p1, v1}, Lu/aly/bp;->a(Lu/aly/be;)V

    .line 106
    :cond_2
    invoke-virtual {v1, p0}, Lu/aly/be;->a(Lu/aly/ax;)V

    return-void
.end method
