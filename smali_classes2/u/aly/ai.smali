.class public Lu/aly/ai;
.super Lu/aly/ax;
.source "UGKV.java"

# interfaces
.implements Lu/aly/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lu/aly/ax;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lu/aly/ai;->a(Ljava/lang/String;)Lu/aly/ax;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lu/aly/ai;->b(J)Lu/aly/ax;

    .line 22
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 23
    invoke-direct {p0, p2}, Lu/aly/ai;->b(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/aly/ai;->a(Ljava/util/Map;)Lu/aly/ax;

    .line 26
    :cond_0
    iget p1, p0, Lu/aly/ai;->d:I

    if-lez p1, :cond_1

    iget p1, p0, Lu/aly/ai;->d:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lu/aly/ai;->a(I)Lu/aly/ax;

    return-void
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

    .line 34
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_6

    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    new-instance v3, Lu/aly/bj;

    invoke-direct {v3}, Lu/aly/bj;-><init>()V

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 46
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 47
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lu/aly/bj;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 48
    :cond_0
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 49
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bj;->b(J)V

    goto :goto_1

    .line 50
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 51
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bj;->b(J)V

    goto :goto_1

    .line 52
    :cond_2
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 53
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bj;->b(J)V

    goto :goto_1

    .line 54
    :cond_3
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_4

    .line 55
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bj;->b(J)V

    .line 58
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lu/aly/bj;->k()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 61
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

    .line 72
    invoke-virtual {p1}, Lu/aly/bp;->s()I

    move-result v0

    if-lez v0, :cond_1

    .line 73
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

    .line 74
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

    .line 82
    new-instance v1, Lu/aly/be;

    invoke-direct {v1}, Lu/aly/be;-><init>()V

    .line 83
    invoke-virtual {v1, p2}, Lu/aly/be;->a(Ljava/lang/String;)Lu/aly/be;

    .line 84
    invoke-virtual {p1, v1}, Lu/aly/bp;->a(Lu/aly/be;)V

    .line 87
    :cond_2
    invoke-virtual {v1, p0}, Lu/aly/be;->b(Lu/aly/ax;)V

    return-void
.end method
