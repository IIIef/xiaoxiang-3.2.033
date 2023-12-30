.class public Lu/aly/bh;
.super Ljava/lang/Object;
.source "MiscInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bh$c;,
        Lu/aly/bh$d;,
        Lu/aly/bh$a;,
        Lu/aly/bh$b;,
        Lu/aly/bh$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz<",
        "Lu/aly/bh;",
        "Lu/aly/bh$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:I = 0x3

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bh$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lu/aly/dd;

.field private static final m:Lu/aly/ct;

.field private static final n:Lu/aly/ct;

.field private static final o:Lu/aly/ct;

.field private static final p:Lu/aly/ct;

.field private static final q:Lu/aly/ct;

.field private static final r:Lu/aly/ct;

.field private static final s:Lu/aly/ct;

.field private static final t:Lu/aly/ct;

.field private static final u:Lu/aly/ct;

.field private static final v:Lu/aly/ct;

.field private static final w:Ljava/util/Map;
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

.field private static final x:I = 0x0

.field private static final y:I = 0x1

.field private static final z:I = 0x2


# instance fields
.field private B:B

.field private C:[Lu/aly/bh$e;

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lu/aly/ao;

.field public j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lu/aly/dd;

    const-string v1, "MiscInfo"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bh;->l:Lu/aly/dd;

    .line 27
    new-instance v0, Lu/aly/ct;

    const-string v1, "time_zone"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->m:Lu/aly/ct;

    .line 29
    new-instance v0, Lu/aly/ct;

    const-string v3, "language"

    const/16 v4, 0xb

    const/4 v5, 0x2

    invoke-direct {v0, v3, v4, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->n:Lu/aly/ct;

    .line 31
    new-instance v0, Lu/aly/ct;

    const-string v6, "country"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v4, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->o:Lu/aly/ct;

    .line 33
    new-instance v0, Lu/aly/ct;

    const-string v7, "latitude"

    const/4 v8, 0x4

    invoke-direct {v0, v7, v8, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->p:Lu/aly/ct;

    .line 35
    new-instance v0, Lu/aly/ct;

    const-string v9, "longitude"

    const/4 v10, 0x5

    invoke-direct {v0, v9, v8, v10}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->q:Lu/aly/ct;

    .line 37
    new-instance v0, Lu/aly/ct;

    const-string v10, "carrier"

    const/4 v11, 0x6

    invoke-direct {v0, v10, v4, v11}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->r:Lu/aly/ct;

    .line 39
    new-instance v0, Lu/aly/ct;

    const-string v11, "latency"

    const/4 v12, 0x7

    invoke-direct {v0, v11, v2, v12}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->s:Lu/aly/ct;

    .line 41
    new-instance v0, Lu/aly/ct;

    const-string v12, "display_name"

    invoke-direct {v0, v12, v4, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->t:Lu/aly/ct;

    .line 43
    new-instance v0, Lu/aly/ct;

    const-string v13, "access_type"

    const/16 v14, 0x9

    invoke-direct {v0, v13, v2, v14}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->u:Lu/aly/ct;

    .line 45
    new-instance v0, Lu/aly/ct;

    const-string v14, "access_subtype"

    const/16 v15, 0xa

    invoke-direct {v0, v14, v4, v15}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->v:Lu/aly/ct;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bh;->w:Ljava/util/Map;

    .line 51
    const-class v15, Lu/aly/di;

    new-instance v8, Lu/aly/bh$b;

    const/4 v4, 0x0

    invoke-direct {v8, v4}, Lu/aly/bh$b;-><init>(Lu/aly/bh$1;)V

    invoke-interface {v0, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-class v8, Lu/aly/dj;

    new-instance v15, Lu/aly/bh$d;

    invoke-direct {v15, v4}, Lu/aly/bh$d;-><init>(Lu/aly/bh$1;)V

    invoke-interface {v0, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/util/EnumMap;

    const-class v4, Lu/aly/bh$e;

    invoke-direct {v0, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 173
    sget-object v4, Lu/aly/bh$e;->a:Lu/aly/bh$e;

    new-instance v8, Lu/aly/cl;

    new-instance v15, Lu/aly/cm;

    invoke-direct {v15, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v8, v1, v5, v15}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lu/aly/bh$e;->b:Lu/aly/bh$e;

    new-instance v4, Lu/aly/cl;

    new-instance v8, Lu/aly/cm;

    const/16 v15, 0xb

    invoke-direct {v8, v15}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v4, v3, v5, v8}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lu/aly/bh$e;->c:Lu/aly/bh$e;

    new-instance v3, Lu/aly/cl;

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v15}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v3, v6, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lu/aly/bh$e;->d:Lu/aly/bh$e;

    new-instance v3, Lu/aly/cl;

    new-instance v4, Lu/aly/cm;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v3, v7, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lu/aly/bh$e;->e:Lu/aly/bh$e;

    new-instance v3, Lu/aly/cl;

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v3, v9, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Lu/aly/bh$e;->f:Lu/aly/bh$e;

    new-instance v3, Lu/aly/cl;

    new-instance v4, Lu/aly/cm;

    const/16 v6, 0xb

    invoke-direct {v4, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v3, v10, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Lu/aly/bh$e;->g:Lu/aly/bh$e;

    new-instance v3, Lu/aly/cl;

    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v3, v11, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lu/aly/bh$e;->h:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v12, v5, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lu/aly/bh$e;->i:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/ck;

    const-class v4, Lu/aly/ao;

    const/16 v6, 0x10

    invoke-direct {v3, v6, v4}, Lu/aly/ck;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v13, v5, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lu/aly/bh$e;->j:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v14, v5, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bh;->k:Ljava/util/Map;

    .line 213
    const-class v1, Lu/aly/bh;

    invoke-static {v1, v0}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 164
    iput-byte v0, p0, Lu/aly/bh;->B:B

    const/16 v1, 0xa

    new-array v1, v1, [Lu/aly/bh$e;

    .line 165
    sget-object v2, Lu/aly/bh$e;->a:Lu/aly/bh$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/bh$e;->b:Lu/aly/bh$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->c:Lu/aly/bh$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->d:Lu/aly/bh$e;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->e:Lu/aly/bh$e;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->f:Lu/aly/bh$e;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->g:Lu/aly/bh$e;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->h:Lu/aly/bh$e;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->i:Lu/aly/bh$e;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->j:Lu/aly/bh$e;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/bh;->C:[Lu/aly/bh$e;

    return-void
.end method

.method public constructor <init>(Lu/aly/bh;)V
    .locals 3

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 164
    iput-byte v0, p0, Lu/aly/bh;->B:B

    const/16 v1, 0xa

    new-array v1, v1, [Lu/aly/bh$e;

    .line 165
    sget-object v2, Lu/aly/bh$e;->a:Lu/aly/bh$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/bh$e;->b:Lu/aly/bh$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->c:Lu/aly/bh$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->d:Lu/aly/bh$e;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->e:Lu/aly/bh$e;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->f:Lu/aly/bh$e;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->g:Lu/aly/bh$e;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->h:Lu/aly/bh$e;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->i:Lu/aly/bh$e;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bh$e;->j:Lu/aly/bh$e;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/bh;->C:[Lu/aly/bh$e;

    .line 223
    iget-byte v0, p1, Lu/aly/bh;->B:B

    iput-byte v0, p0, Lu/aly/bh;->B:B

    .line 224
    iget v0, p1, Lu/aly/bh;->a:I

    iput v0, p0, Lu/aly/bh;->a:I

    .line 225
    invoke-virtual {p1}, Lu/aly/bh;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p1, Lu/aly/bh;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bh;->b:Ljava/lang/String;

    .line 228
    :cond_0
    invoke-virtual {p1}, Lu/aly/bh;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p1, Lu/aly/bh;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bh;->c:Ljava/lang/String;

    .line 231
    :cond_1
    iget-wide v0, p1, Lu/aly/bh;->d:D

    iput-wide v0, p0, Lu/aly/bh;->d:D

    .line 232
    iget-wide v0, p1, Lu/aly/bh;->e:D

    iput-wide v0, p0, Lu/aly/bh;->e:D

    .line 233
    invoke-virtual {p1}, Lu/aly/bh;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p1, Lu/aly/bh;->f:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bh;->f:Ljava/lang/String;

    .line 236
    :cond_2
    iget v0, p1, Lu/aly/bh;->g:I

    iput v0, p0, Lu/aly/bh;->g:I

    .line 237
    invoke-virtual {p1}, Lu/aly/bh;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p1, Lu/aly/bh;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bh;->h:Ljava/lang/String;

    .line 240
    :cond_3
    invoke-virtual {p1}, Lu/aly/bh;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p1, Lu/aly/bh;->i:Lu/aly/ao;

    iput-object v0, p0, Lu/aly/bh;->i:Lu/aly/ao;

    .line 243
    :cond_4
    invoke-virtual {p1}, Lu/aly/bh;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    iget-object p1, p1, Lu/aly/bh;->j:Ljava/lang/String;

    iput-object p1, p0, Lu/aly/bh;->j:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method static synthetic I()Lu/aly/dd;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/bh;->l:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic J()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/bh;->m:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic K()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/bh;->n:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic L()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/bh;->o:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic M()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/bh;->p:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic N()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/bh;->q:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic O()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/bh;->r:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic P()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/bh;->s:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic Q()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/bh;->t:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic R()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/bh;->u:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic S()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/bh;->v:Lu/aly/ct;

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

    const/4 v0, 0x0

    .line 675
    :try_start_0
    iput-byte v0, p0, Lu/aly/bh;->B:B

    .line 676
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bh;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 679
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

    .line 664
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bh;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 667
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 473
    iget-object v0, p0, Lu/aly/bh;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Lu/aly/ao;
    .locals 1

    .line 487
    iget-object v0, p0, Lu/aly/bh;->i:Lu/aly/ao;

    return-object v0
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x0

    .line 500
    iput-object v0, p0, Lu/aly/bh;->i:Lu/aly/ao;

    return-void
.end method

.method public D()Z
    .locals 1

    .line 508
    iget-object v0, p0, Lu/aly/bh;->i:Lu/aly/ao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 518
    iget-object v0, p0, Lu/aly/bh;->j:Ljava/lang/String;

    return-object v0
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lu/aly/bh;->j:Ljava/lang/String;

    return-void
.end method

.method public G()Z
    .locals 1

    .line 535
    iget-object v0, p0, Lu/aly/bh;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    return-void
.end method

.method public a()Lu/aly/bh;
    .locals 1

    .line 249
    new-instance v0, Lu/aly/bh;

    invoke-direct {v0, p0}, Lu/aly/bh;-><init>(Lu/aly/bh;)V

    return-object v0
.end method

.method public a(D)Lu/aly/bh;
    .locals 0

    .line 355
    iput-wide p1, p0, Lu/aly/bh;->d:D

    const/4 p1, 0x1

    .line 356
    invoke-virtual {p0, p1}, Lu/aly/bh;->d(Z)V

    return-object p0
.end method

.method public a(I)Lu/aly/bh;
    .locals 0

    .line 275
    iput p1, p0, Lu/aly/bh;->a:I

    const/4 p1, 0x1

    .line 276
    invoke-virtual {p0, p1}, Lu/aly/bh;->a(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bh;
    .locals 0

    .line 301
    iput-object p1, p0, Lu/aly/bh;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/ao;)Lu/aly/bh;
    .locals 0

    .line 495
    iput-object p1, p0, Lu/aly/bh;->i:Lu/aly/ao;

    return-object p0
.end method

.method public a(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 549
    sget-object v0, Lu/aly/bh;->w:Ljava/util/Map;

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
    .locals 2

    .line 293
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bh;->B:B

    return-void
.end method

.method public b(D)Lu/aly/bh;
    .locals 0

    .line 381
    iput-wide p1, p0, Lu/aly/bh;->e:D

    const/4 p1, 0x1

    .line 382
    invoke-virtual {p0, p1}, Lu/aly/bh;->e(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lu/aly/bh;
    .locals 0

    .line 328
    iput-object p1, p0, Lu/aly/bh;->c:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lu/aly/bh;->d(I)Lu/aly/bh$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, v0}, Lu/aly/bh;->a(Z)V

    .line 255
    iput v0, p0, Lu/aly/bh;->a:I

    const/4 v1, 0x0

    .line 256
    iput-object v1, p0, Lu/aly/bh;->b:Ljava/lang/String;

    .line 257
    iput-object v1, p0, Lu/aly/bh;->c:Ljava/lang/String;

    .line 258
    invoke-virtual {p0, v0}, Lu/aly/bh;->d(Z)V

    const-wide/16 v2, 0x0

    .line 259
    iput-wide v2, p0, Lu/aly/bh;->d:D

    .line 260
    invoke-virtual {p0, v0}, Lu/aly/bh;->e(Z)V

    .line 261
    iput-wide v2, p0, Lu/aly/bh;->e:D

    .line 262
    iput-object v1, p0, Lu/aly/bh;->f:Ljava/lang/String;

    .line 263
    invoke-virtual {p0, v0}, Lu/aly/bh;->g(Z)V

    .line 264
    iput v0, p0, Lu/aly/bh;->g:I

    .line 265
    iput-object v1, p0, Lu/aly/bh;->h:Ljava/lang/String;

    .line 266
    iput-object v1, p0, Lu/aly/bh;->i:Lu/aly/ao;

    .line 267
    iput-object v1, p0, Lu/aly/bh;->j:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 553
    sget-object v0, Lu/aly/bh;->w:Ljava/util/Map;

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

    .line 319
    iput-object p1, p0, Lu/aly/bh;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 271
    iget v0, p0, Lu/aly/bh;->a:I

    return v0
.end method

.method public c(I)Lu/aly/bh;
    .locals 0

    .line 434
    iput p1, p0, Lu/aly/bh;->g:I

    const/4 p1, 0x1

    .line 435
    invoke-virtual {p0, p1}, Lu/aly/bh;->g(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lu/aly/bh;
    .locals 0

    .line 407
    iput-object p1, p0, Lu/aly/bh;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 346
    iput-object p1, p0, Lu/aly/bh;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d(I)Lu/aly/bh$e;
    .locals 0

    .line 545
    invoke-static {p1}, Lu/aly/bh$e;->a(I)Lu/aly/bh$e;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lu/aly/bh;
    .locals 0

    .line 460
    iput-object p1, p0, Lu/aly/bh;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d()V
    .locals 2

    .line 281
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bh;->B:B

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 373
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bh;->B:B

    return-void
.end method

.method public e(Ljava/lang/String;)Lu/aly/bh;
    .locals 0

    .line 522
    iput-object p1, p0, Lu/aly/bh;->j:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)V
    .locals 2

    .line 399
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bh;->B:B

    return-void
.end method

.method public e()Z
    .locals 2

    .line 289
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lu/aly/bh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 425
    iput-object p1, p0, Lu/aly/bh;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lu/aly/bh;->a()Lu/aly/bh;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 2

    .line 452
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bh;->B:B

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lu/aly/bh;->b:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 478
    iput-object p1, p0, Lu/aly/bh;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 513
    iput-object p1, p0, Lu/aly/bh;->i:Lu/aly/ao;

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 314
    iget-object v0, p0, Lu/aly/bh;->b:Ljava/lang/String;

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

    .line 324
    iget-object v0, p0, Lu/aly/bh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 540
    iput-object p1, p0, Lu/aly/bh;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lu/aly/bh;->c:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lu/aly/bh;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()D
    .locals 2

    .line 351
    iget-wide v0, p0, Lu/aly/bh;->d:D

    return-wide v0
.end method

.method public n()V
    .locals 2

    .line 361
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bh;->B:B

    return-void
.end method

.method public o()Z
    .locals 2

    .line 369
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()D
    .locals 2

    .line 377
    iget-wide v0, p0, Lu/aly/bh;->e:D

    return-wide v0
.end method

.method public q()V
    .locals 2

    .line 387
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bh;->B:B

    return-void
.end method

.method public r()Z
    .locals 2

    .line 395
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lu/aly/bh;->f:Ljava/lang/String;

    return-object v0
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lu/aly/bh;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiscInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lu/aly/bh;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "time_zone:"

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget v1, p0, Lu/aly/bh;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 566
    :goto_0
    invoke-virtual {p0}, Lu/aly/bh;->i()Z

    move-result v3

    const-string v4, "null"

    const-string v5, ", "

    if-eqz v3, :cond_3

    if-nez v1, :cond_1

    .line 568
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "language:"

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v1, p0, Lu/aly/bh;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 571
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 573
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x0

    .line 577
    :cond_3
    invoke-virtual {p0}, Lu/aly/bh;->l()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_4

    .line 579
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "country:"

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v1, p0, Lu/aly/bh;->c:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 582
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 584
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v1, 0x0

    .line 588
    :cond_6
    invoke-virtual {p0}, Lu/aly/bh;->o()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v1, :cond_7

    .line 590
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "latitude:"

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-wide v6, p0, Lu/aly/bh;->d:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 595
    :cond_8
    invoke-virtual {p0}, Lu/aly/bh;->r()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v1, :cond_9

    .line 597
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "longitude:"

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget-wide v6, p0, Lu/aly/bh;->e:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 602
    :cond_a
    invoke-virtual {p0}, Lu/aly/bh;->u()Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v1, :cond_b

    .line 604
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "carrier:"

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v1, p0, Lu/aly/bh;->f:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 607
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 609
    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v1, 0x0

    .line 613
    :cond_d
    invoke-virtual {p0}, Lu/aly/bh;->x()Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez v1, :cond_e

    .line 615
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v1, "latency:"

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    iget v1, p0, Lu/aly/bh;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 620
    :cond_f
    invoke-virtual {p0}, Lu/aly/bh;->A()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v1, :cond_10

    .line 622
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, "display_name:"

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v1, p0, Lu/aly/bh;->h:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 625
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 627
    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v1, 0x0

    .line 631
    :cond_12
    invoke-virtual {p0}, Lu/aly/bh;->D()Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez v1, :cond_13

    .line 633
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, "access_type:"

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-object v1, p0, Lu/aly/bh;->i:Lu/aly/ao;

    if-nez v1, :cond_14

    .line 636
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 638
    :cond_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_15
    move v2, v1

    .line 642
    :goto_5
    invoke-virtual {p0}, Lu/aly/bh;->G()Z

    move-result v1

    if-eqz v1, :cond_18

    if-nez v2, :cond_16

    .line 644
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-string v1, "access_subtype:"

    .line 645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    iget-object v1, p0, Lu/aly/bh;->j:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 647
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 649
    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_6
    const-string v1, ")"

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lu/aly/bh;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()I
    .locals 1

    .line 430
    iget v0, p0, Lu/aly/bh;->g:I

    return v0
.end method

.method public w()V
    .locals 2

    .line 440
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bh;->B:B

    return-void
.end method

.method public x()Z
    .locals 2

    .line 448
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lu/aly/bh;->h:Ljava/lang/String;

    return-object v0
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lu/aly/bh;->h:Ljava/lang/String;

    return-void
.end method
