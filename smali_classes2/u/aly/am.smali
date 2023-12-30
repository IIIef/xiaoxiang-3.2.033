.class public Lu/aly/am;
.super Ljava/lang/Object;
.source "Defcon.java"

# interfaces
.implements Lu/aly/x;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:J = 0xdbba00L

.field private static final f:J = 0x1b77400L

.field private static final g:J = 0x5265c00L

.field private static j:Lu/aly/am;


# instance fields
.field private h:I

.field private final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lu/aly/am;->h:I

    const-wide/32 v0, 0xea60

    .line 39
    iput-wide v0, p0, Lu/aly/am;->i:J

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/am;
    .locals 2

    const-class v0, Lu/aly/am;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lu/aly/am;->j:Lu/aly/am;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lu/aly/am;

    invoke-direct {v1}, Lu/aly/am;-><init>()V

    sput-object v1, Lu/aly/am;->j:Lu/aly/am;

    .line 46
    invoke-static {p0}, Lu/aly/g;->a(Landroid/content/Context;)Lu/aly/g;

    move-result-object p0

    invoke-virtual {p0}, Lu/aly/g;->b()Lu/aly/g$a;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lu/aly/g$a;->a(I)I

    move-result p0

    .line 47
    sget-object v1, Lu/aly/am;->j:Lu/aly/am;

    invoke-virtual {v1, p0}, Lu/aly/am;->a(I)V

    .line 49
    :cond_0
    sget-object p0, Lu/aly/am;->j:Lu/aly/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 84
    iget v0, p0, Lu/aly/am;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x5265c00

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x1b77400

    return-wide v0

    :cond_2
    const-wide/32 v0, 0xdbba00

    return-wide v0
.end method

.method public a(Landroid/content/Context;Lu/aly/bp;)Lu/aly/bp;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 59
    :cond_0
    iget v1, p0, Lu/aly/am;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 60
    invoke-virtual {p2, v0}, Lu/aly/bp;->a(Ljava/util/List;)Lu/aly/bp;

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    new-array v1, v2, [Lu/aly/bn;

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lu/aly/am;->b(Landroid/content/Context;)Lu/aly/bn;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu/aly/bp;->b(Ljava/util/List;)Lu/aly/bp;

    .line 63
    invoke-virtual {p2, v0}, Lu/aly/bp;->a(Ljava/util/List;)Lu/aly/bp;

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne v1, p1, :cond_3

    .line 65
    invoke-virtual {p2, v0}, Lu/aly/bp;->b(Ljava/util/List;)Lu/aly/bp;

    .line 66
    invoke-virtual {p2, v0}, Lu/aly/bp;->a(Ljava/util/List;)Lu/aly/bp;

    :cond_3
    :goto_0
    return-object p2
.end method

.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 103
    iput p1, p0, Lu/aly/am;->h:I

    :cond_0
    return-void
.end method

.method public a(Lu/aly/g$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, v0}, Lu/aly/g$a;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lu/aly/am;->a(I)V

    return-void
.end method

.method public b()J
    .locals 2

    .line 98
    iget v0, p0, Lu/aly/am;->h:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x493e0

    :goto_0
    return-wide v0
.end method

.method public b(Landroid/content/Context;)Lu/aly/bn;
    .locals 5

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    new-instance v2, Lu/aly/bn;

    invoke-direct {v2}, Lu/aly/bn;-><init>()V

    .line 75
    invoke-static {p1}, Lu/aly/aa;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lu/aly/bn;->a(Ljava/lang/String;)Lu/aly/bn;

    .line 76
    invoke-virtual {v2, v0, v1}, Lu/aly/bn;->a(J)Lu/aly/bn;

    const-wide/32 v3, 0xea60

    add-long/2addr v0, v3

    .line 77
    invoke-virtual {v2, v0, v1}, Lu/aly/bn;->b(J)Lu/aly/bn;

    .line 78
    invoke-virtual {v2, v3, v4}, Lu/aly/bn;->c(J)Lu/aly/bn;

    return-object v2
.end method

.method public c()Z
    .locals 1

    .line 108
    iget v0, p0, Lu/aly/am;->h:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
