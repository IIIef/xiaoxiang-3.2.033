.class public final enum Lu/aly/bj$a;
.super Ljava/lang/Enum;
.source "PropertyValue.java"

# interfaces
.implements Lu/aly/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/bj$a;",
        ">;",
        "Lu/aly/cg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/bj$a;

.field public static final enum b:Lu/aly/bj$a;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bj$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lu/aly/bj$a;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lu/aly/bj$a;

    const-string v1, "STRING_VALUE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "string_value"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/bj$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    new-instance v1, Lu/aly/bj$a;

    const-string v4, "LONG_VALUE"

    const/4 v5, 0x2

    const-string v6, "long_value"

    invoke-direct {v1, v4, v3, v5, v6}, Lu/aly/bj$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    new-array v4, v5, [Lu/aly/bj$a;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 29
    sput-object v4, Lu/aly/bj$a;->f:[Lu/aly/bj$a;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bj$a;->c:Ljava/util/Map;

    .line 35
    const-class v0, Lu/aly/bj$a;

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

    check-cast v1, Lu/aly/bj$a;

    .line 36
    sget-object v2, Lu/aly/bj$a;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lu/aly/bj$a;->b()Ljava/lang/String;

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

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-short p3, p0, Lu/aly/bj$a;->d:S

    .line 79
    iput-object p4, p0, Lu/aly/bj$a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lu/aly/bj$a;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    sget-object p0, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    return-object p0

    .line 47
    :cond_1
    sget-object p0, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lu/aly/bj$a;
    .locals 1

    .line 71
    sget-object v0, Lu/aly/bj$a;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/aly/bj$a;

    return-object p0
.end method

.method public static b(I)Lu/aly/bj$a;
    .locals 3

    .line 60
    invoke-static {p0}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 62
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

.method public static valueOf(Ljava/lang/String;)Lu/aly/bj$a;
    .locals 1

    .line 29
    const-class v0, Lu/aly/bj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/bj$a;

    return-object p0
.end method

.method public static values()[Lu/aly/bj$a;
    .locals 1

    .line 29
    sget-object v0, Lu/aly/bj$a;->f:[Lu/aly/bj$a;

    invoke-virtual {v0}, [Lu/aly/bj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bj$a;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 83
    iget-short v0, p0, Lu/aly/bj$a;->d:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lu/aly/bj$a;->e:Ljava/lang/String;

    return-object v0
.end method
