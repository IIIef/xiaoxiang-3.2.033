.class public Lu/aly/av;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/av$c;,
        Lu/aly/av$d;,
        Lu/aly/av$a;,
        Lu/aly/av$b;,
        Lu/aly/av$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz<",
        "Lu/aly/av;",
        "Lu/aly/av$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/av$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lu/aly/dd;

.field private static final f:Lu/aly/ct;

.field private static final g:Lu/aly/ct;

.field private static final h:Lu/aly/ct;

.field private static final i:Ljava/util/Map;
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

.field private static final j:I


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lu/aly/aw;

.field private k:B

.field private l:[Lu/aly/av$e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 24
    new-instance v0, Lu/aly/dd;

    const-string v1, "Error"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/av;->e:Lu/aly/dd;

    .line 27
    new-instance v0, Lu/aly/ct;

    const-string v1, "ts"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->f:Lu/aly/ct;

    .line 29
    new-instance v0, Lu/aly/ct;

    const-string v4, "context"

    const/16 v5, 0xb

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->g:Lu/aly/ct;

    .line 31
    new-instance v0, Lu/aly/ct;

    const-string v7, "source"

    const/16 v8, 0x8

    const/4 v9, 0x3

    invoke-direct {v0, v7, v8, v9}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->h:Lu/aly/ct;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/av;->i:Ljava/util/Map;

    .line 37
    const-class v8, Lu/aly/di;

    new-instance v9, Lu/aly/av$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lu/aly/av$b;-><init>(Lu/aly/av$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-class v8, Lu/aly/dj;

    new-instance v9, Lu/aly/av$d;

    invoke-direct {v9, v10}, Lu/aly/av$d;-><init>(Lu/aly/av$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/util/EnumMap;

    const-class v8, Lu/aly/av$e;

    invoke-direct {v0, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 131
    sget-object v8, Lu/aly/av$e;->a:Lu/aly/av$e;

    new-instance v9, Lu/aly/cl;

    new-instance v10, Lu/aly/cm;

    invoke-direct {v10, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v9, v1, v3, v10}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lu/aly/av$e;->b:Lu/aly/av$e;

    new-instance v2, Lu/aly/cl;

    new-instance v8, Lu/aly/cm;

    invoke-direct {v8, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v4, v3, v8}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lu/aly/av$e;->c:Lu/aly/av$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/ck;

    const-class v4, Lu/aly/aw;

    const/16 v5, 0x10

    invoke-direct {v3, v5, v4}, Lu/aly/ck;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v7, v6, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/av;->d:Ljava/util/Map;

    .line 143
    const-class v1, Lu/aly/av;

    invoke-static {v1, v0}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput-byte v0, p0, Lu/aly/av;->k:B

    const/4 v1, 0x1

    new-array v1, v1, [Lu/aly/av$e;

    .line 125
    sget-object v2, Lu/aly/av$e;->c:Lu/aly/av$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/av;->l:[Lu/aly/av$e;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lu/aly/av;-><init>()V

    .line 151
    iput-wide p1, p0, Lu/aly/av;->a:J

    const/4 p1, 0x1

    .line 152
    invoke-virtual {p0, p1}, Lu/aly/av;->b(Z)V

    .line 153
    iput-object p3, p0, Lu/aly/av;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/av;)V
    .locals 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput-byte v0, p0, Lu/aly/av;->k:B

    const/4 v1, 0x1

    new-array v1, v1, [Lu/aly/av$e;

    .line 125
    sget-object v2, Lu/aly/av$e;->c:Lu/aly/av$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/av;->l:[Lu/aly/av$e;

    .line 160
    iget-byte v0, p1, Lu/aly/av;->k:B

    iput-byte v0, p0, Lu/aly/av;->k:B

    .line 161
    iget-wide v0, p1, Lu/aly/av;->a:J

    iput-wide v0, p0, Lu/aly/av;->a:J

    .line 162
    invoke-virtual {p1}, Lu/aly/av;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p1, Lu/aly/av;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/av;->b:Ljava/lang/String;

    .line 165
    :cond_0
    invoke-virtual {p1}, Lu/aly/av;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object p1, p1, Lu/aly/av;->c:Lu/aly/aw;

    iput-object p1, p0, Lu/aly/av;->c:Lu/aly/aw;

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

    const/4 v0, 0x0

    .line 338
    :try_start_0
    iput-byte v0, p0, Lu/aly/av;->k:B

    .line 339
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/av;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 342
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

    .line 327
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/av;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 330
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic n()Lu/aly/dd;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/av;->e:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic o()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/av;->f:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic p()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/av;->g:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic q()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/av;->h:Lu/aly/ct;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/av$e;
    .locals 0

    .line 271
    invoke-static {p1}, Lu/aly/av$e;->a(I)Lu/aly/av$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/av;
    .locals 1

    .line 171
    new-instance v0, Lu/aly/av;

    invoke-direct {v0, p0}, Lu/aly/av;-><init>(Lu/aly/av;)V

    return-object v0
.end method

.method public a(J)Lu/aly/av;
    .locals 0

    .line 187
    iput-wide p1, p0, Lu/aly/av;->a:J

    const/4 p1, 0x1

    .line 188
    invoke-virtual {p0, p1}, Lu/aly/av;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/av;
    .locals 0

    .line 213
    iput-object p1, p0, Lu/aly/av;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/aw;)Lu/aly/av;
    .locals 0

    .line 248
    iput-object p1, p0, Lu/aly/av;->c:Lu/aly/aw;

    return-object p0
.end method

.method public a(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 275
    sget-object v0, Lu/aly/av;->i:Ljava/util/Map;

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

.method public synthetic b(I)Lu/aly/cg;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lu/aly/av;->a(I)Lu/aly/av$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lu/aly/av;->b(Z)V

    const-wide/16 v0, 0x0

    .line 177
    iput-wide v0, p0, Lu/aly/av;->a:J

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lu/aly/av;->b:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lu/aly/av;->c:Lu/aly/aw;

    return-void
.end method

.method public b(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 279
    sget-object v0, Lu/aly/av;->i:Ljava/util/Map;

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
    .locals 2

    .line 205
    iget-byte v0, p0, Lu/aly/av;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/av;->k:B

    return-void
.end method

.method public c()J
    .locals 2

    .line 183
    iget-wide v0, p0, Lu/aly/av;->a:J

    return-wide v0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lu/aly/av;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 193
    iget-byte v0, p0, Lu/aly/av;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/av;->k:B

    return-void
.end method

.method public d(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 266
    iput-object p1, p0, Lu/aly/av;->c:Lu/aly/aw;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    .line 201
    iget-byte v0, p0, Lu/aly/av;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lu/aly/av;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lu/aly/av;->a()Lu/aly/av;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lu/aly/av;->b:Ljava/lang/String;

    return-void
.end method

.method public i()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lu/aly/av;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Lu/aly/aw;
    .locals 1

    .line 240
    iget-object v0, p0, Lu/aly/av;->c:Lu/aly/aw;

    return-object v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lu/aly/av;->c:Lu/aly/aw;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lu/aly/av;->c:Lu/aly/aw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lu/aly/av;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'context\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0}, Lu/aly/av;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ts:"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-wide v1, p0, Lu/aly/av;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "context:"

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v2, p0, Lu/aly/av;->b:Ljava/lang/String;

    const-string v3, "null"

    if-nez v2, :cond_0

    .line 294
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :goto_0
    invoke-virtual {p0}, Lu/aly/av;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "source:"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Lu/aly/av;->c:Lu/aly/aw;

    if-nez v1, :cond_1

    .line 304
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 306
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string v1, ")"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
