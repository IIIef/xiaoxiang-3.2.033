.class public final enum Lu/aly/az$e;
.super Ljava/lang/Enum;
.source "IdJournal.java"

# interfaces
.implements Lu/aly/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/az$e;",
        ">;",
        "Lu/aly/cg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/az$e;

.field public static final enum b:Lu/aly/az$e;

.field public static final enum c:Lu/aly/az$e;

.field public static final enum d:Lu/aly/az$e;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/az$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lu/aly/az$e;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 54
    new-instance v0, Lu/aly/az$e;

    const-string v1, "DOMAIN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "domain"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/az$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/az$e;->a:Lu/aly/az$e;

    new-instance v1, Lu/aly/az$e;

    const-string v4, "OLD_ID"

    const/4 v5, 0x2

    const-string v6, "old_id"

    invoke-direct {v1, v4, v3, v5, v6}, Lu/aly/az$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lu/aly/az$e;->b:Lu/aly/az$e;

    new-instance v4, Lu/aly/az$e;

    const-string v6, "NEW_ID"

    const/4 v7, 0x3

    const-string v8, "new_id"

    invoke-direct {v4, v6, v5, v7, v8}, Lu/aly/az$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lu/aly/az$e;->c:Lu/aly/az$e;

    new-instance v6, Lu/aly/az$e;

    const-string v8, "TS"

    const/4 v9, 0x4

    const-string v10, "ts"

    invoke-direct {v6, v8, v7, v9, v10}, Lu/aly/az$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v6, Lu/aly/az$e;->d:Lu/aly/az$e;

    new-array v8, v9, [Lu/aly/az$e;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 53
    sput-object v8, Lu/aly/az$e;->h:[Lu/aly/az$e;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/az$e;->e:Ljava/util/Map;

    .line 59
    const-class v0, Lu/aly/az$e;

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

    check-cast v1, Lu/aly/az$e;

    .line 60
    sget-object v2, Lu/aly/az$e;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lu/aly/az$e;->b()Ljava/lang/String;

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

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-short p3, p0, Lu/aly/az$e;->f:S

    .line 107
    iput-object p4, p0, Lu/aly/az$e;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lu/aly/az$e;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    sget-object p0, Lu/aly/az$e;->d:Lu/aly/az$e;

    return-object p0

    .line 75
    :cond_1
    sget-object p0, Lu/aly/az$e;->c:Lu/aly/az$e;

    return-object p0

    .line 73
    :cond_2
    sget-object p0, Lu/aly/az$e;->b:Lu/aly/az$e;

    return-object p0

    .line 71
    :cond_3
    sget-object p0, Lu/aly/az$e;->a:Lu/aly/az$e;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lu/aly/az$e;
    .locals 1

    .line 99
    sget-object v0, Lu/aly/az$e;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/aly/az$e;

    return-object p0
.end method

.method public static b(I)Lu/aly/az$e;
    .locals 3

    .line 88
    invoke-static {p0}, Lu/aly/az$e;->a(I)Lu/aly/az$e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 90
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

.method public static valueOf(Ljava/lang/String;)Lu/aly/az$e;
    .locals 1

    .line 53
    const-class v0, Lu/aly/az$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/az$e;

    return-object p0
.end method

.method public static values()[Lu/aly/az$e;
    .locals 1

    .line 53
    sget-object v0, Lu/aly/az$e;->h:[Lu/aly/az$e;

    invoke-virtual {v0}, [Lu/aly/az$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/az$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 111
    iget-short v0, p0, Lu/aly/az$e;->f:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lu/aly/az$e;->g:Ljava/lang/String;

    return-object v0
.end method
