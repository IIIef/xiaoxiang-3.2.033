.class public Lu/aly/aq;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/aq$c;,
        Lu/aly/aq$d;,
        Lu/aly/aq$a;,
        Lu/aly/aq$b;,
        Lu/aly/aq$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz<",
        "Lu/aly/aq;",
        "Lu/aly/aq$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/aq$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/dd;

.field private static final e:Lu/aly/ct;

.field private static final f:Lu/aly/ct;

.field private static final g:Ljava/util/Map;
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

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lu/aly/dd;

    const-string v1, "ActiveUser"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/aq;->d:Lu/aly/dd;

    .line 26
    new-instance v0, Lu/aly/ct;

    const-string v1, "provider"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->e:Lu/aly/ct;

    .line 28
    new-instance v0, Lu/aly/ct;

    const-string v4, "puid"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->f:Lu/aly/ct;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/aq;->g:Ljava/util/Map;

    .line 34
    const-class v5, Lu/aly/di;

    new-instance v6, Lu/aly/aq$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/aq$b;-><init>(Lu/aly/aq$1;)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v5, Lu/aly/dj;

    new-instance v6, Lu/aly/aq$d;

    invoke-direct {v6, v7}, Lu/aly/aq$d;-><init>(Lu/aly/aq$1;)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/EnumMap;

    const-class v5, Lu/aly/aq$e;

    invoke-direct {v0, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 113
    sget-object v5, Lu/aly/aq$e;->a:Lu/aly/aq$e;

    new-instance v6, Lu/aly/cl;

    new-instance v7, Lu/aly/cm;

    invoke-direct {v7, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v6, v1, v3, v7}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lu/aly/aq$e;->b:Lu/aly/aq$e;

    new-instance v5, Lu/aly/cl;

    new-instance v6, Lu/aly/cm;

    invoke-direct {v6, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v5, v4, v3, v6}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/aq;->c:Ljava/util/Map;

    .line 121
    const-class v1, Lu/aly/aq;

    invoke-static {v1, v0}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lu/aly/aq;-><init>()V

    .line 129
    iput-object p1, p0, Lu/aly/aq;->a:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lu/aly/aq;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/aq;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Lu/aly/aq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p1, Lu/aly/aq;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    .line 140
    :cond_0
    invoke-virtual {p1}, Lu/aly/aq;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object p1, p1, Lu/aly/aq;->b:Ljava/lang/String;

    iput-object p1, p0, Lu/aly/aq;->b:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 270
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/aq;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 273
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

    .line 261
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/aq;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 264
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic k()Lu/aly/dd;
    .locals 1

    .line 21
    sget-object v0, Lu/aly/aq;->d:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic l()Lu/aly/ct;
    .locals 1

    .line 21
    sget-object v0, Lu/aly/aq;->e:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic m()Lu/aly/ct;
    .locals 1

    .line 21
    sget-object v0, Lu/aly/aq;->f:Lu/aly/ct;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/aq$e;
    .locals 0

    .line 210
    invoke-static {p1}, Lu/aly/aq$e;->a(I)Lu/aly/aq$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/aq;
    .locals 1

    .line 146
    new-instance v0, Lu/aly/aq;

    invoke-direct {v0, p0}, Lu/aly/aq;-><init>(Lu/aly/aq;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lu/aly/aq;
    .locals 0

    .line 160
    iput-object p1, p0, Lu/aly/aq;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 214
    sget-object v0, Lu/aly/aq;->g:Ljava/util/Map;

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

    .line 178
    iput-object p1, p0, Lu/aly/aq;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/aq;
    .locals 0

    .line 187
    iput-object p1, p0, Lu/aly/aq;->b:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lu/aly/aq;->a(I)Lu/aly/aq$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lu/aly/aq;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 218
    sget-object v0, Lu/aly/aq;->g:Ljava/util/Map;

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

    .line 205
    iput-object p1, p0, Lu/aly/aq;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lu/aly/aq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lu/aly/aq;->a()Lu/aly/aq;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lu/aly/aq;->b:Ljava/lang/String;

    return-void
.end method

.method public i()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lu/aly/aq;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lu/aly/aq;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 253
    :cond_0
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'puid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p0}, Lu/aly/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'provider\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0}, Lu/aly/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActiveUser("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "provider:"

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v1, p0, Lu/aly/aq;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "puid:"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v1, p0, Lu/aly/aq;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ")"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
