.class public Lcom/jiabaida/little_elephant/entity/BMSClearPasswdCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSClearPasswdCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSClearPasswdCMDEntity"

.field private static final cmd:C = '\t'

.field private static final content:Ljava/lang/String; = "06 4A 31 42 32 44 34"

.field private static final rwMode:I = 0x5a


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "06 4A 31 42 32 44 34"

    .line 20
    invoke-static {v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->hexStr2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x9

    const/16 v2, 0x5a

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
