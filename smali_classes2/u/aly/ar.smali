.class public Lu/aly/ar;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ar$c;,
        Lu/aly/ar$d;,
        Lu/aly/ar$a;,
        Lu/aly/ar$b;,
        Lu/aly/ar$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz<",
        "Lu/aly/ar;",
        "Lu/aly/ar$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:I = 0x1

.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/ar$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lu/aly/dd;

.field private static final n:Lu/aly/ct;

.field private static final o:Lu/aly/ct;

.field private static final p:Lu/aly/ct;

.field private static final q:Lu/aly/ct;

.field private static final r:Lu/aly/ct;

.field private static final s:Lu/aly/ct;

.field private static final t:Lu/aly/ct;

.field private static final u:Lu/aly/ct;

.field private static final v:Lu/aly/ct;

.field private static final w:Lu/aly/ct;

.field private static final x:Lu/aly/ct;

.field private static final y:Ljava/util/Map;
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

.field private static final z:I


# instance fields
.field private B:B

.field private C:[Lu/aly/ar$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lu/aly/bm;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lu/aly/dd;

    const-string v1, "AppInfo"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ar;->m:Lu/aly/dd;

    .line 27
    new-instance v0, Lu/aly/ct;

    const-string v1, "key"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->n:Lu/aly/ct;

    .line 29
    new-instance v0, Lu/aly/ct;

    const-string v4, "version"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->o:Lu/aly/ct;

    .line 31
    new-instance v0, Lu/aly/ct;

    const-string v6, "version_index"

    const/16 v7, 0x8

    const/4 v8, 0x3

    invoke-direct {v0, v6, v7, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->p:Lu/aly/ct;

    .line 33
    new-instance v0, Lu/aly/ct;

    const-string v8, "package_name"

    const/4 v9, 0x4

    invoke-direct {v0, v8, v2, v9}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->q:Lu/aly/ct;

    .line 35
    new-instance v0, Lu/aly/ct;

    const-string v9, "sdk_type"

    const/4 v10, 0x5

    invoke-direct {v0, v9, v7, v10}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->r:Lu/aly/ct;

    .line 37
    new-instance v0, Lu/aly/ct;

    const-string v10, "sdk_version"

    const/4 v11, 0x6

    invoke-direct {v0, v10, v2, v11}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->s:Lu/aly/ct;

    .line 39
    new-instance v0, Lu/aly/ct;

    const-string v11, "channel"

    const/4 v12, 0x7

    invoke-direct {v0, v11, v2, v12}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->t:Lu/aly/ct;

    .line 41
    new-instance v0, Lu/aly/ct;

    const-string v12, "wrapper_type"

    invoke-direct {v0, v12, v2, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->u:Lu/aly/ct;

    .line 43
    new-instance v0, Lu/aly/ct;

    const-string v13, "wrapper_version"

    const/16 v14, 0x9

    invoke-direct {v0, v13, v2, v14}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->v:Lu/aly/ct;

    .line 45
    new-instance v0, Lu/aly/ct;

    const-string v14, "vertical_type"

    const/16 v15, 0xa

    invoke-direct {v0, v14, v7, v15}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->w:Lu/aly/ct;

    .line 47
    new-instance v0, Lu/aly/ct;

    const-string v15, "app_signature"

    invoke-direct {v0, v15, v2, v2}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->x:Lu/aly/ct;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ar;->y:Ljava/util/Map;

    .line 53
    const-class v7, Lu/aly/di;

    new-instance v5, Lu/aly/ar$b;

    const/4 v3, 0x0

    invoke-direct {v5, v3}, Lu/aly/ar$b;-><init>(Lu/aly/ar$1;)V

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-class v5, Lu/aly/dj;

    new-instance v7, Lu/aly/ar$d;

    invoke-direct {v7, v3}, Lu/aly/ar$d;-><init>(Lu/aly/ar$1;)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Lu/aly/ar$e;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 177
    sget-object v3, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    new-instance v5, Lu/aly/cl;

    new-instance v7, Lu/aly/cm;

    invoke-direct {v7, v2}, Lu/aly/cm;-><init>(B)V

    const/4 v2, 0x1

    invoke-direct {v5, v1, v2, v7}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    const/16 v5, 0xb

    invoke-direct {v3, v5}, Lu/aly/cm;-><init>(B)V

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v6, v5, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v8, v5, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/ck;

    const-class v4, Lu/aly/bm;

    const/16 v5, 0x10

    invoke-direct {v3, v5, v4}, Lu/aly/ck;-><init>(BLjava/lang/Class;)V

    const/4 v4, 0x1

    invoke-direct {v2, v9, v4, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    const/16 v5, 0xb

    invoke-direct {v3, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v10, v4, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    invoke-direct {v3, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v11, v4, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    invoke-direct {v3, v5}, Lu/aly/cm;-><init>(B)V

    const/4 v4, 0x2

    invoke-direct {v2, v12, v4, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    invoke-direct {v3, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v13, v4, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    const/16 v5, 0x8

    invoke-direct {v3, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v14, v4, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    new-instance v3, Lu/aly/cm;

    const/16 v5, 0xb

    invoke-direct {v3, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v15, v4, v3}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ar;->l:Ljava/util/Map;

    .line 220
    const-class v1, Lu/aly/ar;

    invoke-static {v1, v0}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 169
    iput-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x7

    new-array v1, v1, [Lu/aly/ar$e;

    .line 170
    sget-object v2, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/ar;->C:[Lu/aly/ar$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lu/aly/bm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Lu/aly/ar;-><init>()V

    .line 228
    iput-object p1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lu/aly/ar;->e:Lu/aly/bm;

    .line 230
    iput-object p3, p0, Lu/aly/ar;->f:Ljava/lang/String;

    .line 231
    iput-object p4, p0, Lu/aly/ar;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/ar;)V
    .locals 3

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 169
    iput-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x7

    new-array v1, v1, [Lu/aly/ar$e;

    .line 170
    sget-object v2, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/ar;->C:[Lu/aly/ar$e;

    .line 238
    iget-byte v0, p1, Lu/aly/ar;->B:B

    iput-byte v0, p0, Lu/aly/ar;->B:B

    .line 239
    invoke-virtual {p1}, Lu/aly/ar;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p1, Lu/aly/ar;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 242
    :cond_0
    invoke-virtual {p1}, Lu/aly/ar;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p1, Lu/aly/ar;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    .line 245
    :cond_1
    iget v0, p1, Lu/aly/ar;->c:I

    iput v0, p0, Lu/aly/ar;->c:I

    .line 246
    invoke-virtual {p1}, Lu/aly/ar;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p1, Lu/aly/ar;->d:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    .line 249
    :cond_2
    invoke-virtual {p1}, Lu/aly/ar;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p1, Lu/aly/ar;->e:Lu/aly/bm;

    iput-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    .line 252
    :cond_3
    invoke-virtual {p1}, Lu/aly/ar;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p1, Lu/aly/ar;->f:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    .line 255
    :cond_4
    invoke-virtual {p1}, Lu/aly/ar;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    iget-object v0, p1, Lu/aly/ar;->g:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    .line 258
    :cond_5
    invoke-virtual {p1}, Lu/aly/ar;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    iget-object v0, p1, Lu/aly/ar;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    .line 261
    :cond_6
    invoke-virtual {p1}, Lu/aly/ar;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    iget-object v0, p1, Lu/aly/ar;->i:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->i:Ljava/lang/String;

    .line 264
    :cond_7
    iget v0, p1, Lu/aly/ar;->j:I

    iput v0, p0, Lu/aly/ar;->j:I

    .line 265
    invoke-virtual {p1}, Lu/aly/ar;->J()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 266
    iget-object p1, p1, Lu/aly/ar;->k:Ljava/lang/String;

    iput-object p1, p0, Lu/aly/ar;->k:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method static synthetic L()Lu/aly/dd;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->m:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic M()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->n:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic N()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->o:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic O()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->p:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic P()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->q:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic Q()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->r:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic R()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->s:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic S()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->t:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic T()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->u:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic U()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->v:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic V()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->w:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic W()Lu/aly/ct;
    .locals 1

    .line 23
    sget-object v0, Lu/aly/ar;->x:Lu/aly/ct;

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

    .line 752
    :try_start_0
    iput-byte v0, p0, Lu/aly/ar;->B:B

    .line 753
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/ar;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 756
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

    .line 741
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/ar;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 744
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 505
    iget-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lu/aly/ar;->i:Ljava/lang/String;

    return-object v0
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lu/aly/ar;->i:Ljava/lang/String;

    return-void
.end method

.method public D()Z
    .locals 1

    .line 532
    iget-object v0, p0, Lu/aly/ar;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()I
    .locals 1

    .line 542
    iget v0, p0, Lu/aly/ar;->j:I

    return v0
.end method

.method public F()V
    .locals 2

    .line 552
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->B:B

    return-void
.end method

.method public G()Z
    .locals 2

    .line 560
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lu/aly/ar;->k:Ljava/lang/String;

    return-object v0
.end method

.method public I()V
    .locals 1

    const/4 v0, 0x0

    .line 577
    iput-object v0, p0, Lu/aly/ar;->k:Ljava/lang/String;

    return-void
.end method

.method public J()Z
    .locals 1

    .line 585
    iget-object v0, p0, Lu/aly/ar;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 733
    :cond_0
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'channel\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {p0}, Lu/aly/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_1
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'sdk_version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {p0}, Lu/aly/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_2
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'sdk_type\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {p0}, Lu/aly/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_3
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'key\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p0}, Lu/aly/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lu/aly/ar;
    .locals 1

    .line 271
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0, p0}, Lu/aly/ar;-><init>(Lu/aly/ar;)V

    return-object v0
.end method

.method public a(I)Lu/aly/ar;
    .locals 0

    .line 350
    iput p1, p0, Lu/aly/ar;->c:I

    const/4 p1, 0x1

    .line 351
    invoke-virtual {p0, p1}, Lu/aly/ar;->c(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 296
    iput-object p1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/bm;)Lu/aly/ar;
    .locals 0

    .line 411
    iput-object p1, p0, Lu/aly/ar;->e:Lu/aly/bm;

    return-object p0
.end method

.method public a(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 599
    sget-object v0, Lu/aly/ar;->y:Ljava/util/Map;

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

    .line 314
    iput-object p1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 323
    iput-object p1, p0, Lu/aly/ar;->b:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lu/aly/ar;->d(I)Lu/aly/ar$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 277
    iput-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0, v1}, Lu/aly/ar;->c(Z)V

    .line 279
    iput v1, p0, Lu/aly/ar;->c:I

    .line 280
    iput-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    .line 282
    iput-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    .line 285
    iput-object v0, p0, Lu/aly/ar;->i:Ljava/lang/String;

    .line 286
    invoke-virtual {p0, v1}, Lu/aly/ar;->j(Z)V

    .line 287
    iput v1, p0, Lu/aly/ar;->j:I

    .line 288
    iput-object v0, p0, Lu/aly/ar;->k:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 603
    sget-object v0, Lu/aly/ar;->y:Ljava/util/Map;

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

    .line 341
    iput-object p1, p0, Lu/aly/ar;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/ar;
    .locals 0

    .line 546
    iput p1, p0, Lu/aly/ar;->j:I

    const/4 p1, 0x1

    .line 547
    invoke-virtual {p0, p1}, Lu/aly/ar;->j(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 376
    iput-object p1, p0, Lu/aly/ar;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 2

    .line 368
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ar;->B:B

    return-void
.end method

.method public d(I)Lu/aly/ar$e;
    .locals 0

    .line 595
    invoke-static {p1}, Lu/aly/ar$e;->a(I)Lu/aly/ar$e;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 438
    iput-object p1, p0, Lu/aly/ar;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 394
    iput-object p1, p0, Lu/aly/ar;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 465
    iput-object p1, p0, Lu/aly/ar;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 429
    iput-object p1, p0, Lu/aly/ar;->e:Lu/aly/bm;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 309
    iget-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

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

    .line 319
    iget-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 492
    iput-object p1, p0, Lu/aly/ar;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 456
    iput-object p1, p0, Lu/aly/ar;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 519
    iput-object p1, p0, Lu/aly/ar;->i:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lu/aly/ar;->a()Lu/aly/ar;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 483
    iput-object p1, p0, Lu/aly/ar;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .line 572
    iput-object p1, p0, Lu/aly/ar;->k:Ljava/lang/String;

    return-object p0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 510
    iput-object p1, p0, Lu/aly/ar;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 537
    iput-object p1, p0, Lu/aly/ar;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lu/aly/ar;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()I
    .locals 1

    .line 346
    iget v0, p0, Lu/aly/ar;->c:I

    return v0
.end method

.method public j(Z)V
    .locals 2

    .line 564
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ar;->B:B

    return-void
.end method

.method public k()V
    .locals 2

    .line 356
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->B:B

    return-void
.end method

.method public k(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 590
    iput-object p1, p0, Lu/aly/ar;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 2

    .line 364
    iget-byte v0, p0, Lu/aly/ar;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    return-void
.end method

.method public o()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lu/aly/ar;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Lu/aly/bm;
    .locals 1

    .line 403
    iget-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    return-object v0
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    .line 416
    iput-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    return-void
.end method

.method public r()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lu/aly/ar;->e:Lu/aly/bm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    return-object v0
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 443
    iput-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "key:"

    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    .line 613
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :goto_0
    invoke-virtual {p0}, Lu/aly/ar;->i()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_2

    .line 620
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version:"

    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v1, p0, Lu/aly/ar;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 623
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 625
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lu/aly/ar;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 631
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version_index:"

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget v1, p0, Lu/aly/ar;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    :cond_3
    invoke-virtual {p0}, Lu/aly/ar;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 638
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "package_name:"

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object v1, p0, Lu/aly/ar;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 641
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 643
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_5
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk_type:"

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-object v1, p0, Lu/aly/ar;->e:Lu/aly/bm;

    if-nez v1, :cond_6

    .line 651
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 653
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 657
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk_version:"

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    iget-object v1, p0, Lu/aly/ar;->f:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 660
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 662
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "channel:"

    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget-object v1, p0, Lu/aly/ar;->g:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 669
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 671
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :goto_5
    invoke-virtual {p0}, Lu/aly/ar;->A()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 676
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wrapper_type:"

    .line 677
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget-object v1, p0, Lu/aly/ar;->h:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 679
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 681
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_a
    :goto_6
    invoke-virtual {p0}, Lu/aly/ar;->D()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 687
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wrapper_version:"

    .line 688
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    iget-object v1, p0, Lu/aly/ar;->i:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 690
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 692
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lu/aly/ar;->G()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 698
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vertical_type:"

    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget v1, p0, Lu/aly/ar;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    :cond_d
    invoke-virtual {p0}, Lu/aly/ar;->J()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 705
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app_signature:"

    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    iget-object v1, p0, Lu/aly/ar;->k:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 708
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 710
    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_8
    const-string v1, ")"

    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 451
    iget-object v0, p0, Lu/aly/ar;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    return-object v0
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    return-void
.end method

.method public x()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lu/aly/ar;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    return-object v0
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lu/aly/ar;->h:Ljava/lang/String;

    return-void
.end method
