.class public Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;
.super Ljava/lang/Object;
.source "ResistanceItemBean.java"


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private params:F

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;FLjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->id:I

    .line 20
    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->name:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->params:F

    .line 22
    iput-object p4, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->unit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->params:F

    return v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setParams(F)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->params:F

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;->unit:Ljava/lang/String;

    return-void
.end method
