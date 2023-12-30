.class public final enum Lu/aly/bn$e;
.super Ljava/lang/Enum;
.source "Session.java"

# interfaces
.implements Lu/aly/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/bn$e;",
        ">;",
        "Lu/aly/cg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/bn$e;

.field public static final enum b:Lu/aly/bn$e;

.field public static final enum c:Lu/aly/bn$e;

.field public static final enum d:Lu/aly/bn$e;

.field public static final enum e:Lu/aly/bn$e;

.field public static final enum f:Lu/aly/bn$e;

.field public static final enum g:Lu/aly/bn$e;

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bn$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic k:[Lu/aly/bn$e;


# instance fields
.field private final i:S

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 64
    new-instance v0, Lu/aly/bn$e;

    const-string v1, "ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "id"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bn$e;->a:Lu/aly/bn$e;

    new-instance v1, Lu/aly/bn$e;

    const-string v4, "START_TIME"

    const/4 v5, 0x2

    const-string v6, "start_time"

    invoke-direct {v1, v4, v3, v5, v6}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lu/aly/bn$e;->b:Lu/aly/bn$e;

    new-instance v4, Lu/aly/bn$e;

    const-string v6, "END_TIME"

    const/4 v7, 0x3

    const-string v8, "end_time"

    invoke-direct {v4, v6, v5, v7, v8}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lu/aly/bn$e;->c:Lu/aly/bn$e;

    new-instance v6, Lu/aly/bn$e;

    const-string v8, "DURATION"

    const/4 v9, 0x4

    const-string v10, "duration"

    invoke-direct {v6, v8, v7, v9, v10}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v6, Lu/aly/bn$e;->d:Lu/aly/bn$e;

    .line 65
    new-instance v8, Lu/aly/bn$e;

    const-string v10, "PAGES"

    const/4 v11, 0x5

    const-string v12, "pages"

    invoke-direct {v8, v10, v9, v11, v12}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v8, Lu/aly/bn$e;->e:Lu/aly/bn$e;

    new-instance v10, Lu/aly/bn$e;

    const-string v12, "LOCATIONS"

    const/4 v13, 0x6

    const-string v14, "locations"

    invoke-direct {v10, v12, v11, v13, v14}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v10, Lu/aly/bn$e;->f:Lu/aly/bn$e;

    new-instance v12, Lu/aly/bn$e;

    const-string v14, "TRAFFIC"

    const/4 v15, 0x7

    const-string v11, "traffic"

    invoke-direct {v12, v14, v13, v15, v11}, Lu/aly/bn$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v12, Lu/aly/bn$e;->g:Lu/aly/bn$e;

    new-array v11, v15, [Lu/aly/bn$e;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    const/4 v0, 0x5

    aput-object v10, v11, v0

    aput-object v12, v11, v13

    .line 63
    sput-object v11, Lu/aly/bn$e;->k:[Lu/aly/bn$e;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bn$e;->h:Ljava/util/Map;

    .line 71
    const-class v0, Lu/aly/bn$e;

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

    check-cast v1, Lu/aly/bn$e;

    .line 72
    sget-object v2, Lu/aly/bn$e;->h:Ljava/util/Map;

    invoke-virtual {v1}, Lu/aly/bn$e;->b()Ljava/lang/String;

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

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput-short p3, p0, Lu/aly/bn$e;->i:S

    .line 125
    iput-object p4, p0, Lu/aly/bn$e;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lu/aly/bn$e;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 95
    :pswitch_0
    sget-object p0, Lu/aly/bn$e;->g:Lu/aly/bn$e;

    return-object p0

    .line 93
    :pswitch_1
    sget-object p0, Lu/aly/bn$e;->f:Lu/aly/bn$e;

    return-object p0

    .line 91
    :pswitch_2
    sget-object p0, Lu/aly/bn$e;->e:Lu/aly/bn$e;

    return-object p0

    .line 89
    :pswitch_3
    sget-object p0, Lu/aly/bn$e;->d:Lu/aly/bn$e;

    return-object p0

    .line 87
    :pswitch_4
    sget-object p0, Lu/aly/bn$e;->c:Lu/aly/bn$e;

    return-object p0

    .line 85
    :pswitch_5
    sget-object p0, Lu/aly/bn$e;->b:Lu/aly/bn$e;

    return-object p0

    .line 83
    :pswitch_6
    sget-object p0, Lu/aly/bn$e;->a:Lu/aly/bn$e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/bn$e;
    .locals 1

    .line 117
    sget-object v0, Lu/aly/bn$e;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/aly/bn$e;

    return-object p0
.end method

.method public static b(I)Lu/aly/bn$e;
    .locals 3

    .line 106
    invoke-static {p0}, Lu/aly/bn$e;->a(I)Lu/aly/bn$e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 108
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

.method public static valueOf(Ljava/lang/String;)Lu/aly/bn$e;
    .locals 1

    .line 63
    const-class v0, Lu/aly/bn$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/bn$e;

    return-object p0
.end method

.method public static values()[Lu/aly/bn$e;
    .locals 1

    .line 63
    sget-object v0, Lu/aly/bn$e;->k:[Lu/aly/bn$e;

    invoke-virtual {v0}, [Lu/aly/bn$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bn$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 129
    iget-short v0, p0, Lu/aly/bn$e;->i:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lu/aly/bn$e;->j:Ljava/lang/String;

    return-object v0
.end method
