.class public final enum Lu/aly/ao;
.super Ljava/lang/Enum;
.source "AccessType.java"

# interfaces
.implements Lu/aly/cd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/ao;",
        ">;",
        "Lu/aly/cd;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ao;

.field public static final enum b:Lu/aly/ao;

.field public static final enum c:Lu/aly/ao;

.field public static final enum d:Lu/aly/ao;

.field private static final synthetic f:[Lu/aly/ao;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 10
    new-instance v0, Lu/aly/ao;

    const-string v1, "ACCESS_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lu/aly/ao;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/ao;->a:Lu/aly/ao;

    new-instance v1, Lu/aly/ao;

    const-string v3, "ACCESS_TYPE_2G_3G"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lu/aly/ao;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu/aly/ao;->b:Lu/aly/ao;

    new-instance v3, Lu/aly/ao;

    const-string v5, "ACCESS_TYPE_WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lu/aly/ao;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lu/aly/ao;->c:Lu/aly/ao;

    new-instance v5, Lu/aly/ao;

    const-string v7, "ACCESS_TYPE_ETHERNET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lu/aly/ao;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lu/aly/ao;->d:Lu/aly/ao;

    const/4 v7, 0x4

    new-array v7, v7, [Lu/aly/ao;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 9
    sput-object v7, Lu/aly/ao;->f:[Lu/aly/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lu/aly/ao;->e:I

    return-void
.end method

.method public static a(I)Lu/aly/ao;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    sget-object p0, Lu/aly/ao;->d:Lu/aly/ao;

    return-object p0

    .line 37
    :cond_1
    sget-object p0, Lu/aly/ao;->c:Lu/aly/ao;

    return-object p0

    .line 35
    :cond_2
    sget-object p0, Lu/aly/ao;->b:Lu/aly/ao;

    return-object p0

    .line 33
    :cond_3
    sget-object p0, Lu/aly/ao;->a:Lu/aly/ao;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ao;
    .locals 1

    .line 9
    const-class v0, Lu/aly/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/ao;

    return-object p0
.end method

.method public static values()[Lu/aly/ao;
    .locals 1

    .line 9
    sget-object v0, Lu/aly/ao;->f:[Lu/aly/ao;

    invoke-virtual {v0}, [Lu/aly/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ao;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 22
    iget v0, p0, Lu/aly/ao;->e:I

    return v0
.end method
