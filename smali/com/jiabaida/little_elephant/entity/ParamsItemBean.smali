.class public Lcom/jiabaida/little_elephant/entity/ParamsItemBean;
.super Ljava/lang/Object;
.source "ParamsItemBean.java"


# instance fields
.field private iconImg:I

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->id:I

    .line 18
    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->name:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->iconImg:I

    return-void
.end method


# virtual methods
.method public getIconImg()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->iconImg:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIconImg(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->iconImg:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/ParamsItemBean;->name:Ljava/lang/String;

    return-void
.end method
