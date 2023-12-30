.class public Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSResistanceCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSResistanceCMDEntity"

.field private static final cmd:C = '\u00f6'

.field private static final cmdContent:[B

.field private static final rwMode:I = 0xa5


# instance fields
.field private mResistanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 18
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 23
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->cmdContent:[B

    const/16 v1, 0xf6

    const/16 v2, 0xa5

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 9

    .line 28
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_0

    return v1

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->getContent([B)[B

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->mResistanceList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->mResistanceList:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x0

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->mResistanceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .line 38
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 39
    iget-object v3, p0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->mResistanceList:Ljava/util/ArrayList;

    new-instance v4, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;

    div-int/lit8 v5, v2, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v7, v2, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-byte v7, p1, v2

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    const-string v8, "mR"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;-><init>(ILjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return v1

    :catch_0
    return v0
.end method

.method public getMResistanceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->mResistanceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setContent()V
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->mResistanceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    :goto_0
    iget-object v3, p0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->mResistanceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->mResistanceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->getParams()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Lcom/jiabaida/little_elephant/util/HexConvert;->intToBytes(I)[B

    move-result-object v3

    mul-int/lit8 v4, v2, 0x2

    .line 60
    aget-byte v5, v3, v1

    aput-byte v5, v0, v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 61
    aget-byte v3, v3, v5

    aput-byte v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->setContent([B)V

    return-void
.end method

.method public setResistance(IF)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->mResistanceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->setParams(F)V

    .line 53
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->setContent()V

    return-void
.end method
