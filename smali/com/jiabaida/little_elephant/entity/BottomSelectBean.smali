.class public Lcom/jiabaida/little_elephant/entity/BottomSelectBean;
.super Ljava/lang/Object;
.source "BottomSelectBean.java"


# instance fields
.field private itemName:Ljava/lang/String;

.field private itemSelect:Z

.field private itemid:I

.field private itemline:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemSelect:Z

    .line 22
    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemName:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemid:I

    .line 24
    iput-object p4, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemline:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemid()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemid:I

    return v0
.end method

.method public getItemline()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemline:Ljava/lang/String;

    return-object v0
.end method

.method public isItemSelect()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemSelect:Z

    return v0
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemName:Ljava/lang/String;

    return-void
.end method

.method public setItemSelect(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemSelect:Z

    return-void
.end method

.method public setItemid(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemid:I

    return-void
.end method

.method public setItemline(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BottomSelectBean;->itemline:Ljava/lang/String;

    return-void
.end method
