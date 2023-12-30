.class public final enum Lu/aly/ax$e;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lu/aly/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/ax$e;",
        ">;",
        "Lu/aly/cg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ax$e;

.field public static final enum b:Lu/aly/ax$e;

.field public static final enum c:Lu/aly/ax$e;

.field public static final enum d:Lu/aly/ax$e;

.field public static final enum e:Lu/aly/ax$e;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/ax$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic i:[Lu/aly/ax$e;


# instance fields
.field private final g:S

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 56
    new-instance v0, Lu/aly/ax$e;

    const-string v1, "NAME"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "name"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ax$e;->a:Lu/aly/ax$e;

    new-instance v1, Lu/aly/ax$e;

    const-string v4, "PROPERTIES"

    const/4 v5, 0x2

    const-string v6, "properties"

    invoke-direct {v1, v4, v3, v5, v6}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lu/aly/ax$e;->b:Lu/aly/ax$e;

    new-instance v4, Lu/aly/ax$e;

    const-string v6, "DURATION"

    const/4 v7, 0x3

    const-string v8, "duration"

    invoke-direct {v4, v6, v5, v7, v8}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    new-instance v6, Lu/aly/ax$e;

    const-string v8, "ACC"

    const/4 v9, 0x4

    const-string v10, "acc"

    invoke-direct {v6, v8, v7, v9, v10}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v6, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    .line 57
    new-instance v8, Lu/aly/ax$e;

    const-string v10, "TS"

    const/4 v11, 0x5

    const-string v12, "ts"

    invoke-direct {v8, v10, v9, v11, v12}, Lu/aly/ax$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v8, Lu/aly/ax$e;->e:Lu/aly/ax$e;

    new-array v10, v11, [Lu/aly/ax$e;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 55
    sput-object v10, Lu/aly/ax$e;->i:[Lu/aly/ax$e;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ax$e;->f:Ljava/util/Map;

    .line 62
    const-class v0, Lu/aly/ax$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/ax$e;

    .line 63
    sget-object v2, Lu/aly/ax$e;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lu/aly/ax$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput-short p3, p0, Lu/aly/ax$e;->g:S

    .line 112
    iput-object p4, p0, Lu/aly/ax$e;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lu/aly/ax$e;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    sget-object p0, Lu/aly/ax$e;->e:Lu/aly/ax$e;

    return-object p0

    .line 80
    :cond_1
    sget-object p0, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    return-object p0

    .line 78
    :cond_2
    sget-object p0, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    return-object p0

    .line 76
    :cond_3
    sget-object p0, Lu/aly/ax$e;->b:Lu/aly/ax$e;

    return-object p0

    .line 74
    :cond_4
    sget-object p0, Lu/aly/ax$e;->a:Lu/aly/ax$e;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lu/aly/ax$e;
    .locals 1

    .line 104
    sget-object v0, Lu/aly/ax$e;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/aly/ax$e;

    return-object p0
.end method

.method public static b(I)Lu/aly/ax$e;
    .locals 3

    .line 93
    invoke-static {p0}, Lu/aly/ax$e;->a(I)Lu/aly/ax$e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ax$e;
    .locals 1

    .line 55
    const-class v0, Lu/aly/ax$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/ax$e;

    return-object p0
.end method

.method public static values()[Lu/aly/ax$e;
    .locals 1

    .line 55
    sget-object v0, Lu/aly/ax$e;->i:[Lu/aly/ax$e;

    invoke-virtual {v0}, [Lu/aly/ax$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ax$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 116
    iget-short v0, p0, Lu/aly/ax$e;->g:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lu/aly/ax$e;->h:Ljava/lang/String;

    return-object v0
.end method
