.class public Lu/aly/e;
.super Ljava/lang/Object;
.source "IdTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/e$a;
    }
.end annotation


# static fields
.field public static a:Lu/aly/e;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:Lu/aly/bb;

.field private e:J

.field private f:J

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lu/aly/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lu/aly/e$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "umeng_it.cache"

    .line 33
    iput-object v0, p0, Lu/aly/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lu/aly/e;->d:Lu/aly/bb;

    .line 39
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lu/aly/e;->g:Ljava/util/Set;

    .line 40
    iput-object v1, p0, Lu/aly/e;->h:Lu/aly/e$a;

    .line 45
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lu/aly/e;->c:Ljava/io/File;

    const-wide/32 v0, 0x5265c00

    .line 46
    iput-wide v0, p0, Lu/aly/e;->f:J

    .line 47
    new-instance v0, Lu/aly/e$a;

    invoke-direct {v0, p1}, Lu/aly/e$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/e;->h:Lu/aly/e$a;

    .line 48
    invoke-virtual {v0}, Lu/aly/e$a;->b()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/e;
    .locals 3

    const-class v0, Lu/aly/e;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lu/aly/e;->a:Lu/aly/e;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lu/aly/e;

    invoke-direct {v1, p0}, Lu/aly/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lu/aly/e;->a:Lu/aly/e;

    .line 55
    new-instance v2, Lu/aly/f;

    invoke-direct {v2, p0}, Lu/aly/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lu/aly/e;->a(Lu/aly/a;)Z

    .line 56
    sget-object v1, Lu/aly/e;->a:Lu/aly/e;

    new-instance v2, Lu/aly/h;

    invoke-direct {v2, p0}, Lu/aly/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lu/aly/e;->a(Lu/aly/a;)Z

    .line 57
    sget-object v1, Lu/aly/e;->a:Lu/aly/e;

    new-instance v2, Lu/aly/b;

    invoke-direct {v2, p0}, Lu/aly/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lu/aly/e;->a(Lu/aly/a;)Z

    .line 58
    sget-object v1, Lu/aly/e;->a:Lu/aly/e;

    new-instance v2, Lu/aly/k;

    invoke-direct {v2, p0}, Lu/aly/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lu/aly/e;->a(Lu/aly/a;)Z

    .line 59
    sget-object v1, Lu/aly/e;->a:Lu/aly/e;

    new-instance v2, Lu/aly/j;

    invoke-direct {v2, p0}, Lu/aly/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lu/aly/e;->a(Lu/aly/a;)Z

    .line 60
    sget-object v1, Lu/aly/e;->a:Lu/aly/e;

    new-instance v2, Lu/aly/d;

    invoke-direct {v2, p0}, Lu/aly/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lu/aly/e;->a(Lu/aly/a;)Z

    .line 61
    sget-object p0, Lu/aly/e;->a:Lu/aly/e;

    new-instance v1, Lu/aly/i;

    invoke-direct {v1}, Lu/aly/i;-><init>()V

    invoke-virtual {p0, v1}, Lu/aly/e;->a(Lu/aly/a;)Z

    .line 63
    sget-object p0, Lu/aly/e;->a:Lu/aly/e;

    invoke-virtual {p0}, Lu/aly/e;->e()V

    .line 66
    :cond_0
    sget-object p0, Lu/aly/e;->a:Lu/aly/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lu/aly/bb;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 222
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :try_start_1
    new-instance v0, Lu/aly/ci;

    invoke-direct {v0}, Lu/aly/ci;-><init>()V

    invoke-virtual {v0, p1}, Lu/aly/ci;->a(Lu/aly/bz;)[B

    move-result-object p1

    .line 224
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 227
    :try_start_2
    iget-object v0, p0, Lu/aly/e;->c:Ljava/io/File;

    invoke-static {v0, p1}, Lu/aly/bu;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 224
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private g()V
    .locals 7

    .line 117
    new-instance v0, Lu/aly/bb;

    invoke-direct {v0}, Lu/aly/bb;-><init>()V

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v3, p0, Lu/aly/e;->g:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu/aly/a;

    .line 122
    invoke-virtual {v4}, Lu/aly/a;->c()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v4}, Lu/aly/a;->d()Lu/aly/ba;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 126
    invoke-virtual {v4}, Lu/aly/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lu/aly/a;->d()Lu/aly/ba;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_2
    invoke-virtual {v4}, Lu/aly/a;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lu/aly/a;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    invoke-virtual {v4}, Lu/aly/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {v0, v2}, Lu/aly/bb;->a(Ljava/util/List;)Lu/aly/bb;

    .line 135
    invoke-virtual {v0, v1}, Lu/aly/bb;->a(Ljava/util/Map;)Lu/aly/bb;

    .line 137
    monitor-enter p0

    .line 139
    :try_start_0
    iput-object v0, p0, Lu/aly/e;->d:Lu/aly/bb;

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h()Lu/aly/bb;
    .locals 6

    .line 198
    iget-object v0, p0, Lu/aly/e;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 202
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lu/aly/e;->c:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :try_start_1
    invoke-static {v0}, Lu/aly/bu;->b(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 205
    new-instance v3, Lu/aly/bb;

    invoke-direct {v3}, Lu/aly/bb;-><init>()V

    .line 206
    new-instance v4, Lu/aly/cc;

    invoke-direct {v4}, Lu/aly/cc;-><init>()V

    invoke-virtual {v4, v3, v2}, Lu/aly/cc;->a(Lu/aly/bz;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    invoke-static {v0}, Lu/aly/bu;->c(Ljava/io/InputStream;)V

    return-object v3

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v0, v1

    .line 210
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 212
    invoke-static {v0}, Lu/aly/bu;->c(Ljava/io/InputStream;)V

    return-object v1

    :catchall_1
    move-exception v1

    :goto_1
    invoke-static {v0}, Lu/aly/bu;->c(Ljava/io/InputStream;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    iget-wide v2, p0, Lu/aly/e;->e:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lu/aly/e;->f:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    const/4 v2, 0x0

    .line 88
    iget-object v3, p0, Lu/aly/e;->g:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu/aly/a;

    .line 89
    invoke-virtual {v4}, Lu/aly/a;->c()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v4}, Lu/aly/a;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v4}, Lu/aly/a;->c()Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    iget-object v5, p0, Lu/aly/e;->h:Lu/aly/e$a;

    invoke-virtual {v4}, Lu/aly/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lu/aly/e$a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 103
    invoke-direct {p0}, Lu/aly/e;->g()V

    .line 104
    iget-object v2, p0, Lu/aly/e;->h:Lu/aly/e$a;

    invoke-virtual {v2}, Lu/aly/e$a;->a()V

    .line 105
    invoke-virtual {p0}, Lu/aly/e;->f()V

    .line 108
    :cond_3
    iput-wide v0, p0, Lu/aly/e;->e:J

    :cond_4
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lu/aly/e;->f:J

    return-void
.end method

.method public a(Lu/aly/a;)Z
    .locals 2

    .line 70
    iget-object v0, p0, Lu/aly/e;->h:Lu/aly/e$a;

    invoke-virtual {p1}, Lu/aly/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/e$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lu/aly/e;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lu/aly/bb;
    .locals 1

    .line 113
    iget-object v0, p0, Lu/aly/e;->d:Lu/aly/bb;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 5

    .line 149
    iget-object v0, p0, Lu/aly/e;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/aly/a;

    .line 150
    invoke-virtual {v3}, Lu/aly/a;->c()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v3}, Lu/aly/a;->e()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lu/aly/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v3, v2}, Lu/aly/a;->a(Ljava/util/List;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 160
    iget-object v0, p0, Lu/aly/e;->d:Lu/aly/bb;

    invoke-virtual {v0, v1}, Lu/aly/bb;->b(Z)V

    .line 161
    invoke-virtual {p0}, Lu/aly/e;->f()V

    :cond_3
    return-void
.end method

.method public e()V
    .locals 4

    .line 166
    invoke-direct {p0}, Lu/aly/e;->h()Lu/aly/bb;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lu/aly/e;->g:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iput-object v0, p0, Lu/aly/e;->d:Lu/aly/bb;

    .line 176
    iget-object v0, p0, Lu/aly/e;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/a;

    .line 177
    iget-object v3, p0, Lu/aly/e;->d:Lu/aly/bb;

    invoke-virtual {v2, v3}, Lu/aly/a;->a(Lu/aly/bb;)V

    .line 179
    invoke-virtual {v2}, Lu/aly/a;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 180
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/a;

    .line 185
    iget-object v2, p0, Lu/aly/e;->g:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-direct {p0}, Lu/aly/e;->g()V

    return-void

    :catchall_0
    move-exception v0

    .line 187
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 1

    .line 193
    iget-object v0, p0, Lu/aly/e;->d:Lu/aly/bb;

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0, v0}, Lu/aly/e;->a(Lu/aly/bb;)V

    :cond_0
    return-void
.end method
