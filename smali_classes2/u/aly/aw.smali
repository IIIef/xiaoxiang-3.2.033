.class public final enum Lu/aly/aw;
.super Ljava/lang/Enum;
.source "ErrorSource.java"

# interfaces
.implements Lu/aly/cd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/aw;",
        ">;",
        "Lu/aly/cd;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/aw;

.field public static final enum b:Lu/aly/aw;

.field private static final synthetic d:[Lu/aly/aw;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lu/aly/aw;

    const-string v1, "LEGIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/aw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/aw;->a:Lu/aly/aw;

    new-instance v1, Lu/aly/aw;

    const-string v4, "ALIEN"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lu/aly/aw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu/aly/aw;->b:Lu/aly/aw;

    new-array v4, v5, [Lu/aly/aw;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 9
    sput-object v4, Lu/aly/aw;->d:[Lu/aly/aw;

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
    iput p3, p0, Lu/aly/aw;->c:I

    return-void
.end method

.method public static a(I)Lu/aly/aw;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lu/aly/aw;->b:Lu/aly/aw;

    return-object p0

    .line 33
    :cond_1
    sget-object p0, Lu/aly/aw;->a:Lu/aly/aw;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/aw;
    .locals 1

    .line 9
    const-class v0, Lu/aly/aw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/aw;

    return-object p0
.end method

.method public static values()[Lu/aly/aw;
    .locals 1

    .line 9
    sget-object v0, Lu/aly/aw;->d:[Lu/aly/aw;

    invoke-virtual {v0}, [Lu/aly/aw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/aw;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 22
    iget v0, p0, Lu/aly/aw;->c:I

    return v0
.end method
