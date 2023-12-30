.class public Lu/aly/az;
.super Ljava/lang/Object;
.source "IdJournal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/az$c;,
        Lu/aly/az$d;,
        Lu/aly/az$a;,
        Lu/aly/az$b;,
        Lu/aly/az$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz<",
        "Lu/aly/az;",
        "Lu/aly/az$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/az$e;",
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

.field private static final l:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field private m:B

.field private n:[Lu/aly/az$e;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 25
    new-instance v0, Lu/aly/dd;

    const-string v1, "IdJournal"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/az;->f:Lu/aly/dd;

    .line 28
    new-instance v0, Lu/aly/ct;

    const-string v1, "domain"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/az;->g:Lu/aly/ct;

    .line 30
    new-instance v0, Lu/aly/ct;

    const-string v4, "old_id"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/az;->h:Lu/aly/ct;

    .line 32
    new-instance v0, Lu/aly/ct;

    const-string v6, "new_id"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v2, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/az;->i:Lu/aly/ct;

    .line 34
    new-instance v0, Lu/aly/ct;

    const-string v7, "ts"

    const/16 v8, 0xa

    const/4 v9, 0x4

    invoke-direct {v0, v7, v8, v9}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/az;->j:Lu/aly/ct;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/az;->k:Ljava/util/Map;

    .line 40
    const-class v9, Lu/aly/di;

    new-instance v10, Lu/aly/az$b;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lu/aly/az$b;-><init>(Lu/aly/az$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-class v9, Lu/aly/dj;

    new-instance v10, Lu/aly/az$d;

    invoke-direct {v10, v11}, Lu/aly/az$d;-><init>(Lu/aly/az$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/EnumMap;

    const-class v9, Lu/aly/az$e;

    invoke-direct {v0, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    sget-object v9, Lu/aly/az$e;->a:Lu/aly/az$e;

    new-instance v10, Lu/aly/cl;

    new-instance v11, Lu/aly/cm;

    invoke-direct {v11, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v10, v1, v3, v11}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lu/aly/az$e;->b:Lu/aly/az$e;

    new-instance v9, Lu/aly/cl;

    new-instance v10, Lu/aly/cm;

    invoke-direct {v10, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v9, v4, v5, v10}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lu/aly/az$e;->c:Lu/aly/az$e;

    new-instance v4, Lu/aly/cl;

    new-instance v5, Lu/aly/cm;

    invoke-direct {v5, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v4, v6, v3, v5}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lu/aly/az$e;->d:Lu/aly/az$e;

    new-instance v2, Lu/aly/cl;

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v8}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v7, v3, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/az;->e:Ljava/util/Map;

    .line 144
    const-class v1, Lu/aly/az;

    invoke-static {v1, v0}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-byte v0, p0, Lu/aly/az;->m:B

    const/4 v1, 0x1

    new-array v1, v1, [Lu/aly/az$e;

    .line 122
    sget-object v2, Lu/aly/az$e;->b:Lu/aly/az$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/az;->n:[Lu/aly/az$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lu/aly/az;-><init>()V

    .line 152
    iput-object p1, p0, Lu/aly/az;->a:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lu/aly/az;->c:Ljava/lang/String;

    .line 154
    iput-wide p3, p0, Lu/aly/az;->d:J

    const/4 p1, 0x1

    .line 155
    invoke-virtual {p0, p1}, Lu/aly/az;->d(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/az;)V
    .locals 3

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-byte v0, p0, Lu/aly/az;->m:B

    const/4 v1, 0x1

    new-array v1, v1, [Lu/aly/az$e;

    .line 122
    sget-object v2, Lu/aly/az$e;->b:Lu/aly/az$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/az;->n:[Lu/aly/az$e;

    .line 162
    iget-byte v0, p1, Lu/aly/az;->m:B

    iput-byte v0, p0, Lu/aly/az;->m:B

    .line 163
    invoke-virtual {p1}, Lu/aly/az;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p1, Lu/aly/az;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/az;->a:Ljava/lang/String;

    .line 166
    :cond_0
    invoke-virtual {p1}, Lu/aly/az;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p1, Lu/aly/az;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/az;->b:Ljava/lang/String;

    .line 169
    :cond_1
    invoke-virtual {p1}, Lu/aly/az;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p1, Lu/aly/az;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    .line 172
    :cond_2
    iget-wide v0, p1, Lu/aly/az;->d:J

    iput-wide v0, p0, Lu/aly/az;->d:J

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

    .line 376
    :try_start_0
    iput-byte v0, p0, Lu/aly/az;->m:B

    .line 377
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/az;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 380
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

    .line 365
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/az;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 368
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic q()Lu/aly/dd;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/az;->f:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic r()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/az;->g:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic s()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/az;->h:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic t()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/az;->i:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic u()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/az;->j:Lu/aly/ct;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/az$e;
    .locals 0

    .line 296
    invoke-static {p1}, Lu/aly/az$e;->a(I)Lu/aly/az$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/az;
    .locals 1

    .line 176
    new-instance v0, Lu/aly/az;

    invoke-direct {v0, p0}, Lu/aly/az;-><init>(Lu/aly/az;)V

    return-object v0
.end method

.method public a(J)Lu/aly/az;
    .locals 0

    .line 274
    iput-wide p1, p0, Lu/aly/az;->d:J

    const/4 p1, 0x1

    .line 275
    invoke-virtual {p0, p1}, Lu/aly/az;->d(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/az;
    .locals 0

    .line 193
    iput-object p1, p0, Lu/aly/az;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 300
    sget-object v0, Lu/aly/az;->k:Ljava/util/Map;

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

    .line 211
    iput-object p1, p0, Lu/aly/az;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/az;
    .locals 0

    .line 220
    iput-object p1, p0, Lu/aly/az;->b:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lu/aly/az;->a(I)Lu/aly/az$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lu/aly/az;->a:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lu/aly/az;->b:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lu/aly/az;->d(Z)V

    const-wide/16 v0, 0x0

    .line 185
    iput-wide v0, p0, Lu/aly/az;->d:J

    return-void
.end method

.method public b(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 304
    sget-object v0, Lu/aly/az;->k:Ljava/util/Map;

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

    .line 238
    iput-object p1, p0, Lu/aly/az;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lu/aly/az;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lu/aly/az;
    .locals 0

    .line 247
    iput-object p1, p0, Lu/aly/az;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lu/aly/az;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lu/aly/az;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 292
    iget-byte v0, p0, Lu/aly/az;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/az;->m:B

    return-void
.end method

.method public e()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lu/aly/az;->a:Ljava/lang/String;

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

    .line 216
    iget-object v0, p0, Lu/aly/az;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lu/aly/az;->a()Lu/aly/az;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lu/aly/az;->b:Ljava/lang/String;

    return-void
.end method

.method public i()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lu/aly/az;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()J
    .locals 2

    .line 270
    iget-wide v0, p0, Lu/aly/az;->d:J

    return-wide v0
.end method

.method public n()V
    .locals 2

    .line 280
    iget-byte v0, p0, Lu/aly/az;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/az;->m:B

    return-void
.end method

.method public o()Z
    .locals 2

    .line 288
    iget-byte v0, p0, Lu/aly/az;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lu/aly/az;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'new_id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p0}, Lu/aly/az;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'domain\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0}, Lu/aly/az;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdJournal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "domain:"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lu/aly/az;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_0
    invoke-virtual {p0}, Lu/aly/az;->i()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_2

    .line 321
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "old_id:"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v1, p0, Lu/aly/az;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 326
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "new_id:"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Lu/aly/az;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 336
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-wide v1, p0, Lu/aly/az;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
