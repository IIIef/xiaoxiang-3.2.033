.class public Lcom/jiabaida/little_elephant/entity/LineChartBean;
.super Ljava/lang/Object;
.source "LineChartBean.java"


# instance fields
.field private xChartData:Ljava/lang/String;

.field private yChartData:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/LineChartBean;->xChartData:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/jiabaida/little_elephant/entity/LineChartBean;->yChartData:F

    return-void
.end method


# virtual methods
.method public getxChartData()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/LineChartBean;->xChartData:Ljava/lang/String;

    return-object v0
.end method

.method public getyChartData()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/LineChartBean;->yChartData:F

    return v0
.end method

.method public setxChartData(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/LineChartBean;->xChartData:Ljava/lang/String;

    return-void
.end method

.method public setyChartData(F)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/LineChartBean;->yChartData:F

    return-void
.end method
