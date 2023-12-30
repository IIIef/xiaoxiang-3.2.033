.class public Lcom/jiabaida/little_elephant/entity/ControlBean;
.super Ljava/lang/Object;
.source "ControlBean.java"


# instance fields
.field private name:Ljava/lang/String;

.field private res:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/ControlBean;->type:I

    .line 11
    iput p2, p0, Lcom/jiabaida/little_elephant/entity/ControlBean;->res:I

    .line 12
    iput-object p3, p0, Lcom/jiabaida/little_elephant/entity/ControlBean;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ControlBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRes()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/ControlBean;->res:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/ControlBean;->type:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/ControlBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRes(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/ControlBean;->res:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/ControlBean;->type:I

    return-void
.end method
