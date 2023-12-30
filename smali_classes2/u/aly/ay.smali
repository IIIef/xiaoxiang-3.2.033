.class public final enum Lu/aly/ay;
.super Ljava/lang/Enum;
.source "Gender.java"

# interfaces
.implements Lu/aly/cd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/ay;",
        ">;",
        "Lu/aly/cd;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ay;

.field public static final enum b:Lu/aly/ay;

.field public static final enum c:Lu/aly/ay;

.field private static final synthetic e:[Lu/aly/ay;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lu/aly/ay;

    const-string v1, "MALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lu/aly/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/ay;->a:Lu/aly/ay;

    new-instance v1, Lu/aly/ay;

    const-string v3, "FEMALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lu/aly/ay;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu/aly/ay;->b:Lu/aly/ay;

    new-instance v3, Lu/aly/ay;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lu/aly/ay;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lu/aly/ay;->c:Lu/aly/ay;

    const/4 v5, 0x3

    new-array v5, v5, [Lu/aly/ay;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 9
    sput-object v5, Lu/aly/ay;->e:[Lu/aly/ay;

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
    iput p3, p0, Lu/aly/ay;->d:I

    return-void
.end method

.method public static a(I)Lu/aly/ay;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    sget-object p0, Lu/aly/ay;->c:Lu/aly/ay;

    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lu/aly/ay;->b:Lu/aly/ay;

    return-object p0

    .line 33
    :cond_2
    sget-object p0, Lu/aly/ay;->a:Lu/aly/ay;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ay;
    .locals 1

    .line 9
    const-class v0, Lu/aly/ay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/ay;

    return-object p0
.end method

.method public static values()[Lu/aly/ay;
    .locals 1

    .line 9
    sget-object v0, Lu/aly/ay;->e:[Lu/aly/ay;

    invoke-virtual {v0}, [Lu/aly/ay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ay;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 22
    iget v0, p0, Lu/aly/ay;->d:I

    return v0
.end method
