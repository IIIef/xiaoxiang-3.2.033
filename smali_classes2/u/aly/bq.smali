.class public Lu/aly/bq;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bq$c;,
        Lu/aly/bq$d;,
        Lu/aly/bq$a;,
        Lu/aly/bq$b;,
        Lu/aly/bq$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz<",
        "Lu/aly/bq;",
        "Lu/aly/bq$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:I = 0x3

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bq$e;",
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

.field private C:[Lu/aly/bq$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lu/aly/dd;

    const-string v1, "UMEnvelope"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bq;->l:Lu/aly/dd;

    .line 34
    new-instance v0, Lu/aly/ct;

    const-string v1, "version"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bq;->m:Lu/aly/ct;

    .line 35
    new-instance v0, Lu/aly/ct;

    const-string v4, "address"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bq;->n:Lu/aly/ct;

    .line 36
    new-instance v0, Lu/aly/ct;

    const-string v6, "signature"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v2, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bq;->o:Lu/aly/ct;

    .line 37
    new-instance v0, Lu/aly/ct;

    const-string v7, "serial_num"

    const/16 v8, 0x8

    const/4 v9, 0x4

    invoke-direct {v0, v7, v8, v9}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bq;->p:Lu/aly/ct;

    .line 38
    new-instance v0, Lu/aly/ct;

    const-string v9, "ts_secs"

    const/4 v10, 0x5

    invoke-direct {v0, v9, v8, v10}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bq;->q:Lu/aly/ct;

    .line 39
    new-instance v0, Lu/aly/ct;

    const-string v10, "length"

    const/4 v11, 0x6

    invoke-direct {v0, v10, v8, v11}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bq;->r:Lu/aly/ct;

    .line 40
    new-instance v0, Lu/aly/ct;

    const-string v11, "entity"

    const/4 v12, 0x7

    invoke-direct {v0, v11, v2, v12}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bq;->s:Lu/aly/ct;

    .line 41
    new-instance v0, Lu/aly/ct;

    const-string v12, "guid"

    invoke-direct {v0, v12, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bq;->t:Lu/aly/ct;

    .line 42
    new-instance v0, Lu/aly/ct;

    const-string v13, "checksum"

    const/16 v14, 0x9

    invoke-direct {v0, v13, v2, v14}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bq;->u:Lu/aly/ct;

    .line 43
    new-instance v0, Lu/aly/ct;

    const-string v14, "codex"

    const/16 v15, 0xa

    invoke-direct {v0, v14, v8, v15}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bq;->v:Lu/aly/ct;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bq;->w:Ljava/util/Map;

    .line 47
    const-class v15, Lu/aly/di;

    new-instance v5, Lu/aly/bq$b;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lu/aly/bq$b;-><init>(Lu/aly/bq$1;)V

    invoke-interface {v0, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-class v5, Lu/aly/dj;

    new-instance v15, Lu/aly/bq$d;

    invoke-direct {v15, v8}, Lu/aly/bq$d;-><init>(Lu/aly/bq$1;)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/EnumMap;

    const-class v5, Lu/aly/bq$e;

    invoke-direct {v0, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 157
    sget-object v5, Lu/aly/bq$e;->a:Lu/aly/bq$e;

    new-instance v8, Lu/aly/cl;

    new-instance v15, Lu/aly/cm;

    invoke-direct {v15, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v8, v1, v3, v15}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lu/aly/bq$e;->b:Lu/aly/bq$e;

    new-instance v5, Lu/aly/cl;

    new-instance v8, Lu/aly/cm;

    invoke-direct {v8, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v5, v4, v3, v8}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lu/aly/bq$e;->c:Lu/aly/bq$e;

    new-instance v4, Lu/aly/cl;

    new-instance v5, Lu/aly/cm;

    invoke-direct {v5, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v4, v6, v3, v5}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lu/aly/bq$e;->d:Lu/aly/bq$e;

    new-instance v4, Lu/aly/cl;

    new-instance v5, Lu/aly/cm;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v4, v7, v3, v5}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lu/aly/bq$e;->e:Lu/aly/bq$e;

    new-instance v4, Lu/aly/cl;

    new-instance v5, Lu/aly/cm;

    invoke-direct {v5, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v4, v9, v3, v5}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lu/aly/bq$e;->f:Lu/aly/bq$e;

    new-instance v4, Lu/aly/cl;

    new-instance v5, Lu/aly/cm;

    invoke-direct {v5, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v4, v10, v3, v5}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lu/aly/bq$e;->g:Lu/aly/bq$e;

    new-instance v4, Lu/aly/cl;

    new-instance v5, Lu/aly/cm;

    invoke-direct {v5, v2, v3}, Lu/aly/cm;-><init>(BZ)V

    invoke-direct {v4, v11, v3, v5}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lu/aly/bq$e;->h:Lu/aly/bq$e;

    new-instance v4, Lu/aly/cl;

    new-instance v5, Lu/aly/cm;

    invoke-direct {v5, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v4, v12, v3, v5}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lu/aly/bq$e;->i:Lu/aly/bq$e;

    new-instance v4, Lu/aly/cl;

    new-instance v5, Lu/aly/cm;

    invoke-direct {v5, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v4, v13, v3, v5}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lu/aly/bq$e;->j:Lu/aly/bq$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lu/aly/cm;-><init>(B)V

    const/4 v4, 0x2

    invoke-direct {v2, v14, v4, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bq;->k:Ljava/util/Map;

    .line 178
    const-class v1, Lu/aly/bq;

    invoke-static {v1, v0}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x1

    new-array v1, v1, [Lu/aly/bq$e;

    .line 153
    sget-object v2, Lu/aly/bq$e;->j:Lu/aly/bq$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/bq;->C:[Lu/aly/bq$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lu/aly/bq;-><init>()V

    .line 196
    iput-object p1, p0, Lu/aly/bq;->a:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lu/aly/bq;->b:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lu/aly/bq;->c:Ljava/lang/String;

    .line 199
    iput p4, p0, Lu/aly/bq;->d:I

    const/4 p1, 0x1

    .line 200
    invoke-virtual {p0, p1}, Lu/aly/bq;->d(Z)V

    .line 201
    iput p5, p0, Lu/aly/bq;->e:I

    .line 202
    invoke-virtual {p0, p1}, Lu/aly/bq;->e(Z)V

    .line 203
    iput p6, p0, Lu/aly/bq;->f:I

    .line 204
    invoke-virtual {p0, p1}, Lu/aly/bq;->f(Z)V

    .line 205
    iput-object p7, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    .line 206
    iput-object p8, p0, Lu/aly/bq;->h:Ljava/lang/String;

    .line 207
    iput-object p9, p0, Lu/aly/bq;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/bq;)V
    .locals 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x1

    new-array v1, v1, [Lu/aly/bq$e;

    .line 153
    sget-object v2, Lu/aly/bq$e;->j:Lu/aly/bq$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/bq;->C:[Lu/aly/bq$e;

    .line 214
    iget-byte v0, p1, Lu/aly/bq;->B:B

    iput-byte v0, p0, Lu/aly/bq;->B:B

    .line 215
    invoke-virtual {p1}, Lu/aly/bq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p1, Lu/aly/bq;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bq;->a:Ljava/lang/String;

    .line 218
    :cond_0
    invoke-virtual {p1}, Lu/aly/bq;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p1, Lu/aly/bq;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bq;->b:Ljava/lang/String;

    .line 221
    :cond_1
    invoke-virtual {p1}, Lu/aly/bq;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p1, Lu/aly/bq;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bq;->c:Ljava/lang/String;

    .line 224
    :cond_2
    iget v0, p1, Lu/aly/bq;->d:I

    iput v0, p0, Lu/aly/bq;->d:I

    .line 225
    iget v0, p1, Lu/aly/bq;->e:I

    iput v0, p0, Lu/aly/bq;->e:I

    .line 226
    iget v0, p1, Lu/aly/bq;->f:I

    iput v0, p0, Lu/aly/bq;->f:I

    .line 227
    invoke-virtual {p1}, Lu/aly/bq;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p1, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lu/aly/ca;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    .line 231
    :cond_3
    invoke-virtual {p1}, Lu/aly/bq;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p1, Lu/aly/bq;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bq;->h:Ljava/lang/String;

    .line 234
    :cond_4
    invoke-virtual {p1}, Lu/aly/bq;->E()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p1, Lu/aly/bq;->i:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bq;->i:Ljava/lang/String;

    .line 237
    :cond_5
    iget p1, p1, Lu/aly/bq;->j:I

    iput p1, p0, Lu/aly/bq;->j:I

    return-void
.end method

.method static synthetic J()Lu/aly/dd;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bq;->l:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic K()Lu/aly/ct;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bq;->m:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic L()Lu/aly/ct;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bq;->n:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic M()Lu/aly/ct;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bq;->o:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic N()Lu/aly/ct;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bq;->p:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic O()Lu/aly/ct;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bq;->q:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic P()Lu/aly/ct;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bq;->r:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic Q()Lu/aly/ct;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bq;->s:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic R()Lu/aly/ct;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bq;->t:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic S()Lu/aly/ct;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bq;->u:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic T()Lu/aly/ct;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bq;->v:Lu/aly/ct;

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

    .line 631
    :try_start_0
    iput-byte v0, p0, Lu/aly/bq;->B:B

    .line 632
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bq;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 634
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

    .line 622
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bq;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 624
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lu/aly/bq;->h:Ljava/lang/String;

    return-void
.end method

.method public B()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lu/aly/bq;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Lu/aly/bq;->i:Ljava/lang/String;

    return-object v0
.end method

.method public D()V
    .locals 1

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lu/aly/bq;->i:Ljava/lang/String;

    return-void
.end method

.method public E()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lu/aly/bq;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()I
    .locals 1

    .line 486
    iget v0, p0, Lu/aly/bq;->j:I

    return v0
.end method

.method public G()V
    .locals 2

    .line 496
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bq;->B:B

    return-void
.end method

.method public H()Z
    .locals 2

    .line 501
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public I()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lu/aly/bq;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 599
    iget-object v0, p0, Lu/aly/bq;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 602
    iget-object v0, p0, Lu/aly/bq;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 608
    iget-object v0, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lu/aly/bq;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lu/aly/bq;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 615
    :cond_0
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_1
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_2
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_3
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_4
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_5
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lu/aly/bq;
    .locals 1

    .line 241
    new-instance v0, Lu/aly/bq;

    invoke-direct {v0, p0}, Lu/aly/bq;-><init>(Lu/aly/bq;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bq;
    .locals 0

    .line 339
    iput p1, p0, Lu/aly/bq;->d:I

    const/4 p1, 0x1

    .line 340
    invoke-virtual {p0, p1}, Lu/aly/bq;->d(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bq;
    .locals 0

    .line 267
    iput-object p1, p0, Lu/aly/bq;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lu/aly/bq;
    .locals 0

    .line 418
    iput-object p1, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a([B)Lu/aly/bq;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 413
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lu/aly/bq;->a(Ljava/nio/ByteBuffer;)Lu/aly/bq;

    return-object p0
.end method

.method public a(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 513
    sget-object v0, Lu/aly/bq;->w:Ljava/util/Map;

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

    .line 282
    iput-object p1, p0, Lu/aly/bq;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/bq;
    .locals 0

    .line 291
    iput-object p1, p0, Lu/aly/bq;->b:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lu/aly/bq;->f(I)Lu/aly/bq$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lu/aly/bq;->a:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Lu/aly/bq;->b:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lu/aly/bq;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0, v1}, Lu/aly/bq;->d(Z)V

    .line 250
    iput v1, p0, Lu/aly/bq;->d:I

    .line 251
    invoke-virtual {p0, v1}, Lu/aly/bq;->e(Z)V

    .line 252
    iput v1, p0, Lu/aly/bq;->e:I

    .line 253
    invoke-virtual {p0, v1}, Lu/aly/bq;->f(Z)V

    .line 254
    iput v1, p0, Lu/aly/bq;->f:I

    .line 255
    iput-object v0, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    .line 256
    iput-object v0, p0, Lu/aly/bq;->h:Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lu/aly/bq;->i:Ljava/lang/String;

    .line 258
    invoke-virtual {p0, v1}, Lu/aly/bq;->j(Z)V

    .line 259
    iput v1, p0, Lu/aly/bq;->j:I

    return-void
.end method

.method public b(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 517
    sget-object v0, Lu/aly/bq;->w:Ljava/util/Map;

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

    .line 306
    iput-object p1, p0, Lu/aly/bq;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lu/aly/bq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/bq;
    .locals 0

    .line 362
    iput p1, p0, Lu/aly/bq;->e:I

    const/4 p1, 0x1

    .line 363
    invoke-virtual {p0, p1}, Lu/aly/bq;->e(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lu/aly/bq;
    .locals 0

    .line 315
    iput-object p1, p0, Lu/aly/bq;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 330
    iput-object p1, p0, Lu/aly/bq;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d(I)Lu/aly/bq;
    .locals 0

    .line 385
    iput p1, p0, Lu/aly/bq;->f:I

    const/4 p1, 0x1

    .line 386
    invoke-virtual {p0, p1}, Lu/aly/bq;->f(Z)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lu/aly/bq;
    .locals 0

    .line 442
    iput-object p1, p0, Lu/aly/bq;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lu/aly/bq;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 354
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bq;->B:B

    return-void
.end method

.method public e(I)Lu/aly/bq;
    .locals 0

    .line 490
    iput p1, p0, Lu/aly/bq;->j:I

    const/4 p1, 0x1

    .line 491
    invoke-virtual {p0, p1}, Lu/aly/bq;->j(Z)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lu/aly/bq;
    .locals 0

    .line 466
    iput-object p1, p0, Lu/aly/bq;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)V
    .locals 2

    .line 377
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bq;->B:B

    return-void
.end method

.method public e()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lu/aly/bq;->a:Ljava/lang/String;

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

    .line 287
    iget-object v0, p0, Lu/aly/bq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)Lu/aly/bq$e;
    .locals 0

    .line 509
    invoke-static {p1}, Lu/aly/bq$e;->a(I)Lu/aly/bq$e;

    move-result-object p1

    return-object p1
.end method

.method public f(Z)V
    .locals 2

    .line 400
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bq;->B:B

    return-void
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lu/aly/bq;->a()Lu/aly/bq;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 433
    iput-object p1, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lu/aly/bq;->b:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 457
    iput-object p1, p0, Lu/aly/bq;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 481
    iput-object p1, p0, Lu/aly/bq;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lu/aly/bq;->b:Ljava/lang/String;

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

    .line 311
    iget-object v0, p0, Lu/aly/bq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j(Z)V
    .locals 2

    .line 505
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bq;->B:B

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lu/aly/bq;->c:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 325
    iget-object v0, p0, Lu/aly/bq;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()I
    .locals 1

    .line 335
    iget v0, p0, Lu/aly/bq;->d:I

    return v0
.end method

.method public n()V
    .locals 2

    .line 345
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bq;->B:B

    return-void
.end method

.method public o()Z
    .locals 2

    .line 350
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    .line 358
    iget v0, p0, Lu/aly/bq;->e:I

    return v0
.end method

.method public q()V
    .locals 2

    .line 368
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bq;->B:B

    return-void
.end method

.method public r()Z
    .locals 2

    .line 373
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .line 381
    iget v0, p0, Lu/aly/bq;->f:I

    return v0
.end method

.method public t()V
    .locals 2

    .line 391
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bq;->B:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "version:"

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v1, p0, Lu/aly/bq;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "address:"

    .line 533
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-object v3, p0, Lu/aly/bq;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 535
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 537
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "signature:"

    .line 541
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-object v3, p0, Lu/aly/bq;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 545
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "serial_num:"

    .line 549
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget v3, p0, Lu/aly/bq;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ts_secs:"

    .line 553
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget v3, p0, Lu/aly/bq;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "length:"

    .line 557
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget v3, p0, Lu/aly/bq;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "entity:"

    .line 561
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v3, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_3

    .line 563
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 565
    :cond_3
    invoke-static {v3, v0}, Lu/aly/ca;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    .line 568
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "guid:"

    .line 569
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v3, p0, Lu/aly/bq;->h:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 571
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 573
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "checksum:"

    .line 577
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget-object v3, p0, Lu/aly/bq;->i:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 579
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 581
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :goto_5
    invoke-virtual {p0}, Lu/aly/bq;->H()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "codex:"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Lu/aly/bq;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, ")"

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    .line 396
    iget-byte v0, p0, Lu/aly/bq;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public v()[B
    .locals 1

    .line 404
    iget-object v0, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lu/aly/ca;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/bq;->a(Ljava/nio/ByteBuffer;)Lu/aly/bq;

    .line 405
    iget-object v0, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public w()Ljava/nio/ByteBuffer;
    .locals 1

    .line 409
    iget-object v0, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public y()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lu/aly/bq;->h:Ljava/lang/String;

    return-object v0
.end method
