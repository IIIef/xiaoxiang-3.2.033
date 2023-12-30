.class public Lu/aly/be;
.super Ljava/lang/Object;
.source "InstantMsg.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/be$c;,
        Lu/aly/be$d;,
        Lu/aly/be$a;,
        Lu/aly/be$b;,
        Lu/aly/be$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz<",
        "Lu/aly/be;",
        "Lu/aly/be$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/be$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lu/aly/dd;

.field private static final g:Lu/aly/ct;

.field private static final h:Lu/aly/ct;

.field private static final i:Lu/aly/ct;

.field private static final j:Lu/aly/ct;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lu/aly/dg;",
            ">;",
            "Lu/aly/dh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation
.end field

.field private l:[Lu/aly/be$e;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 26
    new-instance v0, Lu/aly/dd;

    const-string v1, "InstantMsg"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/be;->f:Lu/aly/dd;

    .line 29
    new-instance v0, Lu/aly/ct;

    const-string v1, "id"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->g:Lu/aly/ct;

    .line 31
    new-instance v0, Lu/aly/ct;

    const-string v4, "errors"

    const/16 v5, 0xf

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->h:Lu/aly/ct;

    .line 33
    new-instance v0, Lu/aly/ct;

    const-string v7, "events"

    const/4 v8, 0x3

    invoke-direct {v0, v7, v5, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->i:Lu/aly/ct;

    .line 35
    new-instance v0, Lu/aly/ct;

    const-string v8, "game_events"

    const/4 v9, 0x4

    invoke-direct {v0, v8, v5, v9}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->j:Lu/aly/ct;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/be;->k:Ljava/util/Map;

    .line 41
    const-class v9, Lu/aly/di;

    new-instance v10, Lu/aly/be$b;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lu/aly/be$b;-><init>(Lu/aly/be$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-class v9, Lu/aly/dj;

    new-instance v10, Lu/aly/be$d;

    invoke-direct {v10, v11}, Lu/aly/be$d;-><init>(Lu/aly/be$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/EnumMap;

    const-class v9, Lu/aly/be$e;

    invoke-direct {v0, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    sget-object v9, Lu/aly/be$e;->a:Lu/aly/be$e;

    new-instance v10, Lu/aly/cl;

    new-instance v11, Lu/aly/cm;

    invoke-direct {v11, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v10, v1, v3, v11}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lu/aly/be$e;->b:Lu/aly/be$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cn;

    new-instance v9, Lu/aly/cq;

    const-class v10, Lu/aly/av;

    const/16 v11, 0xc

    invoke-direct {v9, v11, v10}, Lu/aly/cq;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v5, v9}, Lu/aly/cn;-><init>(BLu/aly/cm;)V

    invoke-direct {v2, v4, v6, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lu/aly/be$e;->c:Lu/aly/be$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cn;

    new-instance v4, Lu/aly/cq;

    const-class v9, Lu/aly/ax;

    invoke-direct {v4, v11, v9}, Lu/aly/cq;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v5, v4}, Lu/aly/cn;-><init>(BLu/aly/cm;)V

    invoke-direct {v2, v7, v6, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lu/aly/be$e;->d:Lu/aly/be$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cn;

    new-instance v4, Lu/aly/cq;

    const-class v7, Lu/aly/ax;

    invoke-direct {v4, v11, v7}, Lu/aly/cq;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v5, v4}, Lu/aly/cn;-><init>(BLu/aly/cm;)V

    invoke-direct {v2, v8, v6, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/be;->e:Ljava/util/Map;

    .line 150
    const-class v1, Lu/aly/be;

    invoke-static {v1, v0}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lu/aly/be$e;

    .line 122
    sget-object v1, Lu/aly/be$e;->b:Lu/aly/be$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/be$e;->c:Lu/aly/be$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/be$e;->d:Lu/aly/be$e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/be;->l:[Lu/aly/be$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lu/aly/be;-><init>()V

    .line 158
    iput-object p1, p0, Lu/aly/be;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/be;)V
    .locals 4

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lu/aly/be$e;

    .line 122
    sget-object v1, Lu/aly/be$e;->b:Lu/aly/be$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/be$e;->c:Lu/aly/be$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/be$e;->d:Lu/aly/be$e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/be;->l:[Lu/aly/be$e;

    .line 165
    invoke-virtual {p1}, Lu/aly/be;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p1, Lu/aly/be;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 168
    :cond_0
    invoke-virtual {p1}, Lu/aly/be;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v1, p1, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/av;

    .line 171
    new-instance v3, Lu/aly/av;

    invoke-direct {v3, v2}, Lu/aly/av;-><init>(Lu/aly/av;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    iput-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    .line 175
    :cond_2
    invoke-virtual {p1}, Lu/aly/be;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v1, p1, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/ax;

    .line 178
    new-instance v3, Lu/aly/ax;

    invoke-direct {v3, v2}, Lu/aly/ax;-><init>(Lu/aly/ax;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_3
    iput-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    .line 182
    :cond_4
    invoke-virtual {p1}, Lu/aly/be;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object p1, p1, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/ax;

    .line 185
    new-instance v2, Lu/aly/ax;

    invoke-direct {v2, v1}, Lu/aly/ax;-><init>(Lu/aly/ax;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 187
    :cond_5
    iput-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    :cond_6
    return-void
.end method

.method static synthetic A()Lu/aly/ct;
    .locals 1

    .line 24
    sget-object v0, Lu/aly/be;->j:Lu/aly/ct;

    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 437
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/be;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 440
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/be;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 431
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic w()Lu/aly/dd;
    .locals 1

    .line 24
    sget-object v0, Lu/aly/be;->f:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic x()Lu/aly/ct;
    .locals 1

    .line 24
    sget-object v0, Lu/aly/be;->g:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic y()Lu/aly/ct;
    .locals 1

    .line 24
    sget-object v0, Lu/aly/be;->h:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic z()Lu/aly/ct;
    .locals 1

    .line 24
    sget-object v0, Lu/aly/be;->i:Lu/aly/ct;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/be$e;
    .locals 0

    .line 357
    invoke-static {p1}, Lu/aly/be$e;->a(I)Lu/aly/be$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/be;
    .locals 1

    .line 192
    new-instance v0, Lu/aly/be;

    invoke-direct {v0, p0}, Lu/aly/be;-><init>(Lu/aly/be;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lu/aly/be;
    .locals 0

    .line 208
    iput-object p1, p0, Lu/aly/be;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lu/aly/be;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/aly/av;",
            ">;)",
            "Lu/aly/be;"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lu/aly/be;->b:Ljava/util/List;

    return-object p0
.end method

.method public a(Lu/aly/av;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    .line 242
    :cond_0
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lu/aly/ax;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    .line 284
    :cond_0
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 361
    sget-object v0, Lu/aly/be;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->b(Lu/aly/cy;Lu/aly/bz;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lu/aly/be;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)Lu/aly/be;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;)",
            "Lu/aly/be;"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lu/aly/be;->c:Ljava/util/List;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lu/aly/be;->a(I)Lu/aly/be$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    .line 199
    iput-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    .line 200
    iput-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    return-void
.end method

.method public b(Lu/aly/ax;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    .line 326
    :cond_0
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 365
    sget-object v0, Lu/aly/be;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->a(Lu/aly/cy;Lu/aly/bz;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 268
    iput-object p1, p0, Lu/aly/be;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/util/List;)Lu/aly/be;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;)",
            "Lu/aly/be;"
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lu/aly/be;->d:Ljava/util/List;

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 310
    iput-object p1, p0, Lu/aly/be;->c:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 352
    iput-object p1, p0, Lu/aly/be;->d:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    .line 231
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lu/aly/be;->a()Lu/aly/be;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    return-void
.end method

.method public k()Z
    .locals 1

    .line 263
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()I
    .locals 1

    .line 273
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public m()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    return-object v0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    return-void
.end method

.method public p()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()I
    .locals 1

    .line 315
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public r()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    return-object v0
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstantMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id:"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v1, p0, Lu/aly/be;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :goto_0
    invoke-virtual {p0}, Lu/aly/be;->k()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_2

    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errors:"

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v1, p0, Lu/aly/be;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 387
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lu/aly/be;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "events:"

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-object v1, p0, Lu/aly/be;->c:Ljava/util/List;

    if-nez v1, :cond_3

    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 398
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lu/aly/be;->u()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 404
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "game_events:"

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget-object v1, p0, Lu/aly/be;->d:Ljava/util/List;

    if-nez v1, :cond_5

    .line 407
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 409
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    const-string v1, ")"

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 347
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 420
    :cond_0
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p0}, Lu/aly/be;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0
.end method
